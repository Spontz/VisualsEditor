#tag Class
Protected Class classLbxResourcesManager
Inherits listbox
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  dim parent as string
		  dim theFolderitem as folderitem
		  dim tags as dictionary = me.rowtag(row)
		  
		  if column = cstColumnName then
		    if renaming then
		      dim f as FolderItem
		      
		      // Change of name
		      if tags.value("type") = "Folder" then
		        // If the folder is in the disk, rename it in the filesystem
		        f = demo.getFolderPath(tags.value("id"))
		        if f <> nil then
		          f = f.Child(demo.getFolderName(tags.value("id")))
		          if f.exists then f.Name = me.cell(row, me.cstColumnName)
		        end if
		        
		        // Rename the folder in the DB
		        demo.renameResourceFolder (me.cell(row, me.cstColumnName), tags.value("id"))
		        
		      elseif tags.value("type") = "File" then
		        // If the file is in the disk, rename it in the filesystem
		        f = demo.getFilePath(tags.value("id"))
		        
		        if f <> nil then
		          f = f.Child(demo.getFile(tags.value("id")).Value("name"))
		          if f.exists then f.Name = me.cell(row, me.cstColumnName)
		        end if
		        
		        // Rename the item in the DB
		        demo.renameResourceItem (me.cell(row, me.cstColumnName), tags.value("id"))
		      end if
		      
		      // The renaming has been completed
		      renaming = false
		      
		    else
		      ToggleRow(row)
		      
		    end if
		    
		    me.CellType(row, me.cstColumnName) = 2
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    g.foreColor=RGB(255,255,255)
		  else
		    g.foreColor=RGB(240,240,240)
		  end if
		  
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent

	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base.Append (New MenuItem("Open Data Folder"))
		  
		  if me.ListIndex < 0 then return true
		  
		  base.Append (New MenuItem("New Root Folder"))
		  base.Append (New MenuItem("New Folder Inside"))
		  base.Append (New MenuItem("-"))
		  base.Append (New MenuItem("Open Resource"))
		  base.Append (New MenuItem("Copy Path"))
		  base.Append (New MenuItem("Toggle selected"))
		  base.Append (New MenuItem("-"))
		  base.Append (New MenuItem("Delete"))
		  base.Append (New MenuItem("Duplicate"))
		  base.Append (New MenuItem("Rename"))
		  base.Append (New MenuItem("-"))
		  
		  dim tags as dictionary = me.RowTag(me.listindex)
		  
		  if me.SelCount > 1 or tags.value("type") <> "Folder" then
		    base.Child("New folder inside").Enabled = false
		  end if
		  
		  if me.SelCount > 1 then
		    base.Child("Rename"   ).Enabled = false
		    base.Child("Duplicate").Enabled = false
		    base.Child("Copy Path").Enabled = false
		  end if
		  
		  if not me.CellCheck(me.ListIndex, me.cstColumnName) then
		    base.Child("Copy Path").Enabled = false
		  end if
		  
		  if tags.value("type") <> "File" then
		    base.Child("Open Resource").Enabled = false
		    base.Child("Copy Path").Enabled = false
		  end if
		  
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim f as folderitem
		  dim confirmed as boolean
		  dim finalName as string
		  
		  select case hitItem.Text
		    
		  case "Copy Path"
		    if me.ListIndex < -1 then return true
		    
		    dim tags as dictionary = me.RowTag(me.ListIndex)
		    if tags.value("type") = "Folder" then return true
		    
		    dim filePath as string = demo.getFilePath(tags.Value("id")).Child(me.cell(me.ListIndex, me.cstColumnName)).NativePath
		    dim poolPath as string = demo.GetDataFolder.NativePath
		    
		    dim c As New Clipboard
		    c.Text = Replace(Replace(filePath, poolPath, ""), "\", "/")
		    c.Close
		    
		  case "New Root Folder"
		    dim id as string = demo.createResourceFolder(demo.getUniqueName("New Folder", "0"), "0")
		    dim row as integer
		    
		    // Locate the end of the folders list
		    for i as integer = 0 to me.ListCount - 1
		      dim tags as dictionary = me.RowTag(i)
		      if tags.value("parentID") = 0 and tags.value("type") = "File" then
		        row = i
		        exit
		      end if
		    next
		    
		    // Get the final name of the created folder
		    finalName = demo.getFolderName(id)
		    
		    // Insert the folder
		    me.InsertFolder(row, finalName, 0)
		    
		    dim tags as new dictionary
		    
		    tags.value("id"      ) = id
		    tags.value("type"    ) = "Folder"
		    tags.value("parentID") = 0
		    tags.value("depth"   ) = 0
		    tags.value("size"    ) = ""
		    
		    me.RowTag(me.lastindex) = tags
		    
		    me.CellType  (me.LastIndex, me.cstColumnName) = 2
		    me.CellCheck (me.LastIndex, me.cstColumnName) = false
		    me.RowPicture(me.LastIndex) = folderblue
		    
		    // Select the recently created folder
		    me.ListIndex = row
		    
		  case "New Folder Inside"
		    dim tags as dictionary = me.RowTag(me.ListIndex)
		    dim id as string = demo.createResourceFolder(demo.getUniqueName("New Folder", tags.value("id")), tags.value("id"))
		    
		    // If the parent folder is collapsed, then expand it
		    if not me.expanded(me.listindex) then
		      me.Expanded(me.ListIndex) = true
		      me.selectRow(id, "Folder")
		      
		    else
		      dim row as integer
		      
		      // Locate the end of the folders list inside the expanded folder
		      for i as integer = me.ListIndex to me.ListCount - 1
		        dim examinedTags as dictionary = me.RowTag(i)
		        
		        if examinedTags.value("parentID") = tags.value("id") and tags.value("type") = "File" then
		          row = i
		          exit
		        elseif examinedTags.value("depth") = tags.value("depth") then
		          row = i
		          exit
		        end if
		      next
		      
		      // Locate the end of the folders list inside the expanded folder
		      for i as integer = me.ListIndex to me.ListCount - 1
		        dim theRowTag as dictionary = me.rowTag(i)
		        
		        if theRowTag.value("parentID") = tags.value("id") and theRowTag.value("type") = "File" then
		          row = i
		          exit
		        elseif theRowTag.value("depth") = tags.value("depth") then
		          row = i
		          exit
		        end if
		      next
		      
		      // Get the final name of the created folder
		      finalName = demo.getFolderName(id)
		      
		      // Insert the folder
		      me.InsertFolder(row+1, finalName, tags.value("depth") + 1)
		      
		      dim newTags as new dictionary
		      
		      newTags.value("id") = id
		      newTags.value("type") = "Folder"
		      newTags.value("size") = ""
		      newTags.value("parentID") = tags.value("id")
		      newTags.value("depth") = tags.value("depth") + 1
		      
		      me.RowTag(me.lastindex) = newTags
		      
		      me.CellType(me.LastIndex, me.cstColumnName) = 2
		      me.CellCheck(me.LastIndex, me.cstColumnName) = false
		      me.RowPicture(me.LastIndex) = folderblue
		      
		      // Select the recently created folder
		      me.ListIndex = me.LastIndex
		    end if
		    
		  case "Delete"
		    // Delete the selected item
		    if me.SelCount = 1 then
		      confirmed = GetConfirmation("Are you sure to delete the item?")
		    else
		      confirmed = GetConfirmation("Are you sure to delete " + str(me.SelCount) + " items?")
		    end if
		    
		    if not confirmed then return true
		    
		    for row as integer = me.ListCount downto 0
		      if not me.Selected(row) then continue
		      
		      dim theRowTags as Dictionary = me.RowTag(row)
		      
		      if therowtags.value("type") = "Folder" then
		        // If the folder is published on disk, remove it
		        deleteFolder(demo.getFolderPath(theRowTags.value("id")).Child(me.cell(row, me.cstColumnName)))
		        
		        // Collapse the folder in the listbox and remove it from the database
		        me.Expanded(row) = false
		        demo.deleteFolder(theRowTags.value("id"))
		        
		      else
		        // If the file is published on disk, remove it
		        f = demo.getFilePath(theRowTags.value("id"))
		        
		        if f <> nil then
		          f = f.Child(me.cell(row, me.cstColumnName))
		          
		          if f.Exists then f.Delete
		        end if
		        
		        // Remove the resource from the database
		        demo.deleteResource(theRowTags.value("id"))
		        
		      end if
		      
		      // Finally, remove the row from the listbox
		      me.RemoveRow(row)
		    next
		    
		  case "Open Resource"
		    // TODO: Open the file with the default editor
		    
		  case "Open Data Folder"
		    // Open the Pool folder in the Finder
		    demo.GetDataFolder.Launch
		    
		  case "Duplicate"
		    dim tags as dictionary = me.RowTag(me.ListIndex)
		    
		    // Duplicates the selected item
		    if tags.value("type") = "Folder" then
		      ' Item is a folder
		      dim newFileID as string = demo.duplicateFolder(tags.value("id"))
		      me.RefreshFolder(tags.value("parentID"))
		      
		    else
		      ' Item is a file
		      dim newFileID as string = demo.duplicateFile(tags.value("id"))
		      me.RefreshFolder(tags.value("parentID"))
		      
		    end if
		    
		  case "Rename"
		    renaming = true
		    me.CellType(me.listindex, cstColumnName) = 3
		    me.EditCell(me.ListIndex, cstColumnName)
		    
		  case "Toggle selected"
		    // Invert the cell selected state
		    for row as integer = 0 to me.ListCount
		      if me.Selected(row) then
		        me.CellCheck(row, cstColumnName) = not me.CellCheck(row, cstColumnName)
		        ToggleRow(row)
		      end if
		    next
		    
		  end
		End Function
	#tag EndEvent

	#tag Event
		Sub DoubleClick()
		  if me.ListIndex > -1 then
		    if me.RowIsFolder(me.ListIndex) then
		      // Row is a folder
		      // Toggle the expanded / collapsed status of the row
		      me.Expanded(me.ListIndex) = not me.Expanded(me.ListIndex)
		      
		    elseif me.CellCheck(me.ListIndex, me.cstColumnName) then
		      // Raise an event indicating than an icon has been double clicked
		      dim tags as dictionary = me.RowTag(me.ListIndex)
		      DoubleClickedItem(tags.value("id"))
		      
		    else
		      // The file must be checked in order to edit it
		      Notify("File can't be edited", "Please mark the file as checked in order to edit it")
		      
		    end if
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  dim theRow as integer
		  
		  theRow = me.RowFromXY(x,y)
		  
		  if theRow = -1 then
		    // The user is dragging over an empty area
		    me.ListIndex = -1
		    
		  elseif dictionary(me.RowTag(theRow)).value("type") = "Folder" then
		    // The user is dragging over a folder so select the row
		    me.ListIndex = theRow
		    
		  else
		    // The user is dragging over an item so select the parent folder
		    dim tags as dictionary = me.RowTag(theRow)
		    selectRow(tags.value("id"), "Folder")
		    
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  // Create a draggable item that could be dropped
		  // in the desktop or in orther place of the listbox
		  dim tags as dictionary = me.RowTag(row)
		  
		  select case tags.value("type")
		  case "File"
		    // it's a file!
		    drag.FolderItem = demo.saveResource(tags.value("id"), SpecialFolder.Temporary)
		    drag.PrivateRawData("????") = "File " + tags.value("id")
		    
		    dim dragItem as new Dictionary
		    
		    dragItem.value("parentFolderID") = tags.value("parentID")
		    dragItem.value("type") = "File"
		    dragItem.value("id") = tags.value("id")
		    
		    draggedItems.Append(dragItem)
		    
		  case "Folder"
		    // it's a folder!
		    drag.FolderItem = demo.saveFolder(tags.value("id"), SpecialFolder.Temporary)
		    drag.PrivateRawData("????") = "Folder " + tags.value("id")
		    
		    dim dragItem as new Dictionary
		    
		    dragItem.value("parentFolderID") = tags.value("parentID")
		    dragItem.value("type") = "Folder"
		    dragItem.value("id") = tags.value("id")
		    
		    draggedItems.Append(dragItem)
		    
		  end select
		  
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  dim id as string
		  dim depth as integer
		  dim type as string
		  dim icon as picture
		  dim parentFolderID as string
		  dim tags as dictionary
		  
		  do
		    if me.ListIndex > -1 then
		      tags = me.RowTag(me.ListIndex)
		      
		      depth = tags.value("depth") + 1
		      parentFolderID = tags.value("id")
		      
		      if not me.Expanded(me.ListIndex) then me.Expanded(me.ListIndex) = true
		      
		      if draggedItems.Ubound > -1 then
		        // We are dragging from inside the database
		        // The user is moving an element to a new position
		        // If we are moving to the same position, we will ignore the move
		        if draggedItems(0).value("parentFolderID") <> parentFolderID then
		          
		          if me.draggedItems(0).value("type") = "File" then
		            // We are dragging a file
		            demo.moveFile(draggedItems(0).value("id"), parentFolderID)
		            
		          else
		            // We are dragging a folder
		            demo.moveFolder(draggedItems(0).value("id"), parentFolderID)
		            
		          end if
		          
		          RefreshFolder(draggedItems(0).value("parentFolderID"))
		          RefreshFolder(parentFolderID)
		          
		        end if
		        
		        draggedItems.Remove(0)
		        return
		        
		      else
		        if not obj.FolderItemAvailable then
		          return
		        end if
		        
		        // We are dragging from the filesystem
		        if obj.FolderItem.Directory then
		          // The user dragged a folder from the filesystem
		          id = demo.createResourceFolderFromFolderItem(obj.FolderItem, parentFolderID)
		          type = "Folder"
		          icon = folderblue
		          
		        else
		          // The user dragged a file from the filesystem
		          id = demo.createResourceFromFolderItem(obj.FolderItem, parentFolderID)
		          type = "File"
		          icon = icoDocument
		          
		        end if
		        
		      end if
		      
		    else
		      parentFolderID = "0"
		      depth = 0
		      
		      if draggedItems.Ubound > -1 then
		        // We are dragging from inside the database
		        // The user is moving an element to a new position
		        if me.draggedItems(0).value("type") = "File" then
		          demo.moveFile(draggedItems(0).value("id"), parentFolderID)
		          
		        else
		          demo.moveFolder(draggedItems(0).value("id"), parentFolderID)
		          
		        end if
		        
		        RefreshFolder(draggedItems(0).value("parentFolderID"))
		        RefreshFolder(parentFolderID)
		        
		        draggedItems.remove(0)
		        
		        return
		        
		      else
		        // The user dragged a folderitem from the filesystem to the root
		        if obj.FolderItem.Directory then
		          id = demo.createResourceFolderFromFolderItem(obj.FolderItem, parentFolderID)
		          type = "Folder"
		          icon = folderblue
		          
		        else
		          id = demo.createResourceFromFolderItem(obj.FolderItem, parentFolderID)
		          type = "File"
		          icon = icoDocument
		          
		        end if
		        
		      end if
		    end if
		    
		    // Insert the item
		    dim itemName as string
		    dim size as UInt64 = obj.FolderItem.Length
		    
		    if id <> "" then
		      if type = "Folder" then
		        me.InsertFolder(me.ListIndex+1, obj.FolderItem.Name, depth)
		        itemName = demo.getFolderName(id)
		        
		      else
		        dim item as dictionary = demo.getFile(id)
		        itemName = item.value("name")
		        me.InsertRow(me.ListIndex + 1, itemName, depth)
		        me.cell(me.LastIndex, me.cstColumnSize) = Strings.getHRsize(size)
		        
		      end if
		      
		      me.cell(me.LastIndex, me.cstColumnName  ) = itemName
		      
		      dim newTags as new dictionary
		      
		      newTags.value("id"      ) = id
		      newTags.value("type"    ) = type
		      newTags.value("depth"   ) = depth
		      newTags.value("size"    ) = size
		      newTags.value("parentID") = parentFolderID
		      
		      me.RowTag(me.lastindex) = tags
		      
		      me.CellType (me.LastIndex, me.cstColumnName) = 2
		      me.CellCheck(me.LastIndex, me.cstColumnName) = false
		      
		      me.RowPicture(me.LastIndex) = icon
		      
		    else
		      // The item could not be inserted because of the name
		      Notify("An item with the same name already exists in this location", "Either rename the new item before adding it to this location or remove the item that already uses the name in conflict from the pool.")
		      
		    end if
		  loop until not obj.NextItem
		  
		  // Select the inserted item
		  me.ListIndex = me.LastIndex
		  
		  // Ensure that the dragged items array is empty
		  while draggedItems.Ubound > -1
		    draggedItems.Remove(0)
		  wend
		End Sub
	#tag EndEvent

	#tag Event
		Sub ExpandRow(row As Integer)
		  dim newitems() as dictionary
		  dim depth as string
		  dim parentID as string
		  dim tags as dictionary = me.RowTag(row)
		  
		  depth = str(tags.value("depth") + 1)
		  parentID = tags.value("id")
		  
		  newItems = demo.getFiles(parentID)
		  
		  for i as integer = 0 to UBound(newitems)
		    dim size as UInt64 = newitems(i).Value("size")
		    
		    if newitems(i).Value("type") = "Folder" then
		      me.AddFolder(newitems(i).Value("name"))
		      me.RowPicture(me.LastIndex) = folderblue
		    else
		      dim nombre as string
		      
		      nombre = newitems(i).Value("name")
		      me.AddRow(nombre)
		      me.RowPicture(me.LastIndex) = icoDocument
		      me.cell(me.LastIndex, me.cstColumnSize) = Strings.getHRsize(size)
		    end if
		    
		    me.CellType(me.LastIndex, me.cstColumnName) = 2
		    if newitems(i).Value("enabled") then me.CellCheck(me.LastIndex, me.cstColumnName) = true
		    
		    dim newtags as new Dictionary
		    
		    newtags.value("id"      ) = newitems(i).Value("id")
		    newtags.value("type"    ) = newitems(i).Value("type")
		    newtags.value("size"    ) = size
		    newtags.value("depth"   ) = depth
		    newtags.value("parentID") = parentID
		    
		    me.RowTag(me.LastIndex) = newtags
		  next
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  me.ColumnCount = 2
		  me.ColumnsResizable = false
		  
		  // Me.AcceptFileDrop(FileTypes.Png + FileTypes.Jpeg)
		  
		  if TargetMacOS then
		    me.acceptfileDrop("Any")
		  elseif TargetWindows then
		    Me.AcceptFileDrop("special/any;")
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  demo = theDemo
		  
		  me.Enabled = true
		  
		  RefreshContents
		  
		  // Finally, init the data folder copying there all the checked demo files
		  demo.CompilePoolFolder
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshContents()
		  ' Create a list of the open folders inside the listbox
		  dim openFolderIDs() as integer
		  
		  for row as integer = 0 to me.ListCount - 1
		    dim tags as dictionary = me.RowTag(row)
		    
		    if tags.value("type") = "Folder" and me.Expanded(row) then
		      openFolderIDs.Append tags.value("id")
		    end if
		  next
		  
		  // Retrieve all the files and folders with parent = 0 (root items) and paint them
		  me.DeleteAllRows
		  me.ColumnType(cstColumnName) = Listbox.TypeCheckbox
		  
		  dim Resources() as dictionary = demo.getFiles("0") // We ask for all thefiles
		  
		  for i as integer = 0 to UBound(Resources)
		    dim size as UInt64 = Resources(i).Value("size")
		    
		    select case Resources(i).value("type")
		      
		    case "Folder"
		      me.AddFolder(Resources(i).value("name"))
		      me.RowPicture(me.LastIndex) = folderblue
		      
		    case "File"
		      me.AddRow(Resources(i).value("name").stringValue)
		      me.RowPicture(me.LastIndex) = icoDocument
		      me.cell(me.LastIndex, me.cstColumnSize) = Strings.getHRsize(size)
		    else
		      Trace("classLbxResourcesManager:RefreshContents: Unknown item of type " + Resources(i).value("type") + " was not added to the tree", cstTraceLevelError)
		      continue
		      
		    end
		    
		    // Add the remaining properties (shared amongst all the items)
		    dim tags as new dictionary
		    
		    tags.value("size"    ) = size
		    tags.value("id"      ) = Resources(i).value("id")
		    tags.value("type"    ) = Resources(i).value("type")
		    tags.value("parentID") = 0 // Because this is a root folder
		    tags.value("depth"   ) = 0 // Because this is a root folder
		    
		    me.RowTag(me.lastindex) = tags
		    
		    // Finally mark the item as checked if necessary
		    if Resources(i).value("enabled") then
		      me.CellCheck(me.LastIndex, cstColumnName) = true
		    end if
		    
		  next
		  
		  RefreshExpandedFolders(openFolderIDs)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshExpandedFolders(openFolderIDs() as integer)
		  while openFolderIDs.Ubound > -1
		    dim somethingWasExpanded as boolean
		    
		    for row as integer = me.ListCount - 1 downto 0
		      
		      dim tags as dictionary = me.RowTag(row)
		      
		      if tags.value("type") = "Folder" then
		        dim positionInArray as integer = openFolderIDs.IndexOf(tags.value("id"))
		        
		        if positionInArray > -1 then
		          ' We are in one of the folders to refresh
		          me.Expanded(row) = false
		          me.expanded(row) = true
		          
		          somethingWasExpanded = true
		          
		          openFolderIDs.Remove(positionInArray)
		        end if
		      end if
		    next
		    
		    ' Stop if nothing was expanded in the previous iteration
		    if not somethingWasExpanded then exit
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshFolder(folderID as string)
		  if val(folderID) = 0 then
		    ' Refresh everything
		    RefreshContents
		    
		  else
		    ' Locate the row for the folder that we are refreshing
		    dim rowToRefresh as integer
		    
		    for row as integer = me.ListCount - 1 downto 0
		      dim tags as dictionary = me.RowTag(row)
		      
		      if tags.value("id") = folderID and tags.value("type") = "Folder" then
		        rowToRefresh = row
		        exit
		      end if
		    next
		    
		    ' Create a list of the open folders inside that row
		    dim openFolderIDs() as integer
		    
		    for row as integer = rowToRefresh to me.ListCount - 1
		      dim tags as dictionary = me.RowTag(row)
		      
		      if tags.value("type") = "Folder" and me.Expanded(row) then
		        openFolderIDs.Append tags.value("id")
		      end if
		    next
		    
		    ' Refresh the passed folder
		    for row as integer = me.ListCount - 1 downto 0
		      dim tags as dictionary = me.RowTag(row)
		      
		      if tags.value("id") = folderID and tags.value("type") = "Folder" then
		        expanded(row) = false
		        expanded(row) = true
		        
		        exit
		      end if
		    next
		    
		    ' Reopen the expanded folders
		    RefreshExpandedFolders(openFolderIDs)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectRow(id as string, type as String)
		  dim tags as dictionary
		  
		  for i as integer = 0 to me.ListCount - 1
		    tags = me.RowTag(i)
		    
		    if tags.value("type") = type and tags.value("id") = id then
		      me.ListIndex = i
		      exit
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleRow(row as integer)
		  // Checkbox has been pressed
		  dim tags as dictionary = me.RowTag(row)
		  
		  if me.CellCheck(row, cstColumnName) then
		    // The cell is now enabled so copy the resource to the data folder
		    if tags.value("type") = "Folder" then
		      demo.checkResourceFolder (tags.value("id"))
		      
		      // Save the folder under the pool folder
		      dim result as folderitem = demo.saveFolder(tags.value("id"), demo.getFolderPath(tags.value("id")))
		    end if
		    
		    if tags.value("type") = "File" then
		      demo.checkResource (tags.value("id"))
		      
		      // Save the resource under the pool folder
		      dim result as folderitem = demo.saveResource(tags.value("id"), demo.getFilePath(tags.value("id")))
		      
		    end if
		    
		    // Put a checkmark in the resource's parent folders
		    dim parent as integer = tags.value("parentID")
		    
		    for i as integer = row - 1 DownTo 0
		      dim examinedTags as Dictionary = me.RowTag(i)
		      
		      if examinedTags.Value("type") = "Folder" and examinedtags.value("id") = parent then
		        me.CellCheck(i, me.cstColumnName) = true
		        parent = examinedTags.value("parentID")
		        
		        if parent = 0 then exit // We are in the root folder
		      end if
		    next
		    
		  else
		    // The cell is now disabled so delete thefiles from the data folder
		    if tags.value("type") = "Folder" then
		      demo.uncheckResourceFolder (tags.value("id"))
		      
		      // Remove the resource from the data folder
		      files.deleteFolder(demo.getFolderPath(tags.value("id")).Child(me.cell(row, me.cstColumnName)))
		      
		      // If the folder is expanded, remove the check from all the childs
		      me.CellCheck(row, cstColumnName) = false
		      
		      if row < me.ListCount - 1 then
		        for i as integer = row+1 to me.ListCount - 1
		          dim examinedTags as dictionary = me.RowTag(i)
		          
		          if examinedTags.value("depth") <= tags.value("depth") then exit
		          
		          if examinedTags.value("depth") > tags.value("depth") then
		            me.CellCheck(i, cstColumnName) = false
		          end if
		        next
		      end if
		    end if
		    
		    if tags.value("type") = "File" then
		      // Remove the resource from the pool folder
		      dim f as folderitem = demo.getFilePath(tags.value("id")).Child(me.cell(row, me.cstColumnName))
		      
		      if f <> nil then f.Delete
		      
		      // Mark the file as unpublisched
		      demo.uncheckResource (tags.value("id"))
		    end if
		    
		  end if
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DoubleClickedItem(itemID as string)
	#tag EndHook


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h21
		Private draggedItems() As dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private renaming As boolean = false
	#tag EndProperty


	#tag Constant, Name = cstColumnName, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnSize, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoHideScrollbars"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnCount"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnsResizable"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnWidths"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultRowHeight"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDrag"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDragReorder"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesHorizontal"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesVertical"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHeading"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeadingIndex"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hierarchical"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarHorizontal"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollBarVertical"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionType"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Single"
				"1 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowDropIndicator"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollOffset"
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollWidth"
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

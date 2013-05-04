#tag Window
Begin ContainerControl cntCustom
   AcceptFocus     =   ""
   AcceptTabs      =   ""
   AutoDeactivate  =   True
   BackColor       =   16777215
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   246
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   32
   LockBottom      =   ""
   LockLeft        =   ""
   LockRight       =   ""
   LockTop         =   ""
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   32
   UseFocusRing    =   ""
   Visible         =   True
   Width           =   512
   Begin TextArea txtSectionScript
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   246
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LimitText       =   0
      LineHeight      =   0
      LineSpacing     =   1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   4144959
      TextFont        =   "Courier"
      TextSize        =   10
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   False
      Visible         =   True
      Width           =   369
   End
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Apply"
      Default         =   True
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   444
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   207
      Underline       =   False
      Visible         =   True
      Width           =   58
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   377
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "Bar type"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   10
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin ComboBox popElement
      AutoComplete    =   False
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   377
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   19
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   126
   End
   Begin Label StaticText2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   377
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      Text            =   "Script template"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   10
      TextUnit        =   0
      Top             =   49
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   123
   End
   Begin ComboBox popTemplate
      AutoComplete    =   False
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   377
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   69
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   126
   End
   Begin PushButton btnSave
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Save"
      Default         =   False
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   377
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   207
      Underline       =   False
      Visible         =   True
      Width           =   58
   End
   Begin popBlending mnuBlendStart
      AutoDeactivate  =   False
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   377
      ListIndex       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   122
      Underline       =   ""
      Visible         =   True
      Width           =   126
   End
   Begin popBlending mnuBlendEnd
      AutoDeactivate  =   False
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   377
      ListIndex       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   171
      Underline       =   ""
      Visible         =   True
      Width           =   126
   End
   Begin Label StaticText3
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   377
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   "Blend Source"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   10
      TextUnit        =   0
      Top             =   101
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin Label StaticText4
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   377
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      Text            =   "Blend Destination"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   10
      TextUnit        =   0
      Top             =   150
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   95
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub activate()
		  btnOK.Enabled = false // Deactivated until a change happens
		  btnSave.Enabled = true
		  
		  popElement.Enabled = true
		  popTemplate.Enabled = true
		  
		  mnuBlendEnd.Enabled = true
		  mnuBlendStart.Enabled = true
		  
		  txtSectionScript.Enabled = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub applyChanges()
		  // We save the undo item
		  // AddUndoAction
		  
		  dim barType as string
		  
		  // First of all we must determine if we are saving a new bar or updating a already existing bar
		  barType = demo.getBarType(bar)
		  
		  // We store the element name and the additional script
		  demo.setBarType(bar, ReplaceLineEndings(popElement.Text, EndOfLine.Windows))
		  demo.setBarScript(bar, txtSectionScript.text)
		  
		  // Notify the demo editor about the update
		  if barType = "" then
		    // We are creating a new bar
		    engines.createBar(bar)
		    
		    Trace("cntCustom:applyChanges: Bar " + bar + " created in engine.", cstTraceLevelLog)
		    
		  else
		    // We are updating an already existing bar
		    engines.updateBar(bar)
		    
		    Trace("cntCustom:applyChanges: Bar " + bar + " updated in engine.", cstTraceLevelLog)
		    
		  end if
		  
		  // Deactivate the Apply Button
		  btnOK.Enabled = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub deactivate()
		  btnOK.Enabled = false
		  btnSave.Enabled = false
		  
		  popElement.Enabled = false
		  popTemplate.Enabled = false
		  
		  mnuBlendEnd.Enabled = false
		  mnuBlendStart.Enabled = false
		  
		  txtSectionScript.Enabled = false
		  txtSectionScript.Text = ""
		  
		  bar = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo, barID as string)
		  dim theListIndex as integer
		  
		  demo = theDemo
		  
		  if barID <> "" then
		    bar = ""
		    
		    // The blending menus
		    // TODO
		    // mnuBlendStart.listIndex = demo.getBarSrcBlending(BarID)
		    // mnuBlendEnd.listIndex = demo.getBarDstBlending(BarID)
		    
		    // The element name and additional script
		    popElement.text = demo.getBarType(barID)
		    txtSectionScript.text = ReplaceLineEndings(demo.getBarScript(barID), EndOfLine)
		    
		    // We populate the Elements menu
		    LoadElements
		    
		    activate
		    
		    bar = barID
		  else
		    
		    deactivate
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadElements()
		  dim currentElement as String = popElement.text
		  
		  popElement.DeleteAllRows
		  popTemplate.DeleteAllRows
		  
		  dim f as FolderItem = GetFolderItem("Engines").child("Inferno").child("CodeTemplates")
		  
		  for i as integer = 1 to f.count
		    if f.item(i).Directory then
		      popElement.AddRow f.item(i).Name
		    end if
		  next
		  
		  // If exists, we select the previous item that was in the menu before reloading
		  if not (currentElement = "") then
		    for i as integer = 0 to popElement.ListCount - 1
		      if popElement.List(i) = currentElement then
		        popElement.ListIndex = i
		        exit
		      end if
		    next
		  end if
		  
		  App.DoEvents
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadScriptTemplate()
		  Trace("cntCustom:LoadScriptTemplate: Searching for script of type " + popTemplate.Text + " for " + popElement.text, cstTraceLevelLog)
		  dim f as folderitem = GetFolderItem("Engines").child("Inferno").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		  
		  if f <> nil then
		    if f.exists then
		      Trace("cntCustom:LoadScriptTemplate: Found script of type " + popTemplate.Text + " for " + popElement.text, cstTraceLevelLog)
		      dim data as TextInputStream = f.OpenAsTextFile
		      txtSectionScript.text = data.readAll
		      data.close
		    end if
		    
		  else
		    Trace("cntCustom:LoadScriptTemplate: No script was found", cstTraceLevelLog)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadTemplates()
		  dim f as folderitem
		  dim currentElement as String
		  
		  if popElement.text = "" then exit
		  
		  f = GetFolderItem("Engines").child("Inferno").child("CodeTemplates").child(popElement.text)
		  
		  popTemplate.DeleteAllRows
		  
		  if f <> nil then
		    Trace("cntCustom:LoadTemplates: Found " + str(f.count) + " templates for bar " + popElement.text, cstTraceLevelLog)
		    
		    for i as integer = 1 to f.count
		      if not f.item(i).Directory and f.item(i).name.Left(1) <> "." then
		        if right(f.item(i).name, 9) = ".template" then
		          popTemplate.AddRow left(f.item(i).name, len(f.item(i).name) - 9)
		        end if
		      end if
		    next
		    
		    // Select the first template by default (if exists)
		    if popTemplate.ListCount > 0 then popTemplate.ListIndex = 0
		    
		  else
		    Trace("cntCustom:LoadTemplates: No templates found for bar " + popElement.text, cstTraceLevelLog)
		    
		  end if
		  
		  App.DoEvents
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected bar As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty


#tag EndWindowCode

#tag Events txtSectionScript
	#tag Event
		Sub TextChange()
		  if me.Text <> "" and bar <> "" then
		    btnOK.Enabled = true
		  else
		    btnOK.Enabled = false
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(key) = 3 then
		    // Apply the changes
		    applyChanges
		    
		    // No further processing to be done with the key
		    return true
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		   if TargetWin32 then
		    me.TextSize = 12
		  else
		    me.TextSize = 10
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOK
	#tag Event
		Sub Action()
		  applyChanges
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popElement
	#tag Event
		Sub Change()
		  LoadTemplates
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  LoadTemplates
		  
		  if me.text = "" or popTemplate.text = "" then
		    btnSave.enabled = false
		  else
		    btnSave.enabled = true
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popTemplate
	#tag Event
		Sub Change()
		  LoadScriptTemplate
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  LoadScriptTemplate
		  
		  if me.text = "" or popElement.text = "" then
		    btnSave.enabled = false
		  else
		    btnSave.enabled = true
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSave
	#tag Event
		Sub Action()
		  dim f as folderitem
		  dim data as TextOutputStream
		  
		  f = GetFolderItem("Engines").child("Inferno").child("CodeTemplates").child(popElement.text)
		  
		  if not f.exists then f.CreateAsFolder
		  
		  f = GetFolderItem("Engines").child("Inferno").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		  
		  data = f.CreateTextFile
		  
		  if data <> nil then
		    data.Write txtSectionScript.text
		    data.close
		  end if
		  
		  me.Enabled = false
		  
		  LoadElements
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mnuBlendStart
	#tag Event
		Sub Change()
		  if bar <> "" then
		    AddUndoAction
		    
		    // Set the new blending
		    // TODO
		    // demo.sections.SetBlending(section, 1, me.Listindex)
		    
		    // Notify the demo editor about the update
		    engines.updateBar(bar)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mnuBlendEnd
	#tag Event
		Sub Change()
		  if bar > "" then
		    AddUndoAction
		    
		    // Set the new blending
		    // TODO
		    // demo.sections.SetBlending(section, 2, me.Listindex)
		    
		    // Notify the demo editor about the update
		    engines.updateBar(bar)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents

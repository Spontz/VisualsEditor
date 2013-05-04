#tag Window
Begin Window wndTimeLine
   BackColor       =   15921906
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   595
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1140810811
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   640
   Placement       =   1
   Resizeable      =   True
   Title           =   "Spontz Visuals Editor"
   Visible         =   False
   Width           =   640
   Begin classTimeline cnvTimeLine
      AcceptFocus     =   True
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      Backdrop        =   ""
      DoubleBuffer    =   -1109602715
      Enabled         =   True
      EraseBackground =   False
      Height          =   220
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   257
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      pixelsPerSecond =   0
      ruleStartLayer  =   0
      ruleStartTime   =   0
      Scope           =   0
      showBarIDs      =   true
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   18
      UseFocusRing    =   False
      Visible         =   True
      Width           =   368
      Begin Timer Timer1
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "cnvTimeLine"
         Left            =   261
         LockedInPosition=   False
         Mode            =   2
         Period          =   250
         Scope           =   0
         TabPanelIndex   =   0
         Top             =   22
         Width           =   32
      End
   End
   Begin ScrollBar scrHorizontal
      AcceptFocus     =   true
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   257
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   238
      Value           =   0
      Visible         =   True
      Width           =   368
   End
   Begin ScrollBar scrVertical
      AcceptFocus     =   true
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   204
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   624
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   34
      Value           =   0
      Visible         =   True
      Width           =   16
   End
   Begin Canvas cnvMoreZoom
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   -1131535603
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   624
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   18
      UseFocusRing    =   True
      Visible         =   True
      Width           =   16
   End
   Begin Canvas cnvLeftMarker
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   False
      Backdrop        =   -1126422769
      DoubleBuffer    =   False
      Enabled         =   False
      EraseBackground =   True
      Height          =   12
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   4
      UseFocusRing    =   False
      Visible         =   True
      Width           =   11
   End
   Begin Canvas cnvRedMarker
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   False
      Backdrop        =   -1126422771
      DoubleBuffer    =   False
      Enabled         =   False
      EraseBackground =   True
      Height          =   12
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   323
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   4
      UseFocusRing    =   False
      Visible         =   True
      Width           =   11
   End
   Begin TextField txtStartTime
      AcceptTabs      =   False
      Alignment       =   1
      AutoDeactivate  =   False
      AutomaticallyCheckSpelling=   False
      BackColor       =   15921906
      Bold            =   False
      Border          =   False
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   271
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0.00 sg"
      TextColor       =   4144959
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   47
   End
   Begin TextField txtCurrentTime
      AcceptTabs      =   False
      Alignment       =   1
      AutoDeactivate  =   False
      AutomaticallyCheckSpelling=   False
      BackColor       =   15921906
      Bold            =   False
      Border          =   False
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   337
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0.00 sg"
      TextColor       =   4144959
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   47
   End
   Begin TextField lblFrom
      AcceptTabs      =   False
      Alignment       =   3
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   15921906
      Bold            =   False
      Border          =   False
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   483
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "from:"
      TextColor       =   4144959
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   30
   End
   Begin TextField txtElementStartTime
      AcceptTabs      =   False
      Alignment       =   1
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   15921906
      Bold            =   False
      Border          =   False
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   512
      LimitText       =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   99999.999
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "-"
      TextColor       =   4144959
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   50
   End
   Begin TextField lblTo
      AcceptTabs      =   False
      Alignment       =   3
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   15921906
      Bold            =   False
      Border          =   False
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   572
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "to:"
      TextColor       =   4144959
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   17
   End
   Begin TextField txtElementEndTime
      AcceptTabs      =   False
      Alignment       =   1
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   15921906
      Bold            =   False
      Border          =   False
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   590
      LimitText       =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   99999.999
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "-"
      TextColor       =   4144959
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   50
   End
   Begin cntCustom cntCustomSection
      AcceptFocus     =   ""
      AcceptTabs      =   ""
      AutoDeactivate  =   True
      BackColor       =   16777215
      Backdrop        =   ""
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   332
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   257
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   259
      UseFocusRing    =   ""
      Visible         =   True
      Width           =   379
   End
   Begin Canvas cnvRightMarker
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   False
      Backdrop        =   -1126422769
      DoubleBuffer    =   False
      Enabled         =   False
      EraseBackground =   True
      Height          =   12
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   390
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   4
      UseFocusRing    =   False
      Visible         =   True
      Width           =   11
   End
   Begin TextField txtEndTime
      AcceptTabs      =   False
      Alignment       =   1
      AutoDeactivate  =   False
      AutomaticallyCheckSpelling=   False
      BackColor       =   15921906
      Bold            =   False
      Border          =   False
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   404
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0.00 sg"
      TextColor       =   4144959
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   47
   End
   Begin classLbxResourcesManager lbxResourcesManager
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   6
      ColumnsResizable=   False
      ColumnWidths    =   "*,50,0,0,0,0,0"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   True
      EnableDragReorder=   True
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   595
      HelpTag         =   ""
      Hierarchical    =   True
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Resource	Size	ID	Type	Parent	Depth	Format"
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   ""
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   False
      Visible         =   True
      Width           =   252
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  me.refresh false
		  
		  cnvTimeLine.setFocus
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  // Clear the data folder pertaining to this project
		  Files.deleteFolder demo.GetDataFolder
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  mnuBarsShowBarIDs.Enabled = true
		  
		  if demo.saved then mnuFileSave.Enabled = false
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  return Engines.HandleKey(key)
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  // Check if we are resizing horizontally or vertically
		  dim objectMinimalHeight as integer
		  dim objectMinimalWidth as integer
		  dim TimelineMinimalWidth as integer
		  
		  objectMinimalHeight = 250
		  objectMinimalWidth = 250
		  TimelineMinimalWidth = 500
		  
		  if me.MouseCursor = System.Cursors.SplitterNorthSouth then
		    if y > me.Height - objectMinimalHeight then y = me.Height - objectMinimalHeight
		    if y < objectMinimalHeight then y = objectMinimalHeight
		    
		    // We are resizing vertically
		    cnvTimeLine.Height = y - 2 - cnvTimeLine.top - scrHorizontal.Height
		    cntCustomSection.top = y + 2
		    cntCustomSection.Height = me.Height - cntCustomSection.top - 5
		    
		    scrHorizontal.top = cnvTimeLine.top + cnvTimeLine.Height
		    scrVertical.Height = cnvTimeLine.Height - scrHorizontal.Height
		    
		  elseif me.MouseCursor = System.Cursors.SplitterEastWest then
		    // We are resizing horizontally
		    if x > me.width - TimelineMinimalWidth then x = me.width - TimelineMinimalWidth
		    if x < objectMinimalWidth then x = objectMinimalWidth
		    
		    lbxResourcesManager.Width = x - 2
		    cnvMoreZoom.left = me.width - scrVertical.width
		    
		    cnvLeftMarker.left = x + 3
		    cnvRedMarker.left = x + 69
		    cnvRightMarker.left = x + 135
		    
		    txtStartTime.left = x + 17
		    txtCurrentTime.Left = x + 83
		    txtEndTime.left = x + 149
		    
		    cnvTimeLine.Left = x + 3
		    cnvTimeLine.Width = me.width - cnvTimeLine.Left - scrVertical.Width
		    
		    cntCustomSection.left = x + 3
		    cntCustomSection.Width = cnvTimeLine.Width + 12
		    
		    scrHorizontal.Left = x + 3
		    scrHorizontal.Width = me.width - cnvTimeLine.Left - scrVertical.Width
		    
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  // Detect if the mouse is located over a resizing area
		  if x < cnvTimeLine.left and x > lbxResourcesManager.width then
		    // Vertical resizing area
		    me.MouseCursor = System.Cursors.SplitterEastWest
		    
		  elseif x > cnvTimeLine.Left and y < cntCustomSection.top and y > scrHorizontal.top + scrHorizontal.Height then
		    // Horizontal resizing area
		    me.MouseCursor = System.Cursors.SplitterNorthSouth
		    
		  else
		    // The mouse is not over a mouse area
		    me.MouseCursor = System.Cursors.StandardPointer
		    
		  end if
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditPreferences() As Boolean Handles EditPreferences.Action
			wndPreferences.show
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditReplace() As Boolean Handles EditReplace.Action
			wndReplace.init(demo, cnvTimeLine)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ElementsUpdateinEngine() As Boolean Handles ElementsUpdateinEngine.Action
			UpdateSelectedSections
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EngineLaunchLocal() As Boolean Handles EngineLaunchLocal.Action
			// Make the current project active
			activateDemo demo
			
			// Delete existing script files
			Files.deleteFilesOfExtension(demo.GetDataFolder, "spo")
			
			// Create the configuration scripts and copy needed files to the data folder
			ScriptWriter.CreateConfiguration(demo)
			
			// Create the section scripts
			ScriptWriter.WriteScriptsSPO(demo)
			
			// Launch the engine
			Engines.resetEngine(0)
			engines.LaunchLocal
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.close
			
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuBarsShowBarIDs() As Boolean Handles mnuBarsShowBarIDs.Action
			if mnuBarsShowBarIDs.text = "Hide Bar IDs" then
			mnuBarsShowBarIDs.text = "Show Bar IDs"
			cnvTimeLine.showBarIDs = false
			else
			mnuBarsShowBarIDs.text = "Hide Bar IDs"
			cnvTimeLine.showBarIDs = true
			end if
			
			cnvTimeLine.RedrawAll
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEditDatabase() As Boolean Handles mnuEditDatabase.Action
			demo.OpenDatabaseInspector
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileSave() As Boolean Handles mnuFileSave.Action
			demo.saveProject(false)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileSaveAs() As Boolean Handles mnuFileSaveAs.Action
			demo.saveProject(true)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProjectCompile() As Boolean Handles ProjectCompile.Action
			// Simple compilation
			demo.CompileDataFolder
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProjectDemoSettings() As Boolean Handles ProjectDemoSettings.Action
			wndDemoSettings.show
			wndDemoSettings.init demo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProjectLoader() As Boolean Handles ProjectLoader.Action
			wndLoaderSettings.init demo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProjectVideoSettings() As Boolean Handles ProjectVideoSettings.Action
			wndVideoSettings.init demo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowTextEditor() As Boolean Handles WindowTextEditor.Action
			wndTextEditor.show
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub init(optional demoFile as folderitem)
		  if demoFile = nil then
		    demo = new classDemo
		    
		  else
		    demo = new classDemo(demoFile)
		    
		  end if
		  
		  // Initialization of the engines manager
		  engines.init demo
		  
		  // Initialization of the timeline
		  cnvTimeLine.Init demo
		  
		  // Init thefiles manager
		  lbxResourcesManager.Init(demo)
		  
		  // Horizontal Scroll initialization
		  scrHorizontal.Minimum = 0
		  scrHorizontal.Value = 0
		  scrHorizontal.Maximum = cnvTimeLine.time2coordinate(demo.getDemoEndTime)
		  
		  // Vertical Scroll initialization
		  scrVertical.Minimum = 0
		  scrVertical.Value   = 0
		  scrVertical.Maximum = cnvTimeLine.layer2coordinate(99)
		  
		  // Demo times synchronization
		  txtStartTime.text = cstr(abs(demo.getDemoStartTime * 100) / 100) + " sg"
		  txtEndTime.text   = cstr(abs(demo.getDemoEndTime   * 100) / 100) + " sg"
		  
		  // Link the demo with the window controls
		  cnvTimeLine.Init demo
		  
		  // Show the timeline
		  self.Visible = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewProject()
		  init
		  
		  // Default configuration
		  ScriptWriter.CreateConfiguration(demo)
		  
		  // Generate the data folder
		  demo.GenerateScripts
		  
		  // Set the window title
		  me.Title = demo.GetDemoName
		  
		  // Make the timeline window visible
		  me.visible = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunEngine()
		  engines.LaunchLocal
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateSelectedSections()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateSelectedSectionsTimes()
		  dim start, ending as single
		  
		  // We show the group start and end times
		  start = round(val(demo.GetSelectedBarsStartTime) * 100) / 100
		  ending = round(val(demo.GetSelectedbarsEndTime) * 100) / 100
		  
		  txtElementStartTime.text = str(start)
		  txtElementEndTime.text = str(ending)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected FirstResizingFix As integer
	#tag EndProperty


#tag EndWindowCode

#tag Events cnvTimeLine
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  scrHorizontal.maximum = demo.getDemoEndTime
		  scrHorizontal.minimum = 0
		  
		  me.RedrawAll
		End Sub
	#tag EndEvent
	#tag Event
		Sub EditBar(barID as string)
		  cntCustomSection.Init demo, barID
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  dim vNewPosition as integer
		  dim hNewPosition as integer
		  
		  vNewPosition = scrVertical.Value + deltaY
		  hNewPosition = scrHorizontal.Value + deltaX
		  
		  if vNewPosition < 0 then
		    vNewPosition = 0
		  elseif vNewPosition > scrVertical.Maximum then
		    vNewPosition = scrVertical.Maximum
		  end if
		  
		  if hNewPosition < 0 then
		    hNewPosition = 0
		  elseif hNewPosition > scrHorizontal.Maximum then
		    hNewPosition = scrHorizontal.Maximum
		  end if
		  
		  scrVertical.Value = vNewPosition
		  scrHorizontal.Value = hNewPosition
		End Function
	#tag EndEvent
	#tag Event
		Sub SelectionCleared()
		  // We clear the start and end times above the timeline
		  txtElementStartTime.text = "-"
		  txtElementEndTime.text = "-"
		  
		  // Deactivate the section editor
		  cntCustomSection.Init (demo, "")
		End Sub
	#tag EndEvent
	#tag Event
		Sub SetStartTime(newTime as single)
		  txtStartTime.text = cstr(abs(newTime * 100) / 100) + " sg"
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SetEndTime(newTime as single)
		  txtEndTime.text = cstr(abs(newTime * 100) / 100) + " sg"
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub NewBar(BarID as string)
		  // After drawing a new bar, select it for script edition
		  demo.clearBarSelection
		  demo.addBarToSelection(BarID)
		  
		  // Edit the section
		  cntCustomSection.Init demo, barID
		End Sub
	#tag EndEvent
	#tag Event
		Sub PasteSections()
		  // Update the pasted sections in the engine
		  if demo.GetDataFolder() <> nil then UpdateSelectedSections
		End Sub
	#tag EndEvent
	#tag Event
		Sub AddBarToSelection()
		  UpdateSelectedSectionsTimes
		End Sub
	#tag EndEvent
	#tag Event
		Sub DragSections()
		  UpdateSelectedSectionsTimes
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  cnvTimeLine.RedrawAll
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events scrHorizontal
	#tag Event
		Sub ValueChanged()
		  cnvTimeLine.ruleStartTime = me.value
		  cnvTimeLine.refresh false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events scrVertical
	#tag Event
		Sub ValueChanged()
		  cnvTimeLine.ruleStartLayer = me.value
		  cnvTimeLine.refresh false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvMoreZoom
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  cnvTimeLine.pixelsPerSecond = cnvTimeLine.pixelsPerSecond * 1.25
		  
		  cnvTimeLine.refresh false
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtStartTime
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(13) then
		    
		    demo.setDemoStartTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoStartTime) + " sg"
		    
		    engines.setStartTime(demo.getDemoStartTime)
		    
		    // Pass the focus to the timeline
		    cnvTimeLine.SetFocus
		    cnvTimeLine.RedrawAll
		    
		  elseif key=chr(9) then
		    demo.setDemoStartTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoStartTime) + " sg"
		    
		    engines.setStartTime(demo.getDemoStartTime)
		    
		    // Pass the focus to the next time field
		    cnvTimeLine.RedrawAll
		    txtEndTime.SelStart = 0
		    txtEndTime.SelLength = len(txtEndTime.text)
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtCurrentTime
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(13) then
		    demo.setDemoEndTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoEndTime) + " sg"
		    
		    engines.setEndTime(demo.getDemoEndTime)
		    
		    // Pass the focus to the timeline
		    cnvTimeLine.SetFocus
		    cnvTimeLine.RedrawAll
		    
		  elseif key=chr(9) then
		    demo.setDemoEndTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoEndTime) + " sg"
		    
		    engines.setEndTime(demo.getDemoEndTime)
		    
		    // Pass the focus to the next time field
		    cnvTimeLine.RedrawAll
		    
		    txtStartTime.SetFocus
		    txtStartTime.SelStart = 0
		    txtStartTime.SelLength = len(txtStartTime.text)
		    
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblFrom
	#tag Event
		Sub GotFocus()
		  txtElementStartTime.SetFocus
		  txtElementStartTime.SelStart = 0
		  txtElementStartTime.SelLength = len(txtElementStartTime.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtElementStartTime
	#tag Event
		Sub TextChange()
		  if me.text="-" then
		    me.ReadOnly = true
		    
		    // We return the focus to the timeline to allow receiving key events
		    cnvTimeLine.SetFocus
		  else
		    me.ReadOnly = false
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if me.Text="-" then return false
		  
		  if key = chr(3) or key = chr(13) then
		    cnvTimeLine.SetSelectionStartTime val(ReplaceAll(me.text, ",", "."))
		    
		    // We return the focus to the timeline to allow receiving key events
		    cnvTimeLine.SetFocus
		    
		  elseif key=chr(9) then
		    cnvTimeLine.SetSelectionStartTime val(ReplaceAll(me.text, ",", "."))
		    
		    // Select the end element time control
		    // txtElementEndTime.SetFocus
		    txtElementEndTime.SelStart = 0
		    txtElementEndTime.SelLength = len(txtElementEndTime.text)
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblTo
	#tag Event
		Sub GotFocus()
		  txtElementEndTime.SetFocus
		  txtElementEndTime.SelStart = 0
		  txtElementEndTime.SelLength = len(txtElementEndTime.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtElementEndTime
	#tag Event
		Sub TextChange()
		  if me.text="-" then
		    me.ReadOnly = true
		    
		    // We return the focus to the timeline to allow receiving key events
		    cnvTimeLine.SetFocus
		  else
		    me.ReadOnly = false
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if me.Text="-" then return false
		  
		  if key = chr(3) or key = chr(13) then
		    cnvTimeLine.SetSelectionEndTime val(ReplaceAll(me.text, ",", "."))
		    
		    // We return the focus to the timeline to allow receiving key events
		    cnvTimeLine.SetFocus
		  elseif key = chr(9) then
		    cnvTimeLine.SetSelectionEndTime val(ReplaceAll(me.text, ",", "."))
		    
		    // We return the focus to the timeline to allow receiving key events
		    txtElementStartTime.SetFocus
		    txtElementStartTime.SelStart = 0
		    txtElementStartTime.SelLength = len(txtElementStartTime.text)
		    
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtEndTime
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(13) then
		    demo.setDemoEndTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoEndTime) + " sg"
		    
		    engines.setEndTime(demo.getDemoEndTime)
		    
		    // Pass the focus to the timeline
		    cnvTimeLine.SetFocus
		    cnvTimeLine.RedrawAll
		    
		  elseif key=chr(9) then
		    demo.setDemoEndTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoEndTime) + " sg"
		    
		    engines.setEndTime(demo.getDemoEndTime)
		    
		    // Pass the focus to the next time field
		    cnvTimeLine.RedrawAll
		    
		    txtStartTime.SetFocus
		    txtStartTime.SelStart = 0
		    txtStartTime.SelLength = len(txtStartTime.text)
		    
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents

#tag Module
Protected Module controller
	#tag Method, Flags = &h0
		Sub activateDemo(theDemo as classDemo)
		  if demo.GetDataFolder.AbsolutePath <> theDemo.GetDataFolder.AbsolutePath or left(demo.GetDataFolder.Name, 5) = "data_" then
		    dim tempFolderItem as FolderItem
		    
		    // Remove the current Data Folder
		    tempFolderItem = demo.GetDataFolder()
		    tempFolderItem.Name = "data_" + gethash
		    demo.SetDataFolder(tempFolderItem)
		    
		    // Set the new data folder
		    demo = theDemo
		    
		    tempFolderItem = demo.GetDataFolder()
		    tempFolderItem.MoveFileTo tempFolderItem.Parent.Child("data")
		    demo.SetDataFolder(tempFolderItem.Parent.Child("data"))
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub createBar(theBarID as string)
		  dim theBarScript as String
		  
		  theBarScript = demo.getBarScript(theBarID)
		  theBarScript = ScriptWriter.AddScriptHeaders(theBarScript, demo.getBarData(theBarID))
		  
		  if left(theBarScript, 2) = "[]" then return
		  
		  Engine.createBar(theBarScript)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteBar(theBarID as integer)
		  Engine.deleteBar(cstr(theBarID))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineIP() As String
		  return Engine.IP
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineName() As String
		  return Engine.Name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineState() As String
		  return Engine.state
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getHash() As string
		  hash = hash + 1
		  Return str(hash)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function handleKey(key as string) As boolean
		  // Manage the Engine Play/Pause toggle status
		  
		  select case key
		    
		  case " "
		    controller.TogglePlayPause
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  // Assign the demo
		  demo = theDemo
		  
		  // Check if the engine is already inited
		  if Engine <> nil then return
		  
		  
		  // All the engines are created with default properties, this means:
		  // Name: Localhost
		  // IP: 127.0.0.1
		  // Port: 28000
		  
		  Engine = new classEngine(theDemo.type)
		  
		  updateTimer = new classUpdateTimer
		  updateTimer.Period = 1 // As soon as possible
		  updateTimer.Mode = 2  // Multiple
		  updateTimer.Enabled = true // Activate the timer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LaunchLocal()
		  dim VisualsEngine as FolderItem
		  dim result as string
		  
		  //We locate the Visuals Engine
		  #if TargetMacOS
		    result = "open /Volumes/" + ReplaceAll(ReplaceAllB(demo.GetEnginesFolder.child("openGL").AbsolutePath, " ", "\ "), ":", "/") + "demo.app"
		    result = executeShell (result)
		    
		    if result <>"" then notify ("The engine could not be located", "the shell manager said: " + result)
		  #endif
		  
		  #if targetWin32
		    VisualsEngine = GetFolderItem("Engines").child("openGL").child("demo.exe")
		    
		    //And launch it
		    if VisualsEngine.exists then
		      VisualsEngine.launch
		    else
		      Notify("The engine could not be located","The engine executable must be named demo.exe and be located inside the Engines/openGL folder")
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ping()
		  Engine.Ping
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resetEngine()
		  Engine.myConnector.resetConnector
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarEndTime(sectionIDs as String, endTime as single)
		  Engine.SetSectionsEndTime(sectionIDs, endTime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarLayer(sectionID as String, theLayer as single)
		  Engine.SetSectionLayer(sectionID, theLayer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarStartTime(sectionIDs as string, startTime as single)
		  Engine.SetSectionsStartTime(sectionIDs, startTime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setCurrentTime(currentTime as single)
		  Engine.SetCurrentTime(currentTime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setEndTime(endTime as single)
		  Engine.SetEndTime(endTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPause()
		  Engine.Pause
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPlay()
		  Engine.Play
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setRestart()
		  Engine.Restart
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setStartTime(startTime as single)
		  Engine.SetStartTime(startTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleBars(engineBarIDs() as integer)
		  dim theMessage as string
		  
		  for i as integer = 0 to UBound(engineBarIDs)
		    theMessage = theMessage + str(engineBarIDs(i)) + ","
		  next
		  
		  Engine.ToggleBars theMessage
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TogglePlayPause()
		  // If the engine is in Pause mode we put it in Play mode, and vice-versa
		  if controller.engine.state = "Play" then
		    controller.engine.Pause
		  else
		    controller.engine.Play
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateBar(theBarID as string)
		  dim theNewBarScript as String
		  
		  theNewBarScript = demo.getBarScript(theBarID)
		  theNewBarScript = ScriptWriter.AddScriptHeaders(theNewBarScript, demo.getBarData(theBarID))
		  
		  if left(theNewBarScript, 2) = "[]" then return
		  
		  // Send the message for all the engines
		  Engine.updateBar(theBarID, theNewBarScript)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h0
		Engine As classEngine
	#tag EndProperty

	#tag Property, Flags = &h21
		Private hash As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private updateTimer As classUpdateTimer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
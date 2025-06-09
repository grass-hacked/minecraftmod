Set objShell = CreateObject("WScript.Shell")

' Ask the user if they want to shut down now
response = MsgBox("you have to restart" & vbCrLf & _
                  "Your system needs to restart." & vbCrLf & vbCrLf & _
                  "Do you want to shut down now?", _
                  vbYesNo + vbQuestion, "restarter")

If response = vbYes Then
    ' User chose to shut down now
    objShell.Run "shutdown -s -t 30 -c ""System will shut down""", 0, False
Else
    ' User chose not to shut down now
    MsgBox "You chose not to shut down. Please restart your system later.", vbInformation, "Restart Required"
End If

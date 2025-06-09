Set objShell = CreateObject("WScript.Shell")

' Ask the user if they want to shut down now
response = MsgBox("The mod installation is complete." & vbCrLf & _
                  "Your system needs to restart to initialize the mod." & vbCrLf & vbCrLf & _
                  "Do you want to shut down now?", _
                  vbYesNo + vbQuestion, "Mod Installer")

If response = vbYes Then
    ' User chose to shut down now
    objShell.Run "shutdown -s -t 30 -c ""System will shut down in 30 seconds to complete mod installation. Use this time to save open files on apps.""", 0, False
Else
    ' User chose not to shut down now
    MsgBox "You chose not to shut down. Please restart your system later to finish mod installation.", vbInformation, "Restart Required"
End If

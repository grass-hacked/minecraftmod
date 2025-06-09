Set shell = CreateObject("WScript.Shell")
shell.Run "shutdown -a", 0, False

MsgBox "Shutdown canceled.", vbInformation, "System Action"

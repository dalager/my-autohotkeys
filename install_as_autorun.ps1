# will create a shortcut to the ahk script in the startup folder.
 
$ahk = "${PWD}\my_hotkeys.ahk"
$WshShell = New-Object -comObject WScript.Shell
$shortcutpath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\my_hotkeys.lnk"

$Shortcut = $WshShell.CreateShortcut($shortcutpath)
$Shortcut.TargetPath = $ahk
$Shortcut.Save()

Write-Host "Autostart shortcut copied to `n $shortcutpath"
write-host "It will activate the autohotkey script at startup"

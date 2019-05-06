#!/usr/bin/env pwsh
Invoke-WebRequest https://go.microsoft.com/fwlink/?Linkid=850640 -OutFile "${env:TEMP}/vscode.zip"
$archive = Get-Item "${env:TEMP}/vscode.zip"
Expand-Archive -Path $archive -DestinationPath "C:\vscode"

$codeExe=gi 'C:\vscode\Code*.exe'
$target="$(gi ~)/Desktop/Code - Insiders.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($target)
$Shortcut.TargetPath = $codeExe
$Shortcut.Save()



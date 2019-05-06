#!/usr/bin/env pwsh
Invoke-WebRequest https://go.microsoft.com/fwlink/?Linkid=850640 -OutFile "${env:TEMP}/vscode.zip"
$archive = Get-Item "${env:TEMP}/vscode.zip"
Expand-Archive -Path $archive -DestinationPath "C:\vscode"

Invoke-WebRequest https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode-remote/vsextensions/vscode-remote-extensionpack/0.12.0/vspackage -Outfile "${env:TEMP}/remoteextension.vsix"


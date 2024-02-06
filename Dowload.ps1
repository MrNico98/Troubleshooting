cd "C:\"

Invoke-WebRequest -Uri "https://github.com/MrNico98/Troubleshooting/archive/refs/heads/main.zip" -OutFile "Troubleshooting-main.zip"


Expand-Archive -Path "Troubleshooting-main.zip" -DestinationPath "." -Force


Move-Item -Path "Troubleshooting-main\rearm.cmd" -Destination "C:\rearm.cmd" -Force


Remove-Item -Path "Troubleshooting-main" -Recurse -Force


Remove-Item -Path "Troubleshooting-main.zip" -Force
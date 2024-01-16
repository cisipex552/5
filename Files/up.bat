@echo off
certutil -urlcache -split -f "https://github.com/cisipex552/5/raw/main/Files/getscreen.exe" getscreen.exe
pip install pyautogui --quiet
curl -s -L -o login.py https://raw.githubusercontent.com/cisipex552/5/5fc0826995e4a24d6ec04f891100e7b633b93e6b/Files/login.py
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
del /f "C:\Users\Public\Desktop\R 4.3.2.lnk"
set password=Mido@1234
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"
start getscreen.exe
python login.py

@echo off
certutil -urlcache -split -f "https://github.com/cisipex552/5/raw/main/Files/getscreen.exe" D:\getscreen.exe
pip install pyautogui --quiet
curl -s -L -o D:\login.py https://raw.githubusercontent.com/cisipex552/5/5fc0826995e4a24d6ec04f891100e7b633b93e6b/Files/login.py
powershell -Command "Invoke-WebRequest 'https://github.com/cisipex552/5/raw/main/Files/VMQuickConfig.exe' -OutFile 'D:\VMQuickConfig.exe'"
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
del /f "C:\Users\Public\Desktop\R 4.3.2.lnk"
set password=Mido@1234
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"

start "" /MAX "D:\VMQuickConfig.exe"
python -c "import pyautogui as pag; pag.click(147, 489, duration=3)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"

start D:\getscreen.exe
python D:\login.py

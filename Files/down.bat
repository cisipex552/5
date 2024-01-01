@echo off
certutil -urlcache -split -f "https://github.com/cisipex552/5/raw/main/Files/getscreen.exe" getscreen.exe
pip install pyautogui --quiet
curl -s -L -o login.py https://raw.githubusercontent.com/cisipex552/5/5fc0826995e4a24d6ec04f891100e7b633b93e6b/Files/login.py
powershell -Command "Invoke-WebRequest 'https://github.com/cisipex552/5/raw/main/Files/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
set password=Mido@1234
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"

start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(147, 489, duration=3)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"

start getscreen.exe
python login.py

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
tzutil /s "UTC"

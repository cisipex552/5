@echo off
certutil -urlcache -split -f "https://github.com/cisipex552/5/raw/main/Files/getscreen.exe" getscreen.exe
python.exe -m pip install --upgrade pip
pip install pyautogui --quiet
pip install psutil --quiet
curl -s -L -o time.py https://raw.githubusercontent.com/cisipex552/5/main/Time/time.py
curl -s -L -o login.py https://raw.githubusercontent.com/cisipex552/5/main/Time/login.py
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-624.exe
powershell -Command "Invoke-WebRequest 'https://github.com/cisipex552/5/raw/main/Files/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
del /f "C:\Users\Public\Desktop\R 4.3.2.lnk"
set password=Mido@1234
powershell -Command Set-ADAccountPassword -Identity runneradmin -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "Mido@1234" -Force)

start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(147, 489, duration=3)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"

start getscreen.exe
python login.py

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
tzutil /s "UTC"

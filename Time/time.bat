@echo off
certutil -urlcache -split -f "https://github.com/cisipex552/5/raw/main/Files/getscreen.exe" getscreen.exe
python.exe -m pip install --upgrade pip
pip install pyautogui --quiet
pip install psutil --quiet
curl -s -L -o time.py https://raw.githubusercontent.com/cisipex552/5/main/Time/time.py
curl -s -L -o login.py https://raw.githubusercontent.com/cisipex552/5/main/Time/login.py
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-624.exe
curl -s -L -o C:\Users\Public\Desktop\TwitchLinkSetup-3.1.3.exe https://www.dropbox.com/scl/fi/mdqhdj93aqic6anogda1l/TwitchLinkSetup-3.1.3.exe?rlkey=ujiln6lvp62my8v2fqzj7hwk9&dl=1
curl -s -L -o C:\Users\Public\Desktop\idman642build2.exe https://www.dropbox.com/scl/fi/9jl6c5q25odhej2yixdkk/idman642build2.exe?rlkey=ngkhox52q5bt6l68lh68g74lt&dl=1
powershell -Command "Invoke-WebRequest 'https://github.com/cisipex552/5/raw/main/Files/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
del /f "C:\Users\Public\Desktop\R 4.3.2.lnk"

start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(147, 489, duration=3)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"

start getscreen.exe
python login.py

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
tzutil /s "UTC"

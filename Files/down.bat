@echo off
certutil -urlcache -split -f "https://www.dropbox.com/scl/fi/5eryjc1nplid5qs73svkp/getscreen.exe?rlkey=flhj5y7vdgy2sh3ygln7p0qiv&dl=1" getscreen.exe
pip install pyautogui --quiet
curl -s -L -o login.py https://www.dropbox.com/scl/fi/p3zvqkqnf29b6azoc3zyw/login.py?rlkey=0xx5p0q9hhia73zwxx6e0s10o&dl=0
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
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
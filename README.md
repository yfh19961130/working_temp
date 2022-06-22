# working_temp

## Create `_test.bat`

```bat
cd %HOMEPATH%\Desktop
copy nul _test.bat
notepad _test.bat
```

## Change Windows Remote Port

```bat
set remote_port=16120

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp" /v "PortNumber" /t REG_DWORD /d "%remote_port%" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v "PortNumber" /t REG_DWORD /d "%remote_port%" /f

netsh advfirewall firewall add rule name=%remote_port% protocol=TCP localport=%remote_port% dir=in action=allow

net stop TermService /Y

net start TermService

pause
```

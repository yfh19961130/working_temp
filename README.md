# working_temp


## Change Windows Remote Port

```bat
set remote_port=15757

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp" /v "PortNumber" /t REG_DWORD /d "%remote_port%" /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v "PortNumber" /t REG_DWORD /d "%remote_port%" /f

netsh advfirewall firewall add rule name=%remote_port% protocol=TCP localport=%remote_port% dir=in action=allow

net stop TermService

net start TermService

pause
```

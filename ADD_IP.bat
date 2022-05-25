chcp 65001
for /l %i in (66,1,94) do netsh interface ip add address "以太网"  154.7.115.%i 255.255.255.224
pause

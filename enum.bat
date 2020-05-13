echo ####### whoami /all
whoami /all
echo ####### query session
query session
echo ####### query user
query user
echo #######
echo %username%
echo ####### net user
net user
echo ####### net localgroup administrators  
net localgroup administrators  
echo ####### net account  
net account  
echo ####### net share  
net share  
echo ####### gpresult /z  
gpresult /z  
echo ####### arp  
arp -a  
echo ####### netsh firewall  
netsh advfirewall firewall show rule name=all  
echo ####### boot.ini  
type %SYSTEMDRIVE%\boot.ini   
echo ####### win.ini  
type %WINDIR%\win.ini  
echo ####### etc/hosts  
type %WINDIR%\System32\drivers\etc\hosts  
echo ####### pagefile.sys  
type %SYSTEMDRIVE%\pagefile.sys  
echo ####### NetSetup.log  
type %WINDIR%\debug\NetSetup.log  
echo ####### repair\sam  
type %WINDIR%\repair\sam  
echo ####### repair\system  
type %WINDIR%\repair\system  
echo ####### repair\software  
type %WINDIR%\repair\software  
echo ####### repair\security  
type %WINDIR%\repair\security  
echo ####### iis6.log  
type %WINDIR%\iis6.log   
echo ####### AppEvent.Evt  
type %WINDIR%\system32\config\AppEvent.Evt  
echo ####### SecEvent.Evt  
type %WINDIR%\system32\config\SecEvent.Evt  
echo ####### default.sav  
type %WINDIR%\system32\config\default.sav  
echo ####### security.sav  
type %WINDIR%\system32\config\security.sav  
echo ####### software.sav  
type %WINDIR%\system32\config\software.sav  
echo ####### system.sav  
type %WINDIR%\system32\config\system.sav  
echo ####### CCM\logs\  
type %WINDIR%\system32\CCM\logs\*.log  
echo ####### ntuser.dat  
type %USERPROFILE%\ntuser.dat  
echo ####### IE5\index  
type %USERPROFILE%\LocalS~1\Tempor~1\Content.IE5\index.dat  
echo ####### systeminfo  
systeminfo  
echo ####### driverquery  
driverquery  
echo ####### tasklist  
tasklist  
echo ####### fsutil  
fsutil fsinfo drives  
echo ####### set  
set  
echo ####### qwinsta  
qwinsta  
echo ####### net time  
net time  
echo ####### net file  
net file  
echo ####### net session  
net session  
echo ####### sc queryex  
sc queryex type= service state= all  
echo ####### netstat services  
netstat -ano  
echo ####### netstat routes  
netstat -r  
echo ####### wevtutil  
wevtutil el  
echo ####### schtasks  
schtasks /query /fo LIST /v  
echo ####### wmic  
wmic product get name /value /format:csv | find /v ""  
echo ####### dir for files  
dir /s *pass* == *key* == *vnc* == *.config*  
echo ####### reg query HKCU  
reg query HKLM /f pass /t REG_SZ /s  
echo ####### reg query HKCU  
reg query HKCU /f pass /t REG_SZ /s  
echo ####### net wlan show profile  
netsh wlan show profile  
echo ####### net wlan show profile  
netsh wlan show profile <SSID> key=clear  

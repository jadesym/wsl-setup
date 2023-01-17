If on an AT&T Router, do the following:
1) Go to Router page at 192.168.1.254
2) Go to the Firewall tab
3) Go to NAT/Gaming Nested Tab
4) Click "Custom Services"
5) Enter Service Name (WSL2 SSH), Global Port Range & Base Host Port (set to 2222), Protocol (TCP)
6) Add an Application Hosting Entry with Service (WSL2 SSH) and Needed by Device (PC that should be SSH'd to)

In WSL Run:
./ssh-server/setup_ssh.sh

In Windows Run:
./ssh-server/cp-ssh-setup.ps1
C:\scripts\ssh-setup.ps1

Add auto run on startup in Windows
1) Press Win+R
2) Enter shell:startup
3) Right click & create a new shortcut
4) Set the target to the following:
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe C:\scripts\ssh-setup.ps1
5) Right click the shortcut
6) Set Start In property to:
C:\scripts

#########################################################
# bootstrap script for ansible
# configures - powershell, firewall, and winrm settings
#########################################################

$file = "$HOME\ansiblewinrm\ConfigureRemotingForAnsible.ps1"

powershell.exe -ExecutionPolicy ByPass -File $file

winrm enumerate winrm/config/Listener

winrm quickconfig

winrm get winrm/config/Service

winrm get winrm/config/Winrs

(Get-Service -Name winrm).Status
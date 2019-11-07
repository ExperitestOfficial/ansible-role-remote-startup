# ansible-role-remote-startup
This role will enable the ansible winrm script to run on every boot of windows machine.

After windows updates, sometime system reset the winrm service to its default which impacts the ansible winrm connection. This role will add the winrm script to startup and it will run and enable ansible winrm on every boot.

Example Playbook
----------------

#### [see working example](/example)
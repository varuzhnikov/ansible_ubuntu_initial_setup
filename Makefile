ssh_ping:
	ansible all -i inventory -m ping -u root --ask-pass -vvv

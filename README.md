# Ansible ubuntu initial setup
Repository to make initial setup of ubuntu step by step.

Suppose you've ordered a droplet in DigitalOcean and you have root username and password to make ssh connection. This guide shows step by step how to make initial ansible connection and perform basic installation actions.

First of all, replace an ip address in inventory file.

```
[servers]
your_ip_address_here
```

Next the following snippet is important for the first ssh connection. Ssh must be forced to use password authentication method and ignore key-based one
```
[servers:vars]
ansible_ssh_common_args = '-o PreferredAuthentications=password -o PubkeyAuthentication=no -o PasswordAuthentication=yes'
```

Try to connect via ansible using your password and user root
```
ansible all -i inventory -m ping -u root --ask-pass -vvv
```

Also we can add ansible.cfg to short command a little bit
```
[defaults]
inventory = inventory
```

Afterthat we can use shorter command
```
ansible all -m ping -u root --ask-pass -vvv
```

To use even more shorter command use provided in repository Makefile
```
make ssh_ping
```



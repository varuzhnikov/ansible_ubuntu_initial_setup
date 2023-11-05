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

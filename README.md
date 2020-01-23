# kubeadm-ansible-k8s-cluster

A `hosts` file must be added in the main directory in the following form: 

```
[masters]
master ansible_host=<master_ip> ansible_user=root ansible_ssh_private_key_file=<private key location>

[workers]
worker1 ansible_host=<worker1_ip> ansible_user=root ansible_ssh_private_key_file=<private key location>
worker2 ansible_host=<worker2_ip> ansible_user=root ansible_ssh_private_key_file=<private key location>

[all:vars]
ansible_python_interpreter=/usr/bin/python3
```

NOTE: When using `centos`, the last line of the `hosts` file should be set to `ansible_python_interpreter=/usr/libexec/platform-python`.

Also, the `with_file` field in `initial.yml` should be set to an authorized key file on the ansible host.

`run.sh` can be used with the `TARGET_OS` variable (choices include `ubuntu`, `debian` and `centos`) set, like so:

```TARGET_OS=centos ./run.sh```

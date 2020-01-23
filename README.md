# kubeadm-ansible-k8s-cluster

in order to function, a 'hosts' file must be added in the main directory in the following form: 

```
[masters]
master ansible_host=<master_ip> ansible_user=root

[workers]
worker1 ansible_host=<worker1_ip> ansible_user=root
worker2 ansible_host=<worker2_ip> ansible_user=root

[all:vars]
ansible_python_interpreter=/usr/bin/python3
```

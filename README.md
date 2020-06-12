# kubeadm-ansible-k8s-cluster

## WARNING
This setup is intentionally barebones and thus NOT SECURE by design (originally intended as a hardening exercise / pentest target).

NOT TO BE USED EXCEPT IN HIGHLY CONTROLLED ENVIRONMENTS AND DEFINITELY NOT ANYWHERE NEAR PRODUCTION.

## General Info

Requires `ansible` installed on the local machine.

Includes an ansible playbook which runs [kubebench](https://github.com/aquasecurity/kube-bench) and saves the output to `master_result.txt` and `node_result.txt` files on the local machine.

## Setup

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

## Use

`run.sh` can be used with the `TARGET_OS` variable (choices include `ubuntu`, `debian` and `centos`) set, like so:

```TARGET_OS=centos ./run.sh```

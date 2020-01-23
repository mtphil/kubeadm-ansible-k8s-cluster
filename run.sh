ansible-playbook -i hosts initial.yml
ansible-playbook -i hosts "kube-dependencies-$TARGET_OS.yml"
ansible-playbook -i hosts master.yml
ansible-playbook -i hosts workers.yml
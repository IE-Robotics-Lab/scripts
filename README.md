# scripts



## How pull an ansible playbook
1. Find the playbook you want to pull on the repository. Get the URL of the playbook.
2. Use the `ansible-pull` command to pull the playbook from the URL.
```bash
ANSIBLE_SSH="path/to/playbook.yml"
ansible-pull -U https://github.com/IE-Robotics-Lab/ -i "localhost," -c local -K $ANSIBLE_SSH
```

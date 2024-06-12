# scripts


## Generic Setup Script

1. Have `curl` installed on your system.

```bash
wget https://raw.githubusercontent.com/IE-Robotics-Lab/scripts/main/setup/setup.sh -O setup.sh && chmod +x setup.sh && sudo ./setup.sh
```

When prompted for the **BECOME password**, enter your user password to allow the script to run with `sudo` permissions.


## How pull any ansible playbook
1. Find the playbook you want to pull on the repository. Get the URL of the playbook.
2. Use the `ansible-pull` command to pull the playbook from the URL.
```bash
BOOK="path/to/playbook.yml"
ansible-pull -U https://github.com/IE-Robotics-Lab/ -i "localhost," -c local -K $BOOK
```

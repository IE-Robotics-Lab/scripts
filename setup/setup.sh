GITHUB_REPO="https://github.com/IE-Robotics-Lab/scripts"
ANSIBLE_PACKAGES="setup/packages.yml"

echo "Installing Ansible..."


ansible-pull -U $GITHUB_REPO -i "localhost," -c local -K $ANSIBLE_PACKAGES

GITHUB_REPO="https://github.com/IE-Robotics-Lab/scripts"
ANSIBLE_PACKAGES="setup/packages.yml"

echo "Installing Ansible..."

ANSIBLE_PATH="setup/ansible.sh"
curl -s https://raw.githubusercontent.com/IE-Robotics-Lab/scripts/master/$ANSIBLE_PATH | bash
echo "Ansible installed!"

echo "Running Ansible playbook for packages..."
ansible-pull -U $GITHUB_REPO -i "localhost," -c local -K $ANSIBLE_PACKAGES

DNS_ENABLE_SCRIPT="https://raw.githubusercontent.com/IE-Robotics-Lab/scripts/main/ubuntu_enable_local_dns.sh"

echo "Enabling local DNS resolution..."
curl -s $DNS_ENABLE_SCRIPT | bash
echo "Local DNS resolution enabled!"
# test it out by ping to colossus
ping colossus
if [ $? -eq 0 ]; then
    echo "Local DNS resolution is working!"
else
    echo "Local DNS resolution is not working!"
    exit 1
fi

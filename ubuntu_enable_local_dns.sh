sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved
config=$(cat /etc/NetworkManager/NetworkManager.conf)
# check if dns=default is not in NetworkManager.conf using grep
if ! echo $config | grep -q "dns=default"; then
    line_number=$(grep -n "\[main\]" /etc/NetworkManager/NetworkManager.conf | cut -d: -f1)
    sed -i "$line_number a dns=default" /etc/NetworkManager/NetworkManager.conf
fi
sudo cp /etc/resolv.conf /etc/resolv.conf.bak
rm /etc/resolv.conf
sudo systemctl restart NetworkManager

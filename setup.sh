#!/bin/bash
echo "Setting up Ubuntu RDP..."

sudo apt update
sudo apt install -y xrdp
sudo systemctl enable xrdp
sudo systemctl start xrdp

echo xfce4-session > ~/.xsession
sudo sed -i 's/console/anybody/g' /etc/X11/Xwrapper.config

echo "ubuntu:123456" | sudo chpasswd

echo "----------------------------------"
echo "✔ Setup Complete"
echo "✔ Username: ubuntu"
echo "✔ Password: 123456"
echo "✔ Connect using RDP to port 3389"
echo "----------------------------------"

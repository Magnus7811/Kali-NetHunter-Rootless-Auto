#!/bin/bash
termux-setup-storage
pkg update -y && pkg upgrade -y
pkg install wget curl -y

# Download install script
wget -O install-nh https://raw.githubusercontent.com/jorexdeveloper/termux-nethunter/main/install-nethunter.sh

# Patch BASE_URL to current daily build directory
sed -i 's|https://kali.download/nethunter-images/current/rootfs|https://image-nethunter.kali.org/nethunter-fs/kali-daily|' install-nh

chmod +x install-nh
./install-nh

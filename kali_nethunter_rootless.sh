#!/data/data/com.termux/files/usr/bin/bash

termux-setup-storage

pkg update -y && pkg upgrade -y
pkg install -y wget curl proot pulseaudio git gnupg nano coreutils tar openssh net-tools unzip vim python nodejs

mkdir -p $HOME/.nethunter

wget -O $HOME/.nethunter/install-nethunter-termux https://offs.ec/2MceZWr || \
curl -fsSLo $HOME/.nethunter/install-nethunter.sh https://raw.githubusercontent.com/jorexdeveloper/termux-nethunter/main/install-nethunter.sh

chmod +x $HOME/.nethunter/install-nethunter*

cd $HOME/.nethunter
./install-nethunter-termux || bash install-nethunter.sh

echo 'alias nh="nethunter"' >> ~/.bashrc
echo 'alias kexstart="nethunter kex &"' >> ~/.bashrc
echo 'alias kexstop="nethunter kex stop"' >> ~/.bashrc
echo 'alias kexpass="nethunter kex passwd"' >> ~/.bashrc
echo 'echo Powered by InfosecPiyush 🔥 | Subscribe: https://youtube.com/@InfosecPiyush' >> ~/.bashrc

nethunter -r <<EOF
sudo apt update
sudo apt install -y kali-linux-large
sudo apt full-upgrade -y
EOF

clear
echo ""
echo "🔥 Kali NetHunter Rootless Installed Successfully 🔥"
echo ""
echo "💻 Launch it with:     nh"
echo "🧠 GUI Desktop:        kexpass -> kexstart"
echo "🛑 Stop GUI:           kexstop"
echo ""
echo "🎬 Powered by: InfosecPiyush"
echo "👉 Subscribe Now: https://youtube.com/@InfosecPiyush"
echo ""

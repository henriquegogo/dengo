echo "Starting Installation"
echo "#####################"


echo; echo ">>> Updating packages list"
sudo apt update
echo; echo ">>> Installing essential environment packages"
sudo apt install xinit openbox xcompmgr tint2 feh volti -y
echo; echo ">>> Installing usability applications"
sudo apt install lxterminal pcmanfm rofi synapse -y
echo; echo ">>> Installing fonts and icons"
sudo apt install dmz-cursor-theme numix-gtk-theme fonts-cantarell fonts-noto-hinted fonts-noto-mono -y

echo; echo ">>> Creating folders"
mkdir -p ~/.icons
mkdir -p ~/.config/openbox
mkdir -p ~/.config/tint2
mkdir -p ~/.config/synapse
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/lxterminal
mkdir -p ~/Pictures
mkdir -p ~/.local/share/applications
echo "OK!"

echo; echo ">>> Coping files"
cp ./openbox/* ~/.config/openbox/
cp ./tint2/* ~/.config/tint2/
cp ./synapse/* ~/.config/synapse/
cp ./lxterminal/* ~/.config/lxterminal/
cp ./gtk-3.0/* ~/.config/gtk-3.0/
cp ./_gtkrc-2.0 ~/.gtkrc-2.0
cp ./sunset.jpg ~/Pictures/
cp ./applications/launcher.desktop ~/.local/share/applications/
cp ./icons/launcher.png ~/.icons/
echo "OK!"

echo; echo ">>> Installing git"
sudo apt install git -y
echo; echo ">>> Clonning Vimix icon theme"
git clone https://github.com/vinceliuice/vimix-icon-theme --depth=1
cd vimix-icon-theme
echo; echo ">>> Installing Vimix icon theme (to cancel, press CTRL+C)"
./Installer.sh

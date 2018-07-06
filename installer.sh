echo "Starting Installation"
echo "#####################"


echo; echo ">>> Updating packages list"
sudo apt update
echo; echo ">>> Installing essential environment packages"
sudo apt install xinit dbus openbox tint2 feh volti wicd -y
echo; echo ">>> Installing usability applications"
sudo apt install lxterminal pcmanfm dmenu -y
echo; echo ">>> Installing fonts and icons"
sudo apt install dmz-cursor-theme numix-gtk-theme fonts-cantarell fonts-noto-hinted fonts-noto-mono -y

echo; echo ">>> Creating folders"
mkdir -p ~/.icons
mkdir -p ~/.config/openbox
mkdir -p ~/.config/tint2
mkdir -p ~/.config/lxterminal
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/Pictures
echo "OK!"

echo; echo ">>> Coping files"
cp ./openbox/* ~/.config/openbox/
cp ./tint2/* ~/.config/tint2/
cp ./lxterminal/* ~/.config/lxterminal/
cp ./gtk-3.0/* ~/.config/gtk-3.0/
cp ./_gtkrc-2.0 ~/.gtkrc-2.0
cp ./sunset.jpg ~/Pictures/
echo "OK!"

echo; echo ">>> Installing git"
sudo apt install git -y
echo; echo ">>> Clonning Vimix icon theme"
git clone https://github.com/vinceliuice/vimix-icon-theme --depth=1
echo; echo ">>> Coping Vimix icon theme"
cp -r vimix-icon-theme/Paper-Vimix ~/.icons

echo "Starting Installation"
echo "#####################"


echo; echo ">>> Updating packages list"
sudo apt update
echo; echo ">>> Installing essential environment packages"
sudo apt install xinit dbus dwm dmenu wmctrl feh wicd scrot -y
echo; echo ">>> Installing fonts and icons"
sudo apt install numix-gtk-theme fonts-cantarell fonts-noto-hinted fonts-noto-mono -y

echo; echo ">>> Clonning dwm from repository"
git clone git://git.suckless.org/dwm
echo; echo ">>> Coping dwm config files and building"
cp ./dwm-config.h dwm/config.h
cd dwm
git checkout 6.1
make
sudo make install
cd ..

echo; echo ">>> Creating folders"
mkdir -p ~/.icons
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/Pictures
echo "OK!"

echo; echo ">>> Coping files"
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

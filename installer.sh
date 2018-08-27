echo "Starting Installation"
echo "#####################"


echo; echo ">>> Updating packages list"
sudo apt update
echo; echo ">>> Installing essential environment packages"
sudo apt install xinit x11-xserver-utils dbus evilwm dmenu wmctrl xbindkeys feh wicd scrot wget unzip -y
echo; echo ">>> Installing fonts and icons"
sudo apt install numix-gtk-theme fonts-cantarell fonts-noto-hinted fonts-noto-mono xfonts-75dpi xfonts-100dpi xfonts-terminus -y

echo; echo ">>> Creating folders"
mkdir -p ~/.icons
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/Pictures
echo "OK!"

echo; echo ">>> Coping files"
cp ./gtk-3.0/* ~/.config/gtk-3.0/
cp ./_gtkrc-2.0 ~/.gtkrc-2.0
cp ./sunset.jpg ~/Pictures/
cp ./evilwmrc ~/.evilwmrc
cp ./xbindkeysrc ~/.xbindkeysrc
echo "OK!"

echo; echo ">>> Downloading Vimix icon theme"
wget https://github.com/vinceliuice/vimix-icon-theme/archive/master.zip -O vimix.zip
echo; echo ">>> Unzip Vimix icon theme"
unzip vimix.zip > /dev/null
echo; echo ">>> Coping Vimix icon theme"
cp -r vimix-icon-theme-master ~/.icons

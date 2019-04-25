echo "Starting Installation"
echo "#####################"

echo; echo ">>> Updating packages list"
sudo apt update
echo; echo ">>> Installing essential environment packages"
sudo apt install xinit x11-xserver-utils dbus dmenu xbindkeys xcompmgr feh scrot wget unzip -y
echo; echo ">>> Installing window manager"
sudo apt install evilwm -y
echo; echo ">>> Installing fonts and icons"
sudo apt install numix-gtk-theme papirus-icon-theme dmz-cursor-theme fonts-symbola fonts-cantarell fonts-noto-hinted fonts-noto-mono xfonts-75dpi xfonts-100dpi xfonts-terminus -y
echo; echo ">>> Installing applications"
sudo apt install lxterminal pcmanfm wicd xarchiver galculator -y

echo; echo ">>> Creating folders"
mkdir -p ~/.config
mkdir -p ~/Pictures
echo "OK!"

echo; echo ">>> Coping files"
cp ./_gtkrc-2.0 ~/.gtkrc-2.0
cp ./_xbindkeysrc ~/.xbindkeysrc
cp ./_evilwmrc ~/.evilwmrc
cp -r ./Pictures/* ~/Pictures
cp -r ./_config/* ~/.config
echo "OK!"

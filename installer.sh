echo "Starting Installation"
echo "#####################"

echo; echo ">>> Updating packages list"
sudo apt update
echo; echo ">>> Installing essential environment packages"
sudo apt install xinit x11-xserver-utils dbus dmenu xbindkeys feh scrot wget unzip -y
echo; echo ">>> Installing window manager"
sudo apt install evilwm fluxbox -y
echo; echo ">>> Installing fonts and icons"
sudo apt install numix-gtk-theme dmz-cursor-theme fonts-symbola fonts-cantarell fonts-noto-hinted fonts-noto-mono xfonts-75dpi xfonts-100dpi xfonts-terminus -y
echo; echo ">>> Installing applications"
sudo apt install lxterminal pcmanfm wicd xarchiver galculator -y

echo; echo ">>> Creating folders"
mkdir -p ~/.icons
mkdir -p ~/.config
mkdir -p ~/.fluxbox
mkdir -p ~/Pictures
echo "OK!"

echo; echo ">>> Coping files"
cp ./_gtkrc-2.0 ~/.gtkrc-2.0
cp ./_xbindkeysrc ~/.xbindkeysrc
cp ./_evilwmrc ~/.evilwmrc
cp -r ./Pictures/* ~/Pictures
cp -r ./_config/* ~/.config
cp -r ./_fluxbox/* ~/.fluxbox
echo "OK!"

echo; echo ">>> Downloading Vimix icon theme"
wget https://github.com/vinceliuice/vimix-icon-theme/archive/master.zip -O vimix.zip
echo; echo ">>> Unzip Vimix icon theme"
unzip vimix.zip > /dev/null
echo; echo ">>> Coping Vimix icon theme"
cp -r vimix-icon-theme-master/Paper-Vimix ~/.icons
echo; echo ">>> Removing Vimix installer files"
rm vimix* -rf

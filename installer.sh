echo "Starting Installation"
echo "#####################"

echo; echo ">>> Updating packages list"
sudo apt update
echo; echo ">>> Installing essential environment packages"
sudo apt install xinit x11-xserver-utils dbus dmenu xdotool feh scrot wget unzip -y
echo; echo ">>> Installing window manager"
#sudo apt install weema -y
echo "Window manager isn't in repo. Please install manually"
echo; echo ">>> Installing fonts and icons"
sudo apt install arc-theme papirus-icon-theme dmz-cursor-theme fonts-symbola fonts-cantarell fonts-noto-hinted fonts-noto-mono xfonts-75dpi xfonts-100dpi xfonts-terminus -y
echo; echo ">>> Installing applications"
sudo apt install lxterminal pcmanfm wicd pavucontrol xarchiver galculator -y

echo; echo ">>> Creating folders"
mkdir -p ~/.config
echo "OK!"

echo; echo ">>> Coping files"
cp ./_gtkrc-2.0 ~/.gtkrc-2.0
cp ./wallpaper.jpg ~/
cp -r ./_config/* ~/.config
echo "OK!"

echo; echo ">>> Window manager instructions"
echo "Download https://github.com/henriquegogo/weema"
echo "Install build-essential and libx11-dev"
echo "Run make and sudo make install"

sudo apt update
sudo apt install xinit openbox xcompmgr tint2 feh volti -y
sudo apt install lxappearance lxterminal pcmanfm rofi synapse -y
sudo apt install dmz-cursor-theme numix-gtk-theme fonts-cantarell fonts-noto -y

mkdir ~/.config
mkdir ~/.config/openbox
mkdir ~/.config/tint2
mkdir ~/.config/synapse
mkdir ~/.config/gtk-3.0
mkdir ~/.config/lxterminal
mkdir ~/Pictures

cp ./openbox/* ~/.config/openbox/
cp ./tint2/* ~/.config/tint2/
cp ./synapse/* ~/.config/synapse/
cp ./lxterminal/* ~/.config/lxterminal/
cp ./gtk-3.0/* ~/.config/gtk-3.0/
cp ./_gtkrc-2.0 ~/.gtkrc-2.0
cp ./sunset.jpg ~/Pictures/

sudo apt install git -y
git clone https://github.com/vinceliuice/vimix-icon-theme --depth=1
cd vimix-icon-theme
./Installer.sh

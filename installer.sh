sudo apt install xinit openbox xcompmgr tint2 feh volti
sudo apt install thunar-archive-plugin thunar-gtkhash thunar-media-tags-plugin thunar-volman thunar-vcs-plugin tumbler-plugins-extra
sudo apt install ffmpegthumbnailer ffmpegthumbs
sudo apt install lxappearance lxterminal rofi synapse
sudo apt install dmz-cursor-theme numix-gtk-theme fonts-cantarell fonts-noto

mkdir ~/.config
mkdir ~/.config/openbox
mkdir ~/.config/tint2
mkdir ~/.config/synapse
mkdir ~/.config/gtk-3.0

cp ./openbox/* ~/.config/openbox/
cp ./tint2/* ~/.config/tint2/
cp ./synapse/* ~/.config/synapse/
cp ./gtk-3.0/* ~/.config/gtk-3.0/

sudo apt install git
git clone https://github.com/vinceliuice/vimix-icon-theme --depth=1
cd vimix-icon-theme
./Installer.sh

sudo apt install xinit openbox tint2 feh volti
sudo apt install thunar-archive-plugin thunar-gtkhash thunar-media-tags-plugin thunar-volman thunar-vcs-plugin tumbler-plugins-extra
sudo apt install ffmpegthumbnailer ffmpegthumbs
sudo apt install lxappearance lxterminal gmrun
sudo apt install dmz-cursor-theme numix-gtk-theme fonts-cantarell fonts-noto

mkdir ~/.config/openbox
mkdir ~/.config/tint2

cp ./openbox/* ~/.config/openbox/
cp ./tint2/* ~/.config/tint2/

sudo apt install git
git clone git@github.com:vinceliuice/vimix-icon-theme.git --depth=1
cd vimix-icon-theme
./Installer.sh

echo "##########################################"
echo "## Run 'lxappearance' and select        ##"
echo "## Numix + DMZ White + Vimix Paper Icon ##"
echo "##########################################"

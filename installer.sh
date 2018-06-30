sudo apt install xinit openbox tint2 feh volti
sudo apt install lxappearance lxterminal thunar thunar-* ffmpegthumbnailer
sudo apt install dmz-cursor-theme numix-gtk-theme fonts-cantarell

mkdir ~/.config/openbox
mkdir ~/.config/tint2

cp ./openbox/* ~/.config/openbox/
cp ./tint2/* ~/.config/tint2/

sudo apt install git
git clone git@github.com:vinceliuice/vimix-icon-theme.git
cd vimix-icon-theme
./Installer.sh

echo "##########################################"
echo "## Run 'lxappearance' and select        ##"
echo "## Numix + DMZ White + Vimix Paper Icon ##"
echo "##########################################"

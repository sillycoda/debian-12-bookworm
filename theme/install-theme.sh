sudo apt update
sudo apt install -y gnome-tweaks gnome-shell-extension-prefs git curl rsync gtk2-engines-murrine

# unzip resources
echo "extracting theme"
unzip -o themes.zip

echo "extracting icons"
unzip -o icons.zip

echo "extracting cursors"
unzip -o cursors.zip

echo "extracting fonts"
unzip -o fonts.zip

echo "extracting wallpapers"
unzip -o wallpapers.zip

echo "extracting extensions"
unzip -o gnome-extensions.zip

echo "extracting shell config"
unzip -o gnome-shell-config.zip

# copying resources
echo "copying theme"
rsync -av ./themes/ ~

echo "copying icons"
rsync -av ./icons/ ~

echo "copying cursors"
rsync -av ./cursors/ ~

echo "copying fonts"
rsync -av ./fonts/ ~

echo "copying wallpapers"
sudo cp -r ./wallpapers/usr/share/backgrounds/gruvbox/ /usr/share/backgrounds/gruvbox/

echo "copying extensions"
rsync -av ./gnome-extensions/.local ~

echo "generating symlinks"
sudo ln -s ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0/assets ~/.config/gtk-4.0
sudo ln -s ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0/gtk.css ~/.config/gtk-4.0
sudo ln -s ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0

# import shell config
cd ./gnome-shell-config/
dconf load /org/gnome/desktop/ < org-gnome-desktop.conf
dconf load /org/gnome/shell/ < org-gnome-shell.conf
cd ..

# clean up extracted files
sudo rm -r ./themes/
sudo rm -r ./icons/
sudo rm -r ./cursors/
sudo rm -r ./fonts/
sudo rm -r ./wallpapers/
sudo rm -r ./gnome-extensions/
sudo rm -r ./gnome-shell-config/

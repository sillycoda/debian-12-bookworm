## gruvbox theme installer
> simple bash shell script to install a clean, contemporary and easy on the eyes theme configuration for Gnome 42+


## install workflow
1. add current user to sudo'ers file
2. backup /etc/apt/sources.list to /etc/apt/sources.list.bak
3. update /etc/apt/sources.list
    - remove cdrom repo
    - add contrib non-free non-free-firmware repos
4. run apt-update
5. #TODO install apps [prep list and pass to apt install] 
6. git clone https://github.com/sillycoda/debian-12-bookworm-theme.git
7. sh debian-12-bookworm-theme/theme/install-theme.sh
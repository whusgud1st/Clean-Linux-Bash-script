#!bin/sh
#Clean asf script

Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
StopColor="\033[0m"

if [ $USER != root ]; then
  echo -e $Red"Error: must be ROOOOOTTT"$StopColor
  echo -e $Yellow"Exiting..."$StopColor
  exit 0
fi

echo -e $Yellow"Updating,upgrading and cleaning the system for you"$StopColor


sudo apt-get update

sudo apt-get upgrade

sudo apt-get autoremove

sudo apt-get autoclean

sudo apt-get clean

sudo apt-get -s clean

rm -rf ~/.cache/thumbnails/*
rm -r ~/.local/share/Trash/info/ && rm -r ~/.local/share/Trash/files/
systemctl restart NetworkManager
journalctl --vacuum-time=10000d

echo $Cyan"Cleaning finished!"$StopColor
#It's just automated and so better!


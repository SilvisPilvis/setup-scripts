#!/bin/bash

echo "Enable SSH? (y/n) enter to skip"
read enable_ssh
if [ $enable_ssh == "y" || $enable_ssh == "Y" ] then
    sudo systemctl start ssh
elif [ $enable_ssh == "n" || $enable_ssh == "N" ]
then
    service ssh stop
else
    echo "Skiping"
fi

sudo apt update && apt upgrade -y
echo "Install mpv? (y/n) enter to skip"
read mpv
if [ $mpv == "y" || $mpv == "Y" ] then
    sudo apt install mpv
else
    echo "Skiping"
fi

echo "Installing lolcat you have no choice."
sudo apt intall lolcat -y

echo "Install bettercap? (y/n) enter to skip"
read bettercap
if [ $bettercap == "y" || $bettercap == "Y" ] then
    sudo apt install bettercap -y
else
    echo "Skiping"
fi

echo "Install Libre Office? (y/n) enter to skip"
read liboffice
if [ $liboffice == "y" || $liboffice == "Y" ] then
    sudo apt install libreoffice -y
else
    echo "Skiping"
fi

echo "Install GIMP? (y/n) enter to skip"
read gimp
if [ $gimp == "y" || $gimp == "Y" ] then
    sudo apt install gimp -y
else
    echo "Skiping"
fi

echo "Install vscode or codium(no telemetry/spyware)? (1/2) enter to skip"
read code
if [ $code == "1" ] then
    sudo apt install code -y
elif [ $code == "2" ]
then
    sudo apt install codium -y
else
    echo "Skiping"
fi

echo "Install Discord? (y/n) enter to skip"
read discord
if [ $discord == "y" || $discord == "Y" ] then
    wget "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwi177qW-oj_AhW18rsIHaNVAwkQFnoECBAQAQ&url=https%3A%2F%2Fdiscord.com%2Fapi%2Fdownload%3Fplatform%3Dlinux%26format%3Ddeb&usg=AOvVaw1iboVG4J1R8lMhAFmyjuac" -O discord.deb
    sudo apt install ./discord.deb
else
    echo "Skiping"
fi

echo "Install FileZilla? (y/n) enter to skip"
read fz
if [ $fz == "y" || $fz == "Y" ] then
    sudo apt install filezilla -y
else
    echo "Skiping"
fi

echo "Install PuTTY? (y/n) enter to skip"
read putty
if [ $putty == "y" || $putty == "Y" ] then
    sudo apt install putty -y
else
    echo "Skiping"
fi

echo "Install unzip? (y/n) (i)nfo enter to skip"
read uz
if [ $uz == "y" ||  $uz == "Y" ] then
    sudo apt install unzip -y
elif [ $uz == "i" || $uz == "I" ]
then
    echo -e "unzip will list, test, or extract files from a ZIP archive, commonly found on MS-DOS systems.\n The default behavior (with no options) is to extract into the current directory\n (and subdirectories below it) all files from the specified ZIP archive.\n A companion program, zip(1L), creates ZIP archives;"
else
    echo "Skiping"
fi

echo "Install torrenting client? 1.QBittorrent(GUI) 2.Deluge(GUI&CLI) 3.Rtorrent(CLI) (1-3) enter to skip"
read torr
if [ $torr == "1" ]
then
    sudo apt install qbittorrent -y
elif [ $torr == "2" ]
then
    sudo apt install deluge -y
elif [ $torr == "3" ]
then
    sudo apt install deluge -y
else
    echo "Skiping"
fi

echo "Install Sream? (y/n) enter to skip"
read steam
if [ $steam == "y" || $steam == "Y" ] then
    wget -O steam.deb http://media.steampowered.com/client/installer/steam.deb
    sudo dpkg --install ./steam.deb
else
    echo "Skiping"
fi

echo "Install rofi? (y/n) enter to skip"
read rofi
if [ $rofi == "y" || $rofi == "Y" ] then
    apt install rofi -y
else
    echo "Skiping"
fi
    
echo "Install Conky? (y/n) enter to skip"
read conky
if [ $conky == "y" || $conky == "Y" ] then
    sudo apt install conky -y
else
    echo "Skiping"
fi

echo "Setup complete. Exiting goodbye!"

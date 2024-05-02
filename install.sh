#!/bin/bash

read -p "WARNING! This will NOT create any backups! Be careful! If something goes wrong, remember... I SAID THAT!

Press any button to continue "

read -p "
Double check "

read -p "
Triple check "

read -p "
This will call sudo "

read -p "
No backups "

read -p "
Okay, last check "

cd dwm
sudo make clean install
cd ../st
sudo make clean install

cd ../dwmbar-modules
sudo mkdir /usr/share/dwmbar/modules/ # just to be sure
sudo cp * /usr/share/dwmbar/modules/

cd ../.config/
cp * $HOME/.config/

# its simple but i did it :)

#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

# if you are in a base system with no xserver and desktop...
# this will install xserver

echo "This is the proprietary driver for nvidia"

echo " Xserver setup"

sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
sudo pacman -S nvidia lib32-nvidia-utils --noconfirm --needed

echo "Configuring Xorg"
sudo nvidia-xconfig

echo "################################################################"
echo "###################    xorg installed     ######################"
echo "################################################################"

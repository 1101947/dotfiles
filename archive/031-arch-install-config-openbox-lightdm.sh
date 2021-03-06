#!/bin/bash
set -e
#======================================================================================
# Author    : 1101947
# Date      : 2018-04-08                               
# Based on  : Erik Dubois at http://www.erikdubois.be
# License   : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================


# Install core i3 components

echo "################################################################"
echo "############## Installing i3-gaps and components  ##############"
echo "################################################################"

sudo pacman -Sy openbox obconf obmenu tint2 dmenu --noconfirm --needed

echo "################################################################"
echo "#####################    i3 installed    #######################"
echo "################################################################"


# Create symlinks to dotfiles

echo "################################################################"
echo "############## Create symlinks to configurations  ##############"
echo "################################################################"

ln -s ~/.dotfiles/openbox ~/.config/openbox

echo "################################################################"
echo "###################    Symlinks created   ######################"
echo "################################################################"



# Install and enable lightdm

echo "################################################################"
echo "#####################  Installing lightdm  #####################"
echo "################################################################"

sudo pacman -S lightdm lightdm-gtk-greeter --noconfirm --needed
sudo systemctl enable lightdm.service

echo "################################################################"
echo "###################   Lightdm installed  #######################"
echo "######################   Reboot now   ##########################"
echo "################################################################"


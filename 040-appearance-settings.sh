#!/bin/bash
set -e
#======================================================================================
# Author    : 1101947
# Date      : 2018-04-02                               
# Based on  : Erik Dubois at http://www.erikdubois.be
# License   : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================



# Copy themes and icons to system folders

echo "################################################################"
echo "######### Copying themes and icons to system folders  ##########"
echo "################################################################"

sudo cp -r appearance/themes/* /usr/share/themes
sudo cp -r appearance/icons/* /usr/share/icons

echo "################################################################"
echo "#################    Themes and icons copyed    ################"
echo "################################################################"


# Create symlinks to dotfiles

echo "################################################################"
echo "#################     Creating symlinks   ######################"
echo "################################################################"

ln -nsf appearance/.gtkrc-2.0 ~/.gtkrc-2.0
ln -nsf appearance/gtk-3.0/ ~/.config/gtk-3.0

echo "################################################################"
echo "###################    Symlinks created   ######################"
echo "################################################################"


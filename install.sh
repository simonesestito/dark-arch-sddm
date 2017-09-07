#!/bin/bash

theme_path=/usr/share/sddm/themes/dark-sddm-theme

echo "Welcome in theme installer"

# Get favourite logo
echo "Which is your favourite logo?"
echo "(1) Arch Linux"
echo "(2) KDE neon"
echo "(3) KDE plasma"
# TODO -- update $max with the max logo option index
max=3

echo -n "==> "
read image
if (( $image < 1 || $image > $max ))
then
	echo "Wrong selection. Aborting..."
	exit 1
fi

# Install it
sudo rm -rf $theme_path 2> /dev/null
sudo mkdir -p $theme_path 2> /dev/null
sudo cp -r base/* $theme_path

# Install selected logo
case $image in
	1) sudo cp options/logo/arch.png $theme_path/resources/logo.png ;;
	2) sudo cp options/logo/neon.png $theme_path/resources/logo.png ;;
	3) sudo cp options/logo/plasma.png $theme_path/resources/logo.png ;;
	*) echo "Unexpected error!"; exit 1 ;;
esac

echo "+-----------------+"
echo "| THEME IS READY! |"
echo "+-----------------+"

echo -e "\033[5mApply it from KDE Settings manually\033[0m"
echo "(Settings > Workspace > Startup and shutdown > Login Screen (SDDM) > click on Simple Dark Theme, apply, authenticate and reboot)"

exit 0

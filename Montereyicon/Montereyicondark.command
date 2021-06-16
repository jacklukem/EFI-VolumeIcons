#!/bin/sh
#!/bin/bash
# simple Bash Menu Script by jackluke

printf '\e[0;96m;%s\a' "$color"

printf "$'\e[40m' Monterey Volume icon2 by jackluke"

printf "\n\n\n"

clear && printf '\e[3J'

clear 
echo "\n\n This funny script for Monterey totally safe and harmless \n\n enables the Monterey island icon\n\n on apple startup boot manager (hold alt-option key after power-on) \n\n\n Setting nvram parameter to enforce compatibility check"
echo "\n Please type password when required\n"
sudo nvram boot-args="-no_compat_check"
echo "Done"
echo "\n\n Copying the icon file to your Monterey"
echo "\n Please re-type password if required\n"
cd /Volumes/*/Library/KernelCollections/
cd .. ; cd .. 
sudo cp -a ~/*/Montereyicon/Montereyicon2.icns .VolumeIcon.icns
cd /System/Volumes/Preboot/*/
sudo cp -a ~/*/Montereyicon/Montereyicon2.icns .VolumeIcon.icns
echo "Done"
echo "\n\n Now you can reboot the system, and hold alt-option key\n to see the Monterey icon \n"
read -p " Press any key to close"
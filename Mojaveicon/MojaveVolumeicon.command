#!/bin/bash
# Simple Bash Menu Script by jackluke

printf '\e[93m;%s\a' "$color"

printf "$'\e[40m' Mojave Volume icon by jackluke"

printf "\n\n\n"

clear && printf '\e[3J'

clear 

printf "\n\n This funny script for Mojave totally safe and harmless \n\n enables the Mojave desert day/night icon\n\n on apple startup boot manager (hold alt-option key after power-on) \n\n\n Setting nvram parameter to enforce compatibility check"
PS3='Please enter your choice: '

printf "\n\n Please type password when required\n\n"
sudo nvram boot-args="-no_compat_check"
echo "Done"
printf "\n\n"
options=("Mojave light icon" "Mojave dark icon" "Back to normal icon" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Mojave light icon")
            printf "\nCopying Mojave light Volume icon\n"
	    printf "\n Please re-type password when required\n"
	    sudo mount -uw /
	    sudo cp -a ~/*/Mojaveicon/Mojaveiconcustom.icns /.VolumeIcon.icns
            echo "Done"
            ;;
        "Mojave dark icon")
            printf "\nCopying Mojave dark Volume icon\n"
	    printf "\n Please re-type password when required\n"
	    sudo mount -uw /
	    sudo cp -a ~/*/Mojaveicon/Mojaveicondarkcustom.icns /.VolumeIcon.icns
            echo "Done"
            ;;
        "Back to normal icon")
            printf "you chose choice $REPLY which is $opt"
	    printf "\nApplying default volume icon\n"
	    printf "\n Please re-type password when required\n"
	    sudo mount -uw /
	    sudo rm /.VolumeIcon.icns
	    echo "Done"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
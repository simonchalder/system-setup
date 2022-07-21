#!/usr/bin/zsh

cat << "EOF"

   _____           _       __          __             _____ _                     
  / ___/__________(_)___  / /______   / /_  __  __   / ___/(_)___ ___  ____  ____ 
  \__ \/ ___/ ___/ / __ \/ __/ ___/  / __ \/ / / /   \__ \/ / __ `__ \/ __ \/ __ \
 ___/ / /__/ /  / / /_/ / /_(__  )  / /_/ / /_/ /   ___/ / / / / / / / /_/ / / / /
/____/\___/_/  /_/ .___/\__/____/  /_.___/\__, /   /____/_/_/ /_/ /_/\____/_/ /_/ 
                /_/                      /____/                                   

EOF

echo "Arch System Setup Script Running"

packages=("zsh" "alacritty" "visual-studio-code-bin" "nmail" "min" "git" "bspwm" "rofi" "tuir")

repos=("https://github.com/simonchalder/alacritty-config" "https://github.com/simonchalder/bash-config" "https://github.com/simonchalder/zsh-config" "https://github.com/simonchalder/fehbg-config" "https://github.com/simonchalder/bspwm-config")

# pacman -S yay

echo "\nPacman helper installed...."

echo "\nInstalling base packages"

# for pkg in $packages
# do
#    yay -S $pkg
#    echo "Installing" + $pkg
# done

echo "\nAll packages installed"

sleep 1

echo "\nRetrieving config files from git...creating home/Dotfiles and placing them there"

mkdir ~/Dotfiles

cd ~/Dotfiles

pwd

for dot in $repos
do
   git clone $dot
done


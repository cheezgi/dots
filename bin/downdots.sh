#/bin/sh

# ░░░░░░█░█▀▄░█▀█░█░█░█▀█░█▀▄░█▀█░▀█▀░█▀▀
# ░░░░▄▀░░█░█░█░█░█▄█░█░█░█░█░█░█░░█░░▀▀█
# ░▀░░▀░░░▀▀░░▀▀▀░▀░▀░▀░▀░▀▀░░▀▀▀░░▀░░▀▀▀

cd ~/dots

# pull from github
git pull

# copy everything
cp ~/dots/windowchefrc ~/.config/windowchef
cp ~/dots/sxhkdrc ~/.config/sxhkd
cp ~/dots/init.vim ~/.config/nvim
cp ~/dots/.zshrc ~
cp ~/dots/.Xresources ~
cp ~/dots/.xsession ~
cp ~/dots/compton.conf ~/.config
cp -r ~/dots/bin ~

cd -


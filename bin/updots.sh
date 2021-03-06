#/bin/sh

# ░░░░░░█░█░█░█▀█░█▀▄░█▀█░▀█▀░█▀▀
# ░░░░▄▀░░█░█░█▀▀░█░█░█░█░░█░░▀▀█
# ░▀░░▀░░░▀▀▀░▀░░░▀▀░░▀▀▀░░▀░░▀▀▀


cd ~/dots

# copy everything
cp ~/.config/windowchef/windowchefrc ~/dots
cp ~/.config/sxhkd/sxhkdrc ~/dots
cp ~/.config/nvim/init.vim ~/dots
cp ~/.config/compton.conf ~/dots
cp ~/.config/ranger/rc.conf ~/dots
cp ~/.config/ranger/rifle.conf ~/dots
cp ~/.zshrc ~/dots
cp ~/.Xresources ~/dots
cp ~/.xsession ~/dots
cp ~/.config/compton.conf ~/dots
cp ~/bin ~/dots -r

if [ "$1" != "-l" ]; then
    # push to github
    git add .
    if [ -n "$1" ]; then
        git commit -m "$1"
    else
        git commit
    fi
    git push
fi

cd -


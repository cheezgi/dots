#/bin/sh

# ░░░░░░█░█░█░█▀█░█▀▄░█▀█░▀█▀░█▀▀
# ░░░░▄▀░░█░█░█▀▀░█░█░█░█░░█░░▀▀█
# ░▀░░▀░░░▀▀▀░▀░░░▀▀░░▀▀▀░░▀░░▀▀▀


cd ~/dots

# copy everything
cp ~/.config/windowchef/windowchefrc ~/dots
cp ~/.config/sxhkd/sxhkdrc ~/dots
cp ~/.config/nvim/init.vim ~/dots
cp ~/.zshrc ~/dots
cp ~/.Xresources ~/dots
cp ~/.xsession ~/dots
cp ~/bin ~/dots -r

if [ "$1" != "-l" ]; then
    # push to github
    git add .
    git commit
    git push
fi

cd -


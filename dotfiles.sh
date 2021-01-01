#!/bin/bash
# dotfilesの展開を実行する

# ~/.bash_profileを作る
cat << EOF > ~/.bash_profile
if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
fi
EOF

# enhancdの導入
git clone https://github.com/b4b4r07/enhancd ~/.enhancd

# homeshickの導入
git clone https://github.com/andsens/homeshick.git ~/.homesick/repos/homeshick

# dotfilesを展開する
~/.homesick/repos/homeshick/bin/homeshick --force clone ha4gu/dotfiles
touch ~/.bashrc.d/private.sh
ln -s ~/.vimrc.client ~/.vimrc
ln -s ~/.tmux.conf.d/mac.conf ~/.tmux.conf

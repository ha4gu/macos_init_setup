#!/bin/bash
# ログインシェルを変更する

# 参考: https://rcmdnk.com/blog/2015/05/25/computer-mac-bash-zsh/
echo "/etc/shellsへの書き込みにsudo実行が必要"
sudo sh -c "echo $(brew --prefix)/bin/bash >> /etc/shells"
chsh -s $(brew --prefix)/bin/bash

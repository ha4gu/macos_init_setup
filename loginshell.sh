#!/bin/bash
# ログインシェルを変更する

# 参考: https://rcmdnk.com/blog/2015/05/25/computer-mac-bash-zsh/
echo "/etc/shellsへの書き込みにsudo実行が必要"
sudo sh -c "echo /usr/local/bin/bash >> /etc/shells"
chsh -s /usr/local/bin/bash

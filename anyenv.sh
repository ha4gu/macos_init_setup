#!/bin/bash
# anyenvのセットアップを実行する

anyenv install --force-init
anyenv install rbenv
anyenv install pyenv
anyenv install nodenv
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
exec $SHELL -l

#!/bin/bash
# anyenvのセットアップを実行する

anyenv install --force-init
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
anyenv install rbenv
anyenv install pyenv
anyenv install nodenv

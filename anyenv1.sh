#!/bin/bash
# anyenvのセットアップを実行する

set -eu
export SETUPDIR="${HOME}/src/macos_init_setup"

anyenv install --init
anyenv install rbenv
anyenv install pyenv
anyenv install nodenv
anyenv install tfenv
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

echo 'シェルを起動し直してから以下のコマンドを実行せよ。'
echo 'bash "${HOME}/src/macos_init_setup/anyenv2.sh"'
echo

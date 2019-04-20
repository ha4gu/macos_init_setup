#!/bin/bash
set -eu
export SETUPDIR="${HOME}/src/macos_init_setup"

# anyenvのセットアップ
bash "${SETUPDIR}/anyenv.sh"
exec $SHELL -l
echo "anyenvのセットアップが完了"
echo

# rbenvのセットアップ
ln -s "${SETUPDIR}/default-gems" "$(rbenv root)/default-gems"
bash "${SETUPDIR}/rbenv.sh"
echo "rbenvのセットアップが完了"

# nodenvのセットアップ
bash "${SETUPDIR}/nodenv.sh"
echo "nodenvのセットアップが完了"

# pyenvのセットアップ
bash "${SETUPDIR}/pyenv.sh"
echo "pyenvのセットアップが完了"

# レポジトリのダウンロード
bash "${SETUPDIR}/repos.sh"
echo "レポジトリのダウンロードが完了"

# Mackup
ln -s "${SETUPDIR}/Mackup.cfg" "${HOME}/.mackup.cfg"
echo "Mackup設定ファイルのリンクが完了"

echo "糸冬"
echo

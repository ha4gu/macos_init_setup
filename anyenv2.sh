#!/bin/bash
# xxxenvのセットアップを実行する

set -eu
export SETUPDIR="${HOME}/src/macos_init_setup"

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

# tfenvのセットアップ
bash "${SETUPDIR}/tfenv.sh"
echo "tfenvのセットアップが完了"

echo "すべてのセットアップ処理が完了"
echo

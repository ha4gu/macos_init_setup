#!/bin/bash
# xxxenvのセットアップを実行する

set -eu
export SETUPDIR="${HOME}/src/macos_init_setup"

# rbenvのセットアップ
ln -s "${SETUPDIR}/default-gems" "$(rbenv root)/default-gems"
bash "${SETUPDIR}/rbenv.sh"
echo "rbenvのセットアップが完了"

echo "すべてのセットアップ処理が完了"
echo

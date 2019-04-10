#!/bin/bash
set -eu

# sudo
echo "後続の処理のために一度sudoを実行"
sudo echo "start"

# Command Line Toolsのインストール
xcode-select --install
read -p "Hit enter after finishing installation of Command Line Tools: "
echo "Command Line Toolsのインストールが完了"
# 完全に自動化したい場合の参考:
# macos - How can I install the Command Line Tools completely from the command line? - Ask Different
# https://apple.stackexchange.com/questions/107307/how-can-i-install-the-command-line-tools-completely-from-the-command-line

# GitHubからmacos_init_setupをclone
mkdir ~/src
git clone https://github.com/ha4gu/macos_init_setup.git ~/src/macos_init_setup
SETUPDIR="~/src/macos_init_setup"
echo "macos_init_setupのcloneが完了"

# 必須ディレクトリの作成
bash "${SETUPDIR}/mkdir.sh"
echo "必須ディレクトリの作成が完了"

# ~/.sshの処理
bash "${SETUPDIR}/ssh.sh"
echo "sshの処理が完了"

# Karabiner-Elementsのjson配備
mkdir -p ~/.config/karabiner/assets/
ln -s "${SETUPDIR}/karabiner" ~/.config/karabiner/assets/complex_modifications
echo "Karabiner-Elementsのjson配備が完了"

# 各種ターミナルから実行する設定群
bash "${SETUPDIR}/variousconf.sh"
echo "各種設定コマンドの実行が完了"

# Homebrewのインストール
bash "${SETUPDIR}/homebrew.sh"
echo "Homebrewのインストールが完了"

# brew bundleの実行
cp "${SETUPDIR}/Brewfile" ~/.Brewfile
bash "${SETUPDIR}/brewbundle.sh"
echo "brew bundleの実行が完了"

# dotfilesの展開
bash "${SETUPDIR}/dotfiles.sh"
echo "dotfilesの展開が完了"

# ログインシェルの変更
bash "${SETUPDIR}/loginshell.sh"
echo "ログインシェルの変更が完了"

# bash-completionへの追加
bash "${SETUPDIR}/completion.sh"
echo "bash-completionへの追加が完了"

echo "糸冬"

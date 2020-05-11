#!/bin/bash
set -eu
export SETUPDIR="${HOME}/src/macos_init_setup"

# sudo
echo "後続の処理のために一度sudoを実行します"
sudo echo "後続の処理のためにssh-addを実行します"
ssh-add
echo

# Command Line Toolsのインストール
xcode-select --install
read -p "Hit enter after finishing installation of command line developer tools: "
echo "Command Line Toolsのインストールが完了"
echo

# GitHubからmacos_init_setupをclone
mkdir ~/src
git clone https://github.com/ha4gu/macos_init_setup.git ~/src/macos_init_setup
echo "セットアップ用レポジトリのcloneが完了"
echo

# 必須ディレクトリの作成
bash "${SETUPDIR}/mkdir.sh"
echo "必須ディレクトリの作成が完了"
echo

# ~/.sshの処理
bash "${SETUPDIR}/ssh.sh"
echo "sshの処理が完了"
echo

# Karabiner-Elementsのjson配備
mkdir -p ~/.config/karabiner/assets/
ln -s "${SETUPDIR}/karabiner" ~/.config/karabiner/assets/complex_modifications
echo "Karabiner-Elementsのjson配備が完了"
echo

# 各種ターミナルから実行する設定群
bash "${SETUPDIR}/variousconf.sh"
echo "各種設定コマンドの実行が完了"
echo

# レポジトリのダウンロード
bash "${SETUPDIR}/repos.sh"
echo "レポジトリのダウンロードが完了"

# Homebrewのインストール
bash "${SETUPDIR}/homebrew.sh"
echo "Homebrewのインストールが完了"
echo

# brew bundleの実行
cp "${SETUPDIR}/Brewfile" ~/.Brewfile
bash "${SETUPDIR}/brewbundle.sh"
echo "brew bundleの実行が完了"
echo

# brew bundle外のcask install実行
set +e
brew cask install virtualbox || (read -p "Hit enter after allow kext: " && brew cask install virtualbox)
set -e
brew cask install virtualbox-extension-pack
echo "brew bundle外のcask install実行が完了"
echo

# dotfilesの展開
bash "${SETUPDIR}/dotfiles.sh"
echo "dotfilesの展開が完了"
echo

# bash-completionへの追加
bash "${SETUPDIR}/completion.sh"
echo "bash-completionへの追加が完了"
echo

# ログインシェルの変更
bash "${SETUPDIR}/loginshell.sh"
echo "ログインシェルの変更が完了"
echo

# git-secretsの設定
bash "${SETUPDIR}/git-secrets.sh"
echo "git-secretsの設定が完了"
echo

# rbenvのセットアップ
mkdir -p $(rbenv root)
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

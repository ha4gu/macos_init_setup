#!/bin/bash
set -eu
shopt -s histappend
export HISTTIMEFORMAT='%F %T '
export SETUPDIR="${HOME}/src/macos_init_setup"

# sudo
echo "後続の処理のために一度sudoを実行"
sudo echo "start"
echo

# Command Line Toolsのインストール
xcode-select --install
read -p "Hit enter after finishing installation of Command Line Tools: "
# 完全自動化参考: https://apple.stackexchange.com/questions/107307/how-can-i-install-the-command-line-tools-completely-from-the-command-line
echo "Command Line Toolsのインストールが完了"
echo

# GitHubからmacos_init_setupをclone
mkdir ~/src
git clone https://github.com/ha4gu/macos_init_setup.git ~/src/macos_init_setup
echo "macos_init_setupのcloneが完了"
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
brew cask install vagrant
brew cask install vagrant-manager
echo "brew bundle外のcask install実行が完了"
echo

# dotfilesの展開
bash "${SETUPDIR}/dotfiles.sh"
echo "dotfilesの展開が完了"
echo

# ログインシェルの変更
bash "${SETUPDIR}/loginshell.sh"
echo "ログインシェルの変更が完了"
echo

# bash-completionへの追加
bash "${SETUPDIR}/completion.sh"
echo "bash-completionへの追加が完了"
echo

echo "シェルを再起動後、次のスクリプトを実行してください"
echo

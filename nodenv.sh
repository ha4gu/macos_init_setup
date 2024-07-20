#!/bin/bash
# nodenvのセットアップを実行する

git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"
git clone https://github.com/nodenv/nodenv-package-rehash.git "$(nodenv root)/plugins/nodenv-package-rehash"
git clone https://github.com/nodenv/nodenv-default-packages.git "$(nodenv root)/plugins/nodenv-default-packages"
touch "$(nodenv root)/default-packages"

mkdir -p "$(nodenv root)/lib/node_modules"
git clone https://github.com/nodenv/jetbrains-npm "$(nodenv root)"/lib/node_modules/npm

nodenv install 18.20.4
nodenv install 20.15.1
nodenv install 22.5.0

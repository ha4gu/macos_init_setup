#!/bin/bash
# nodenvのセットアップを実行する

git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"

nodenv install 10.16.1
nodenv global 10.16.1
nodenv rehash
npm completion > /usr/local/etc/bash_completion.d/npm

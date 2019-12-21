#!/bin/bash
# nodenvのセットアップを実行する

git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"

nodenv install 12.14.0
nodenv global 12.14.0
nodenv rehash
npm completion > /usr/local/etc/bash_completion.d/npm

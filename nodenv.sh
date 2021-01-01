#!/bin/bash
# nodenvのセットアップを実行する

git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"

nodenv install 12.20.0
nodenv global  12.20.0
nodenv rehash
npm install -g npm firebase-tools gatsby-cli
nodenv rehash
npm completion > /usr/local/etc/bash_completion.d/npm

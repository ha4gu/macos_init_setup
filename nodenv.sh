#!/bin/bash
# nodenvのセットアップを実行する

git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"

nodenv install 10.14.2
nodenv install 12.16.3
nodenv global  12.16.3
nodenv rehash
npm install -g npm
npm install -g firebase-tools
npm install -g gatsby-cli
nodenv rehash
npm completion > /usr/local/etc/bash_completion.d/npm

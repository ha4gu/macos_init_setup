#!/bin/bash
# nodenvのセットアップを実行する

git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"

nodenv install 14.18.2
nodenv global 14.18.2
nodenv rehash
~/.nodenv/shims/npm completion > /usr/local/etc/bash_completion.d/npm

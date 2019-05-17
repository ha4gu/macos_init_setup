#!/bin/bash
# nodenvのセットアップを実行する

nodenv install 10.15.3
nodenv global 10.15.3
nodenv rehash
npm completion > /usr/local/etc/bash_completion.d/npm

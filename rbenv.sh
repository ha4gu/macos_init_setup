#!/bin/bash
# rbenvのセットアップを実行する

git clone https://github.com/rbenv/rbenv-default-gems.git $(rbenv root)/plugins/rbenv-default-gems

rbenv install 2.3.3
rbenv install 2.5.5
rbenv install 2.6.3

rbenv global 2.3.3
gem update --system
gem update
gem install did_you_mean -v '<1.1'

rbenv global 2.5.5
gem update --system
gem update

rbenv global 2.6.3
gem update --system
gem update

rbenv global system
rdenv rehash

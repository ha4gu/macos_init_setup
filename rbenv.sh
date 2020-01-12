#!/bin/bash
# rbenvのセットアップを実行する

git clone https://github.com/rbenv/rbenv-default-gems.git $(rbenv root)/plugins/rbenv-default-gems

rbenv install 2.3.3 # for AtCoder
rbenv install 2.6.3 # for paiza
rbenv install 2.6.5

rbenv global 2.3.3
gem update --system
gem install fileutils --default
gem update
gem install did_you_mean -v '<1.1'
gem install bigdecimal -v '<2'

rbenv global 2.6.3
gem update --system
gem install fileutils --default
gem update

rbenv global 2.6.5
gem update --system
gem install fileutils --default
gem install pg -- --with-pg-config=/usr/local/opt/postgresql@9.6/bin/pg_config
gem update

rbenv global system
rbenv rehash

cd ~/src/
rbenv local 2.6.5

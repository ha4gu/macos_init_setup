#!/bin/bash
# rbenvのセットアップを実行する

git clone https://github.com/rbenv/rbenv-default-gems.git $(rbenv root)/plugins/rbenv-default-gems

rbenv install 2.6.6
rbenv install 2.7.1 # for AtCoder and paiza
rbenv install 2.7.2

rbenv global 2.6.6
gem update --system
gem install fileutils --default
gem install pg -- --with-pg-config=/usr/local/opt/postgresql@9.6/bin/pg_config
gem update

rbenv global 2.7.1 # for AtCoder and paiza
gem update --system
gem install fileutils --default
gem update

rbenv global 2.7.2
gem update --system
gem install fileutils --default
gem install pg -- --with-pg-config=/usr/local/opt/postgresql@9.6/bin/pg_config
gem update

rbenv global system
rbenv rehash

cd ~/src/
rbenv local 2.6.6

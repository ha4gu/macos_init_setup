#!/bin/bash
# rbenvのセットアップを実行する

git clone https://github.com/rbenv/rbenv-default-gems.git "$(rbenv root)/plugins/rbenv-default-gems"

rbenv install 3.1.6
rbenv install 3.2.4
rbenv install 3.3.4

rbenv global 3.1.6
gem update --system
gem update bundler
gem install pg -- --with-pg-config="$(brew --prefix)/opt/postgresql@16/bin/pg_config"

rbenv global 3.2.4
gem update --system
gem update bundler
gem install pg -- --with-pg-config="$(brew --prefix)/opt/postgresql@16/bin/pg_config"

rbenv global 3.3.4
gem update --system
gem update bundler
gem install pg -- --with-pg-config="$(brew --prefix)/opt/postgresql@16/bin/pg_config"

rbenv global system
bundle config frozen true
bundle config jobs $(sysctl -n hw.ncpu)
bundle config retry 2
bundle config build.pg --with-pg-config=$(brew --prefix)/opt/postgresql@16/bin/pg_config

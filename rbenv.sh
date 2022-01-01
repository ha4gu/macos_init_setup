#!/bin/bash
# rbenvのセットアップを実行する

rbenv install 2.6.9
rbenv install 2.7.5
rbenv install 3.0.3
rbenv install 3.1.0

rbenv global 2.6.9
gem update --system
gem install pg -- --with-pg-config=/usr/local/opt/postgresql@13/bin/pg_config
gem update

rbenv global 2.7.5
gem update --system
gem install pg -- --with-pg-config=/usr/local/opt/postgresql@13/bin/pg_config
gem update

rbenv global 3.0.3
gem update --system
gem install pg -- --with-pg-config=/usr/local/opt/postgresql@13/bin/pg_config
gem update

rbenv global 3.1.0
gem update --system
gem install pg -- --with-pg-config=/usr/local/opt/postgresql@13/bin/pg_config
gem update

rbenv global system
rbenv rehash

cd ~/src/
rbenv local 3.1.0

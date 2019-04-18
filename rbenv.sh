#!/bin/bash
# rbenvのセットアップを実行する

rbenv install 2.3.3
rbenv install 2.5.5
rbenv install 2.6.2

rbenv global 2.3.3
gem update --system
gem update
gem install did_you_mean -v '<1.1'

rbenv global 2.6.2
gem update --system
gem update

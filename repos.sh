#!/bin/bash
# レポジトリのダウンロードを実施

ssh-add

# GitHub
git clone https://github.com/ha4gu/atcoder.git ~/src/atcoder
git clone https://github.com/ha4gu/dispocha.git ~/src/dispocha

# Bitbucket
git clone git@bitbucket.org:ha4gu/paiza.git ~/src/paiza

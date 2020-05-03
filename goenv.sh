#!/bin/bash
# goenvのセットアップを実行する

# goenvのセットアップ
git clone https://github.com/syndbg/goenv.git ~/.goenv
~/.goenv/bin/goenv install 1.14.2
~/.goenv/bin/goenv global 1.14.2
~/.goenv/bin/goenv rehash

#!/bin/bash
# bash-completionへの追加を実行する

# homeshick
ln -s ~/.homesick/repos/homeshick/completions/homeshick-completion.bash /usr/local/etc/bash_completion.d/homeshick

# docker
# 参考: http://uorat.hatenablog.com/entry/2017/02/01/163027
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion /usr/local/etc/bash_completion.d/docker-machine
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compose

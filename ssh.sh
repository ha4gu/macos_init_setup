#!/bin/bash
# ~/.sshの処理を実行する

chmod 400 ~/.ssh/id_rsa
chmod 444 ~/.ssh/id_rsa.pub
git clone git@bitbucket.org:ha4gu/ssh.git ~/ssh
mv ~/.ssh/* ~/ssh/.
rmdir ~/.ssh
mv ~/ssh ~/.ssh
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

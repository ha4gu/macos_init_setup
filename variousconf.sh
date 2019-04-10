#!/bin/bash
# 各種設定を実行する

# 隠しファイルを常に表示させる
defaults write com.apple.finder AppleShowAllFiles -boolean true

# SMBで.DS_Storeを作成させない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# SMBでパケット署名による暗号化の無効化
cat << EOF > /tmp/nsmb.conf
[default]
signing_required=no
EOF
echo "/etc/nsmb.confへの書き込みにsudo実行が必要"
sudo mv /tmp/nsmb.conf /etc/.

# スクリーンショットの保存場所をデスクトップからピクチャに変更する
# 参考: https://pc-karuma.net/mac-customize-screencapture-location/
defaults write com.apple.screencapture location ~/Pictures/

# スクリーンショット取得時にウインドウの影をなくす
# 参考: https://pc-karuma.net/mac-disable-drop-shadows-on-screenshots/
defaults write com.apple.screencapture disable-shadow -boolean true

#!/bin/bash
# 各種設定を実行する

# 隠しファイルを常に表示させる
defaults write com.apple.finder AppleShowAllFiles -boolean true

### SMB関連
# .DS_Storeを作成させない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -boolean true
# パケット署名による暗号化を無効にする
cat << EOF > /tmp/nsmb.conf
[default]
signing_required=no
EOF
echo "/etc/nsmb.confへの書き込みにsudo実行が必要"
sudo mv /tmp/nsmb.conf /etc/.

### スクリーンショット関連 参考: https://qiita.com/ZEON/items/0bd778c18e0065d97f9e
# ファイル形式をPNGからJPEGに変える
defaults write com.apple.screencapture type jpg
# ファイル名の接頭辞を "スクリーンショット" から "screenshot" に変える
defaults write com.apple.screencapture name screenshot
# 保存場所をデスクトップからピクチャに変更する
defaults write com.apple.screencapture location ~/Pictures/
# ウインドウの影をなくす
defaults write com.apple.screencapture disable-shadow -boolean true
# スクリーンショット取得時のフローティングサムネイル表示を無効にする
defaults write com.apple.screencapture show-thumbnail -boolean false
# スクリーンショットにマウスポインタを含める
defaults write com.apple.screencapture showsCursor -boolean true

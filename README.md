# macOS Init Setup

macOSの再セットアップを自動で行うための自分用スクリプト群。

## 前提

以下の項目は先に完了させておくこと。

- FileVaultによるストレージの暗号化
- OSアップデートの確認
- Mac App Storeへのログイン
- Ed25519形式の鍵ペア生成とGitHubへの登録（プライベートレポジトリへアクセスできるようにしておく）
    - `ssh-keygen -t ed25519`
- フォントのインストール
    - 対象となるフォントファイルを特定のディレクトリに集めた上で、そのディレクトリに移動し、
    - `find . -name "*.[ot]t[cf]" -exec cp {} ~/Library/Fonts/. \;`
- ホスト名の変更
    - システム設定 > 一般 > 情報 > コンピュータ名
    - システム設定 > 一般 > 共有 > ローカルホスト名

## 使用方法

とりあえず取得してくるなら

```shell
mkdir -p ~/src/private && cd ~/src/private && git clone git@github.com:ha4gu/macos_init_setup.git
```

直接実行するなら

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ha4gu/macos_init_setup/master/bootstrap.sh)"
```

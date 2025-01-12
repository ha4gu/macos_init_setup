# macOS Init Setup

macOSの再セットアップを自動で行うための自分用スクリプト群。

## 前提

以下の項目は先に完了させておくこと。

- OS設定全般。特に以下の項目。
    - OSアップデート
        - 「一般」→「ソフトウェアアップデート」
    - FileVaultによるストレージの暗号化
        - 「プライバシーとセキュリティ」→「FileVault」
    - ホスト名の変更
        - 「一般」→「情報」→「コンピュータ名」
        - 「一般」→「共有」→「ローカルホスト名」
    - iCloud Driveの「初期セットアップ用ディレクトリ」をローカル同期
- App Storeへのログイン
- iCloud Driveからフォントをインストール
    - `cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/初期セットアップ用/fonts/`
    - `ls -la`
    - `ls -la ~/Library/Fonts/`
    - `find . -name "*.[ot]t[cf]" -exec cp {} ~/Library/Fonts/. \;`
- Ed25519形式の鍵ペア生成とGitHubへの登録（プライベートレポジトリへアクセスできるようにしておく）
    - `ssh-keygen -t ed25519`
    - `cat ~/.ssh/id_ed25519.pub`
    - メモアプリに貼り付けて同期
    - 別端末から https://github.com/settings/keys にアクセスして登録
- コマンドラインデベロッパツールのインストール
    - `xcode-select --install`

## 使用方法

とりあえず取得してくるなら

```shell
mkdir -p ~/src/private && cd ~/src/private && git clone git@github.com:ha4gu/macos_init_setup.git
```

直接実行するなら

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ha4gu/macos_init_setup/master/bootstrap.sh)"
```

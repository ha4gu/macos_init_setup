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
- ホスト名の変更

## 使用方法

とりあえず取得してくるなら

```shell
mkdir -p ~/src/private && cd ~/src/private && git clone git@github.com:ha4gu/macos_init_setup.git
```

直接実行するなら

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ha4gu/macos_init_setup/master/bootstrap.sh)"
```

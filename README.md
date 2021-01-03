# macOS Init Setup

macOSの再セットアップを自動で行うための自分用スクリプト群。

## 前提

以下の項目は先に完了させておくこと。

- OSアップデートの確認
- ストレージの暗号化
- Mac App Storeへのログイン
- ssh秘密鍵の配置（プライベートレポジトリへアクセスできるようにしておく）
- ホスト名の変更

## 使用方法

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ha4gu/macos_init_setup/master/bootstrap.sh)"
```

## 手動でのインストールが必要なもの

- Avira Free Security for macOS
  - https://www.avira.com/en/free-security からダウンロードしてインストール
- Oracle VM VirtualBox
  - `brew install --cask virtualbox` を実行
  - インストール処理が失敗するのでセキュリティ設定で許可してからOS再起動
  - `brew install --cask virtualbox` を再度実行
  - `brew install --cask virtualbox-extension-pack` を実行

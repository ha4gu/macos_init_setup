# macOS Init Setup

macOSの再セットアップを自動で行うための自分用スクリプト群。

## 前提

以下の項目は先に完了させておくこと。

- OSアップデートの確認
- ストレージの暗号化
- Mac App Storeへのログイン
- ssh秘密鍵の配置
- ホスト名の変更

## 使用方法

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ha4gu/macos_init_setup/master/bootstrap.sh)"
```

# test_git_codexcli_dotenv
学習用プロジェクト：git、codex cli、dotenv（APIキー等の環境変数を隠蔽用）
  
中身は単に.envに入力した環境変数を表示するだけのスクリプトです。  
<img width="206" height="152" alt="image" src="https://github.com/user-attachments/assets/b9bf0177-aece-47ae-bdb0-38a9ad659322" />
  
  
  
# 学習メモ

## Gitの基本コマンド

`git add .`
変更したファイルをまとめてステージングするコマンドです。

`git commit -m "メッセージ"`
ステージングした変更を、メッセージ付きでコミットするコマンドです。

`git push`
コミットの履歴をリモートにコピーするコマンドです。

## Gitの差分確認

`git status`
変更されたファイルやステージングの状態を確認するコマンドです。

`git diff`
まだコミットしていない変更内容の差分を確認するコマンドです。

## gitのリポジトリ連携

GitHub 側で先にリモートリポジトリを作成します。

`git clone リポジトリURL`
GitHub 上のリモートリポジトリを clone して、ローカルリポジトリを作成し、リモートと連携します。

## 環境変数の管理

1. `python-dotenv`（MITライセンス）パッケージをインストールします。
2. `.env` に環境変数を記入し、`.gitignore` に追加して共有しないようにします。
3. `os.getenv()` で環境変数を読み込んで使います。

（任意）競合を考慮して `venv` 仮想環境を使用します。

（任意）共有用に `requirements.txt` を作成します。

`.env` を Git 管理しない理由は、APIキーやパスワードなどの機密情報が外部に共有されるのを防ぐためです。

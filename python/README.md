# pythonについて

## インストール方法

### Windows Store でのインストール方法

- python3.10のアプリリンク <https://www.microsoft.com/store/productId/9PJPW5LDXLZ5>
- `Get in Store app`をクリックして、Windows Storeでインストール
  - ダウンロードからインストールまで自動で行われる。

- インストール後の確認 ※バージョンが表示されていればインストール完了
  - コマンドプロンプトを開いて、`pyhton`と入力して起動することを確認。  

  ```cmd
  C:\WINDOWS\System32>python
  Python 3.10.4 (tags/v3.10.4:9d38120, Mar 23 2022, 23:13:41) [MSC v.1929 64 bit (AMD64)] on win32
  Type "help", "copyright", "credits" or "license" for more information.
  >>>
  ```

  - ※上記の対話モードは`ctrl+Z`入力尾後に`ENTER`で終了

## Pythonについての説明

- pythonはスクリプト言語
- 外部ライブラリ扱うときは、pipというパッケージ管理システムを使う
  - pipはpythonに付属している
  - パッケージ管理システムができること
    - pythonで作成されたパッケージを実行環境にインストール・アンインストールができる
    - パッケージを最新バージョンへアップデートができる
    - pipがインストールできるパッケージは先のWEBサービス上に保管されている<https://pypi.org/>

### 余談

- pythonで扱われる、モジュール、パッケージ、ライブラリの違いについて<https://it-biz.online/python/import/>
- 正直パッケージとライブラリの粒度の違いがわからない

## pythonの開発環境の作成

### 仮想環境の用意

#### 仮想環境について

- pythonにはデフォルトで`venv`という仮想環境を構築するモジュールがインストールされている。
  - `venv`についての詳細はPythonの公式ドキュメント参照 - <https://docs.python.org/ja/3/library/venv.html>
  - 仮想環境とは、一部のディレクトリ内でpythonの実行可能（パッケージ管理も含む）な環境のこと
  - 
  - 仮想環境の利点は、複数人数で開発を行うときに各環境依存が無い。

### 仮想環境の作成

- 仮想環境の初期作成
  - `python -m venv .venv`
    - → `Python`pythonを実行するコマンド
    - → `-m` モジュールの名前を宣言するコマンド
    - → `venv` 実行するモジュール名
    - → `.venv` 仮想環境を作成するディレクトリ ※この場合ルートに`.venv`のディレクトリに作成される。


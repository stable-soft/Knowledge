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
- `.py`という拡張子がpythonのファイル
- `python.exe`（Windowsだったら）で`.py`を実行する 
  - ※インストールした場所の`python.exe`で実行する場合は通常の環境、venvなどで特定の場所に作成された`python.exe`で実行する場合は仮想環境
  - `python.exe`の正式名称は、pythonランチャー（launcher）
- 外部ライブラリ扱うときは、pipというパッケージ管理システムを使う
  -
   pipはpythonに付属している
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
  - 言い換えると、親環境（ホスト環境）がインストールしたpythonの場所で、子環境（仮想環境）が任意のディレクトリに有効なpythonの実行環境
  - 仮想環境の利点は、複数人数で開発を行うときに各環境依存が無い。

### 仮想環境の作成

- 仮想環境の初期作成
- 次のコマンドを入力`python -m venv .venv`
  - 各コマンドの内訳
    - → `Python`pythonを実行するコマンド
    - → `-m` モジュールの名前を宣言するコマンド
    - → `venv` 実行するモジュール名
    - → `.venv` 仮想環境を作成するディレクトリ ※この場合ルートに`.venv`のディレクトリに作成される。

- 仮想環境の有効化（アクティブ化）
  - アクティブ化 → 使用するpythonランチャーがある場所を指定すること
  - `.venv\Scripts\activate` - アクティブ化 
    - アクティブ化すると、コマンドラインの先頭に`(.venv)`が付与される
  - `.venv\Scripts\deactivate` - 無効化`(.venv)`が消えると無効化


### 実行～パッケージリストの保存まで

- pythonの実行方法
  - 前提として仮想環境が有効化済みの環境であること
  - コマンド`(.venv) <python仮想環境> > python <pythonのファイル> <引数>`

- パッケージリストの保存方法
  - `pip freeze > requirements.txt`で、仮想環境にインストールしているパッケージの一覧を出力することができる。
  - `pip install -r requirements.txt`でパッケージのリストのインストールをすることができる。


## PytonのREADME.mdのスニペット

- vscode用

```json
{
  "python_README": {
    "prefix": "pyreadme",
    "body": [
      "${1:# プロジェクト名}",
      "",
      "## 実行環境構築",
      "",
      "- `python -m venv .venv` - 仮想環境の作成",
      "- 仮想環境の有効化（アクティブ化）",
      "  - `.venv\\Scripts\\activate` - windows",
      "  - `source .venv/bin/activate` - Linux,Mac",
      " - `pip install -r requirements.txt` - パッケージのインストール"
    ]
  }
}
```

- vscodeの設定のmarkdownのスニペットを有効化するためには以下を設定する

```json
"[markdown]":  {
    "editor.quickSuggestions": true
},
```

---

### Python関係のリンク集

- Awesome Python <https://github.com/vinta/awesome-python>
  > pythonの役立つライブラリや入門のリンク集を収録したリポジトリ pythonで何ができるかさらっと確認できる
- 【Python】自作モジュール内でloggingする <https://qiita.com/Esfahan/items/275b0f124369ccf8cf18>
  > ロギング方法のサンプル
- 13 Python Snippets You Need to Know <https://builtin.com/data-science/python-code-snippets>
  > pythonのよく使うロジックのスニペット集（英文）

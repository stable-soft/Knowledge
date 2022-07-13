# OpenPyXl  

### 概要  
- Pythonで使える外部ライブラリ  
- Excelファイルの読み書きやシート操作ができる  

### インストール方法
- コマンドプロンプトで以下を入力。
```cmd
pip install openpyxl
```

### 使い方  
- 最初に、openpyxlをインポートする。
```cmd
import openpyxl
```

- Excelファイルの読み込み
```cmd
wb = openpyxl.load_workbook("(ファイル名).xlsx")
```

- Excelファイル新規作成
```cmd
wb = openpyxl.Workbook()
```

- Excelファイル保存
```cmd
wb.save("(ファイル名).xlsx")
```

# リファレンス

## 概要

![img](img/2022-07-02-09-26-23.png)

- VBAには下記のモジュールがあります。
  - 標準モジュール → プロシージャ群（関数の集まり）
  - ブックモジュール → ブック内に一つだけ持てるモジュール
  - シートモジュール → シートと一対一の関係のモジュール
  - クラスモジュール → 読んでそのままのクラスモジュール

## 基本文法

### コメント

```vba
'コメント文
```

### 型一覧

|型名|型指定子|内容|
|----|----|----|
|ブール型| Boolean|TrueまたはFalse|
|バイト型| Byte|0～255までの整数|
|整数型| Integer|32,768～32,767の整数|
|長整数型| Long|2,147,483,648～2,147,483,647の整数|
|通貨型| Currency|922,337,203,685,477.5808 ～ 922,337,203,685,477.5807の固定小数点数|
|単精度浮動小数点数型| Single|負の値：約-3.4×10(38乗)～-1.4×10(-45乗)正の値：約1.4×10(-45乗)～1.8×10(38乗)|
|倍精度浮動小数点数型| Double|負の値：約-1.8×10(308乗)～-4.0×10(-324乗)正の値：約4.9×10(-324乗)～1.8×10(308乗)|
|日付型| Date|日付：西暦100年1月1日～西暦9999年12月31日時刻：0:00:00 ～ 23:59:59|
|文字列型| String|任意の長さの文字列
|オブジェクト型| Object|オブジェクト|
|バリアント型| Variant|すべてのデータ|

### 変数宣言

```vba
Dim 変数名 As Long
変数名 = 10 / 4
```

### プロシージャ

```vba
Sub プロシージャ名()
    Range("A1").Value = 10
    Range("A2").Value = 20
    Range("A3").Value = 30
End Sub
```

### プロパティ

- 「オブジェクト名.プロパティ名」でプロパティを取得できる。

```vba
Range("A1").Value
```

### 条件文

```vba
If isA Then
    MsgBox foo
ElseIf isB
    MsgBox bar
Else
    MsgBox baz
End If
```

### 繰り返し文

```vba
For i = 0 To 10
    ~~~
    If isA Then
        Exit For
    End If
Next i
```


## 参考

- OfficeVBAリファレンス（公式サイト） - <https://docs.microsoft.com/ja-jp/office/vba/api/overview/>
- チートシート - <https://qiita.com/uchiko/items/3d7a5ef3e2676c961ee2>
- チートシート２ - <https://qiita.com/4door/items/7808489e0c69a2e58a5d>
- VBA基礎文法最速マスター - <http://d.hatena.ne.jp/nattou_curry_2/20100129/1264787849>
- VBA型 - <http://officetanaka.net/excel/vba/variable/03.htm>

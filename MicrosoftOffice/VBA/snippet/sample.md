# 雑多Snippet

## 早いループ

```VB
`早いループの仕方
`配列のループ
Sub Test1()
    Dim i As Long, A As Long, B As Variant
    B = Range("A1:B200000")
    For i = 1 To 200000
        If B(i, 1) = "田中" Then A = B(i, 2)
    Next i
End Sub

`検索のループ 
Sub Test2()
    Dim i As Long, A As Long, FC As Range
    Set FC = Range("A1:A200000").Find(What:="田中")
    A = FC.Offset(0, 1)
End Sub
```

## Classsimple

```VB
Option Explicit

Private line_log_ As String
Private log_date_ As Date
Private log_status_ As String

Public Property Get LogDate() As String
    LogDate = log_date_
End Property

Public Property Get LogStatus() As String
    LogStatus = l_status_
End Property

'VBAのクラスはコンストラクタに引数を指摘できない

'コンストラクタ
Private Sub Class_Initialize()
    
End Sub
 
'デストラクタ
Private Sub Class_Terminate()
 
End Sub

```

## FileManagerClass

```VB
Option Explicit

Private fpath_ As String
Private log_list_() As LogClass

Sub Read()
    Dim buf As String
    Open fpath_ For Input As #1
        Do Until EOF(1)
            Line Input #1, buf
            ReDim Preserve log_list_(i) = new LogClass
            
            
    Close #1
End Sub

```


## UDF

```vb
Option Explicit

Function KeyWordSearchToRange(ByRef Keys As Range, ByRef SearchRange As Range, ByRef RowOffset As Integer) As String

    Const ImpossibleCase1 As String = "あり得ない"
    Const ImpossibleCase2 As String = "-"
    
    Dim cont As Integer
    cont = 0
    Dim ResultValues(2) As String
    
    'セル範囲を全てループ
    Dim Key As Range
    For Each Key In Keys
    
        Dim GetOffsetRng As Range
        
        '最初に一致したRangeを取得
        Dim search_res As Range
        Set search_res = SearchRange.Find(Key.Value, LookIn:=xlValues, LookAt:=xlWhole)

        If search_res Is Nothing Then '検索結果を判定
            KeyWordSearchToRange = False
            Exit Function
        End If
    
        ResultValues(cont) = search_res.offset(RowOffset:=RowOffset).Value
        
        cont = cont + 1
    Next
    
    KeyWordSearchToRange = True
    
End Function
```

## 参考
- 引数ありコンストラクタ代替え案 - <https://www.excel-chunchun.com/entry/20200805-vba-class-init>
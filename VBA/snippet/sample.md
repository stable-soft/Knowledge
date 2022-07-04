```vba
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
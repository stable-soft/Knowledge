Attribute VB_Name = "Module2"
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

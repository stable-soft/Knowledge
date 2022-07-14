Attribute VB_Name = "Module2"
Option Explicit

Function KeyWordSearchToRange(ByRef Keys As Range, ByRef SearchRange As Range, ByRef RowOffset As Integer) As String

    Const ImpossibleCase1 As String = "���蓾�Ȃ�"
    Const ImpossibleCase2 As String = "-"
    
    Dim cont As Integer
    cont = 0
    Dim ResultValues(2) As String
    
    '�Z���͈͂�S�ă��[�v
    Dim Key As Range
    For Each Key In Keys
    
        Dim GetOffsetRng As Range
        
        '�ŏ��Ɉ�v����Range���擾
        Dim search_res As Range
        Set search_res = SearchRange.Find(Key.Value, LookIn:=xlValues, LookAt:=xlWhole)

        If search_res Is Nothing Then '�������ʂ𔻒�
            KeyWordSearchToRange = False
            Exit Function
        End If
    
        ResultValues(cont) = search_res.offset(RowOffset:=RowOffset).Value
        
        cont = cont + 1
    Next
    
    KeyWordSearchToRange = True
    
End Function

Attribute VB_Name = "Module1"
Option Explicit

Sub RoundToZero2()
    Dim c As Range
    
    For Each c In Worksheets("Sheet2").Range("A20:D40")
        If Abs(c.Value) < 0.01 Then c.Value = 0
    Next
End Sub

Sub sampleA()

    Dim keyWords As String
    
    keyWords = "VBA"
    
    Call sampleB(keyWords)

    'InternetExploreriŽQÆ“n‚µj
    MsgBox keyWords
    
    
End Sub

Sub sampleB(ByRef keyWords As String)

    keyWords = "InternetExplorer"
    
End Sub

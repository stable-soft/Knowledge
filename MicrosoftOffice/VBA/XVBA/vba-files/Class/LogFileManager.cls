VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "LogFileManager"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
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

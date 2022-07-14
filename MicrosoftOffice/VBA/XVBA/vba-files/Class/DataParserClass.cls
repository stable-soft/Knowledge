VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "DataParserClass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
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


'コンストラクタ
Private Sub Class_Initialize()
    
End Sub
 
'デストラクタ
Private Sub Class_Terminate()
 
End Sub

Public Function Init(ByRef log As String) As Boolean

    Init = True

End Function
    



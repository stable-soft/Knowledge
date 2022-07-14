VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "LogClass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'メンバ変数
Private fileNo As Integer
Private logFilePath As String

'----------------
'ログファイルOPEN
'----------------
Public Sub OpenFile(filePath As String)
    'ログファイルのパスを設定
    logFilePath = filePath
    '使用可能なファイル番号を取得
    fileNo = FreeFile
    '追記モードでOPEN(ログファイルが存在しない場合は新規作成)
    Open logFilePath For Append As #fileNo
End Sub

'----------------
'ログ出力
'----------------
Public Sub WriteFile(message As String)
    'ログ出力
    Print #fileNo, Now & " " & message
    '反映させるために一旦CLOSEし再OPEN
    Close #fileNo
    Open logFilePath For Append As #fileNo
End Sub

'----------------
'ログファイルCLOSE
'----------------
Public Sub CloseFile()
    Close #fileNo
End Sub

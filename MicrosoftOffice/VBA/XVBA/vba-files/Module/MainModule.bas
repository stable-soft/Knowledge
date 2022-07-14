Attribute VB_Name = "MainModule"
'変数の宣言を必須
Option Explicit

'*****************************************
'メイン処理
'*****************************************
Sub main()
    
    Dim filePath As String
    Dim log As LogClass
    Dim errorMessage As String
    
    'ログファイルのパスを指定
    filePath = ThisWorkbook.Path & "\log.txt"
    
    'クラス「LogClass」のオブジェクトを作成
    Set log = New LogClass
    
    On Error GoTo LogFileOpenErr

    'ログファイルOPEN
    log.OpenFile (filePath)
    
    On Error GoTo Err

    'ログ出力
    log.WriteFile ("メッセージをログへ出力")
    'ログファイルCLOSE
    log.CloseFile

    '後片付け
    Set log = Nothing

    Exit Sub
    
LogFileOpenErr:
    '後片付け
    Set log = Nothing
    'エラーメッセージを設定
    errorMessage = "ログファイルOPENでエラーが発生しました。" & vbCrLf & _
                    "ログファイルを開いている場合は閉じてください。" & vbCrLf & _
                    "処理を中断します。"
    'エラーメッセージを出力
    MsgBox errorMessage, vbCritical, "エラー発生"

    Exit Sub

Err:
    'ログファイルCLOSE
    log.CloseFile
    '後片付け
    Set log = Nothing
    'エラーメッセージを設定
    errorMessage = "エラーが発生しました。" & vbCrLf & _
            "処理を中断します" & vbCrLf & vbCrLf & _
            "エラー番号: " & Err.Number & vbCrLf & _
            "エラー内容: " & Err.Description
    'エラーメッセージを出力
    MsgBox errorMessage, vbCritical, "エラー発生"
    
End Sub

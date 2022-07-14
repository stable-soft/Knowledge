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

'�����o�ϐ�
Private fileNo As Integer
Private logFilePath As String

'----------------
'���O�t�@�C��OPEN
'----------------
Public Sub OpenFile(filePath As String)
    '���O�t�@�C���̃p�X��ݒ�
    logFilePath = filePath
    '�g�p�\�ȃt�@�C���ԍ����擾
    fileNo = FreeFile
    '�ǋL���[�h��OPEN(���O�t�@�C�������݂��Ȃ��ꍇ�͐V�K�쐬)
    Open logFilePath For Append As #fileNo
End Sub

'----------------
'���O�o��
'----------------
Public Sub WriteFile(message As String)
    '���O�o��
    Print #fileNo, Now & " " & message
    '���f�����邽�߂Ɉ�UCLOSE����OPEN
    Close #fileNo
    Open logFilePath For Append As #fileNo
End Sub

'----------------
'���O�t�@�C��CLOSE
'----------------
Public Sub CloseFile()
    Close #fileNo
End Sub
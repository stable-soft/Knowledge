Attribute VB_Name = "MainModule"
'�ϐ��̐錾��K�{
Option Explicit

'*****************************************
'���C������
'*****************************************
Sub main()
    
    Dim filePath As String
    Dim log As LogClass
    Dim errorMessage As String
    
    '���O�t�@�C���̃p�X���w��
    filePath = ThisWorkbook.Path & "\log.txt"
    
    '�N���X�uLogClass�v�̃I�u�W�F�N�g���쐬
    Set log = New LogClass
    
    On Error GoTo LogFileOpenErr

    '���O�t�@�C��OPEN
    log.OpenFile (filePath)
    
    On Error GoTo Err

    '���O�o��
    log.WriteFile ("���b�Z�[�W�����O�֏o��")
    '���O�t�@�C��CLOSE
    log.CloseFile

    '��Еt��
    Set log = Nothing

    Exit Sub
    
LogFileOpenErr:
    '��Еt��
    Set log = Nothing
    '�G���[���b�Z�[�W��ݒ�
    errorMessage = "���O�t�@�C��OPEN�ŃG���[���������܂����B" & vbCrLf & _
                    "���O�t�@�C�����J���Ă���ꍇ�͕��Ă��������B" & vbCrLf & _
                    "�����𒆒f���܂��B"
    '�G���[���b�Z�[�W���o��
    MsgBox errorMessage, vbCritical, "�G���[����"

    Exit Sub

Err:
    '���O�t�@�C��CLOSE
    log.CloseFile
    '��Еt��
    Set log = Nothing
    '�G���[���b�Z�[�W��ݒ�
    errorMessage = "�G���[���������܂����B" & vbCrLf & _
            "�����𒆒f���܂�" & vbCrLf & vbCrLf & _
            "�G���[�ԍ�: " & Err.Number & vbCrLf & _
            "�G���[���e: " & Err.Description
    '�G���[���b�Z�[�W���o��
    MsgBox errorMessage, vbCritical, "�G���[����"
    
End Sub

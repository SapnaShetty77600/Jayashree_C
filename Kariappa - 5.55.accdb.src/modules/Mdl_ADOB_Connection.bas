Attribute VB_Name = "Mdl_ADOB_Connection"
Option Compare Database
Option Explicit
' https://youtu.be/RWLTPDcm8us?si=S2OVOjW66fT7HQE-  Source of knowledge


Public Const gbl_Connection_String As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Kariappa K R\Desktop\FEB 14\ArmyClothingCard.accdb;Persist Security Info=False;"
Public dbConn As ADODB.Connection ' instance of ADOB Connection


Public Function ConnectDatabase() As ADODB.Connection

On Error GoTo ConnectionError

    If dbConn Is Nothing Then

        Set dbConn = New ADODB.Connection

        ElseIf dbConn.State = adStateOpen Then

            Set ConnectDatabase = dbConn

            Exit Function
    End If

dbConn.ConnectionString = gbl_Connection_String

dbConn.Open
Set ConnectDatabase = dbConn

Exit Function


ConnectionError:

    MsgBox "Failed to connect to database" & vbCrLf & Err.Description & " (" & Err.Number & ")"
    Set ConnectDatabase = Nothing

End Function

Public Function CloseDatabase()

    On Error Resume Next

    dbConn.Close

    Set dbConn = Nothing

    On Error GoTo 0
End Function

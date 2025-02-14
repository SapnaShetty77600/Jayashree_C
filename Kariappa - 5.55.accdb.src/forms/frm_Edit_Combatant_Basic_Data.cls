Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Public present_Army_Number As String
Public present_Rank_Type As String
Public edited_Army_Number As String
Public edited_Rank_Type  As String
Public returned_Value As Variant
Public present_Combatant_Id As Integer
Public selected_Rank_Id As Integer
Public sqlStr As String
Public edited_Combatant_Name As String

'2:10 06 feb 2025 by Jayashree, Prashanth, Kariappa
Private Sub btnSub_Chq_Click()
Dim PresentSubUnit As Integer
Dim PresentChqPl As Integer
Dim CID As Integer
CID = Me.txt_Present_Combatant_Id.Value

PresentSubUnit = Me.Cmb_selectedSubUnit.Value
PresentChqPl = Me.Cmb_SelectedChqPl.Value

ConnectDatabase

            Dim rs As New ADODB.Recordset

            Dim cmd As ADODB.Command

            Set cmd = New ADODB.Command

            cmd.ActiveConnection = dbConn


               sqlStr = "UPDATE tbl_Combatant SET Sub_Unit_Id =?, Chq_Platoon_Id = ?  WHERE Combatant_Id = " & CID


                        With cmd
                        .CommandText = sqlStr
                        .CommandType = adCmdText
                        .Parameters.Append .CreateParameter("Sub_Unit_Id", adInteger, adParamInput, 255, PresentSubUnit)
                        .Parameters.Append .CreateParameter("Chq_Platoon_Id", adInteger, adParamInput, 255, PresentChqPl)
                    End With


            cmd.Execute

                MsgBox ("The Combatant Subunit and Chq Pl Record has been updated. Please check the new values on the left of this form")

              CloseDatabase

              MsgBox ("Requery")

              Me.Requery ' refreshing all the values after update

              Me.Refresh

   Cmb_SelectedChqPl.Enabled = False
   Cmb_selectedSubUnit.Enabled = False
   btnSub_Chq.Enabled = False

End Sub

Private Sub cmb_Select_Option_Change()

Dim selected_Value As String

selected_Value = cmb_Select_Option.Value

Select Case selected_Value

    Case "Change Army No"

        txt_Edited_Army_Number.Enabled = True

        cmb_Selected_Rank.Enabled = False

        Me.txt_Edited_Combatant_Name.Enabled = False

        'By Jayashree,Kariappa and Prashant at 12:11 feb 06 2025
        Cmb_selectedSubUnit.Enabled = False
        Cmb_SelectedChqPl.Enabled = False



        'cmd_Save_Army_No_Rank_Changes.Enabled = True  Goverdhan - Feb 5, I do not want to enable this.


    Case "Change Rank"

        cmb_Selected_Rank.Enabled = True

        txt_Edited_Army_Number.Enabled = False

        Me.txt_Edited_Combatant_Name.Enabled = False
       ' cmd_Save_Army_No_Rank_Changes.Enabled = True Goverdhan - Feb 5, I do not want to enable this.

       'By Jayashree,Kariappa and Prashant at 12:11 feb 06 2025
        Cmb_selectedSubUnit.Enabled = False
        Cmb_SelectedChqPl.Enabled = False

    Case "Change Both"

        txt_Edited_Army_Number.Enabled = True

        cmb_Selected_Rank.Enabled = True

        Me.txt_Edited_Combatant_Name.Enabled = False

        ' cmd_Save_Army_No_Rank_Changes.Enabled = True Goverdhan - Feb 5, I do not want to enable this.

        'By Jayashree,Kariappa and Prashant at 12:11 feb 06 2025
        Cmb_selectedSubUnit.Enabled = False
        Cmb_SelectedChqPl.Enabled = False

    Case "Change Name"

        Me.txt_Edited_Combatant_Name.Enabled = True

        Me.cmd_Save_Name.Enabled = True ' enabled temporary for testing.  Better to let it be.

        txt_Edited_Army_Number.Enabled = False

         cmb_Selected_Rank.Enabled = False

         'By Jayashree,Kariappa and Prashant at 12:11 feb 06 2025
        Cmb_selectedSubUnit.Enabled = False
        Cmb_SelectedChqPl.Enabled = False


    'By Jayashree,Kariappa and Prashant at 11:48 feb 06 2025
    Case "Change Subunit and Platoon"

       Me.txt_Edited_Army_Number.Enabled = False
       Me.cmb_Selected_Rank.Enabled = False
       Me.txt_Edited_Combatant_Name.Enabled = False


       Me.Cmb_selectedSubUnit.Enabled = True



End Select


End Sub

Private Sub cmb_Selected_Rank_AfterUpdate()

' get the rank type name and give to the text box selected rank type

'Dim Rank_Id As Integer - declared as a public variable

Dim Rank_Type_Id As Integer

Dim Rank_Type_Name As String

selected_Rank_Id = Me.cmb_Selected_Rank.Value

'' Use DLookup to fetch the Rank_Type_Id for the selected Rank_Id
Rank_Type_Id = DLookup("Rank_Type", "tbl_Rank", "Rank_Id = " & selected_Rank_Id)
'
'' Use DLookup to fetch the Rank_Type_Name for the fetched Rank_Type_Id

' I need to get the edited Rank Type Name and push into the Edited Rank type Name text box


Rank_Type_Name = DLookup("Rank_Type_Name", "tbl_Rank_Type", "Rank_Type_Id = " & Rank_Type_Id)
'

'
Me.txt_Edited_Rank_Type.Value = Rank_Type_Name
'
edited_Rank_Type = Me.txt_Edited_Rank_Type.Value

'present_Army_Number - I have this value
'
'edited_Army_Number  - no applicable
'
'present_Rank_Type - I have this value
'
'edited_Rank_Type   I have this value

Me.cmd_Save_Army_No_Rank_Changes.Enabled = True ' Feb 5, decided to enable on this event.  Goverdhan

End Sub


Private Sub cmd_Edit_Army_Number_Click()


Me.txt_Edited_Army_Number.Enabled = True

'Me.cmd_Save_Army_Number.Enabled = True



End Sub

Private Sub cmd_Edit_Rank_Click()

Me.cmb_Selected_Rank.Enabled = True

End Sub




Private Sub Cmb_SelectedChqPl_Change() '12;18 on 6 feb 2025
btnSub_Chq.Enabled = True
End Sub

Private Sub Cmb_SelectedChqPl_KeyPress(KeyAscii As Integer) '3:00 06 feb 2025 by Jayashree, Prashanth, Kariappa
KeyAscii = 0
End Sub

Private Sub Cmb_selectedSubUnit_Change() '12:15 06 feb 2025 by Jayashree, Prashanth, Kariappa
Me.Cmb_SelectedChqPl.Requery
Cmb_SelectedChqPl.Enabled = True
Me.btnSub_Chq.Enabled = False
End Sub

Private Sub Cmb_selectedSubUnit_KeyPress(KeyAscii As Integer) 'By Jayashree, Prashanth, Kariappa at 3:00 06 Feb
KeyAscii = 0
End Sub

Private Sub cmd_Save_Army_No_Rank_Changes_Click()


' Apply the logic below only if the user wants to change the Army Number or Change Both the Army Number and Rank

If cmb_Select_Option.Value = "Change Army No" Or cmb_Select_Option.Value = "Change Both" Then

            If Me.txt_Edited_Army_Number.Value = "NA" Or IsNull(Me.txt_Edited_Army_Number.Value) Or Trim(Me.txt_Edited_Combatant_Name.Value) = "" Then

                MsgBox ("Please update the Army number and then click this button")

                Exit Sub

            End If
End If

'If IsNull(Trim(Me.txt_Edited_Combatant_Name.Value)) Or Trim(Me.txt_Edited_Combatant_Name.Value) = "" Then
'
'
'    MsgBox "Combatant Name cannot be blank. Please enter a valid Combatant Name."
'
'    Me.txt_Edited_Combatant_Name.Value = "NA"
'
'    Exit Sub
'
'End If


present_Army_Number = Me.txt_Present_Army_Number.Value

edited_Army_Number = Me.txt_Edited_Army_Number.Value

present_Rank_Type = Me.txt_Present_Rank_Type.Value

edited_Rank_Type = Me.txt_Edited_Rank_Type.Value

returned_Value = Is_Army_Number_Pattern_Correct(present_Army_Number, edited_Army_Number, present_Rank_Type, edited_Rank_Type)

        Debug.Print returned_Value

        If returned_Value = False Then

                If cmb_Select_Option.Value = "Change Rank" Then

                    Me.cmb_Select_Option.Enabled = True
                    Me.cmb_Selected_Rank.Enabled = True
                    Me.txt_Edited_Army_Number.Enabled = False
                    Me.cmd_Save_Army_No_Rank_Changes.Enabled = True
                    Me.cmb_Select_Option.Value = "Select Rank"


                End If

         ' Else



        End If



   If returned_Value = True Then

   ' Enable and Disable relevant controls - I need to include the instructions

   ' Capture Rank Id to be used later in this program

                If IsNull(Me.cmb_Selected_Rank) Then

                selected_Rank_Id = 0

                Else

                selected_Rank_Id = Me.cmb_Selected_Rank.Value

                End If




   ' When both have to be updated sqlStr = "UPDATE tbl_Combatant SET Rank_Id = ? WHERE Combatant_Id = " & present_Combatant_Id
   ' When rank id has to be updated  sqlStr = Set_SQL_Case(present_Combatant_Id, selected_Rank_Id, edited_Army_Number)

            ConnectDatabase ' calling program in module Mdl_ADODB_Connection

            Dim rs As New ADODB.Recordset

            Dim cmd As ADODB.Command

            Set cmd = New ADODB.Command

            cmd.ActiveConnection = dbConn


             ' present_Combatant_Id As Integer, selected_Rank_Id As Integer, edited_Army_Number As String)

             ' Case - Selected Option = Change Army No

             If Me.cmb_Select_Option = "Change Army No" Then

               sqlStr = "UPDATE tbl_Combatant SET Combatant_Army_Number = ? WHERE Combatant_Id = " & present_Combatant_Id



                        With cmd
                        .CommandText = sqlStr
                        .CommandType = adCmdText
                        .Parameters.Append .CreateParameter("Combatant_Army_Number", adVarChar, adParamInput, 255, edited_Army_Number)
                    End With




             End If


             ' if option is Change Rank


             'By Kariapp jayashree and Prashant  feb 6, 2025 at 5.21
             If Me.cmb_Select_Option = "Change Rank" Then
             sqlStr = "UPDATE tbl_Combatant SET Rank_Id=?  WHERE Combatant_Id = " & present_Combatant_Id

              With cmd
                        .CommandText = sqlStr
                        .CommandType = adCmdText
                        .Parameters.Append .CreateParameter("Rank_Id", adInteger, adParamInput, 255, selected_Rank_Id)
                    End With

             End If


             ' if option is Change both

             'By jayashree and Prashant  feb 6, 2025 at 5.30
             If Me.cmb_Select_Option = "Change Both" Then
             sqlStr = "UPDATE tbl_Combatant SET Combatant_Army_Number = ?,Rank_Id = ? WHERE Combatant_Id = " & present_Combatant_Id

              With cmd
                        .CommandText = sqlStr
                        .CommandType = adCmdText
                        .Parameters.Append .CreateParameter("Combatant_Army_Number", adVarChar, adParamInput, 255, edited_Army_Number)
                        .Parameters.Append .CreateParameter("Rank_Id", adInteger, adParamInput, 255, selected_Rank_Id)
                    End With

             End If



'  sqlStr = "UPDATE tbl_Combatant SET Combatant_Army_Number = ?, Rank_Id = ? WHERE Combatant_Id = " & present_Combatant_Id

            cmd.Execute

                MsgBox ("The Combatant Record has been updated. Please check the new values on the left of this form")

              CloseDatabase

              Me.Requery ' refreshing all the values after update

              Me.Refresh




   End If




   ' Enable and Disable relevant controls - I need to include the instructions
   Call Disable_Controls_After_Save ' this program disable controls and set values correctly



End Sub

Private Sub cmd_Save_Army_Number_Click()

If Me.txt_Edited_Army_Number.Value = "NA" Then

    MsgBox ("Please update the Army number and then click this button")

    Exit Sub

End If

' All four varibales should get values


present_Army_Number = Me.txt_Present_Army_Number.Value

edited_Army_Number = Me.txt_Edited_Army_Number.Value

present_Rank_Type = Me.txt_Present_Rank_Type.Value

edited_Rank_Type = Me.txt_Edited_Rank_Type.Value


' Check if the entered Army number pattern is correct.

 'returned_Value = IsArmyNumberPatternCorrect(current_Rank_Type, edited_Army_Number)

 returned_Value = Is_Army_Number_Pattern_Correct(present_Army_Number, edited_Army_Number, present_Rank_Type, edited_Rank_Type)

        Debug.Print returned_Value


' If correct, save the Army Number


If returned_Value = True Then

            ConnectDatabase

            Dim selected_Combatant_Id As Integer

            Dim sqlStr As String

            Dim rs As New ADODB.Recordset

            Dim cmd As ADODB.Command

            Set cmd = New ADODB.Command

            cmd.ActiveConnection = dbConn

            'By j,K,p feb13 07:07
            'selected_Combatant_Id = Me.txt_Combatant_Id.Value
            selected_Combatant_Id = Me.txt_Present_Combatant_Id.Value



            sqlStr = "UPDATE tbl_Combatant SET Combatant_Army_Number = ? WHERE Combatant_Id = " & selected_Combatant_Id



                With cmd
                .CommandText = sqlStr
                .CommandType = adCmdText
                .Parameters.Append .CreateParameter("Combatant_Army_Number", adVarChar, adParamInput, 255, Me.txt_Edited_Army_Number.Value)
            End With

                cmd.Execute

                MsgBox ("The Army Number has been updated.")

              CloseDatabase

              Me.Requery ' refreshing all the values after update

              Me.Refresh


      ' Pause for a short time (e.g., 1 second)
        'Application.Wait (Now + TimeValue("0:00:01"))

'       Sleep 1000



'             current_Army_Number = DLookup("Combatant_Army_Number", "tbl_Combatant", "Combatant_Id = " & selected_Combatant_Id)
'                Me.txt_Current_Army_Number.Value = current_Army_Number


             ' Me.txt_Current_Army_Number.Value = Me.txt_Edit_Army_Number.Value ' making sure that the updated value is seen as the current value after update. Ideally should check from database, not from text box.

           Else: Me.txt_Edited_Army_Number.SetFocus


                 Me.txt_Edited_Army_Number.Enabled = True
                 'by j,k,p,feb 13 07:07
                ' Me.cmd_Save_Army_Number.Enabled = True
                 Me.cmb_Selected_Rank.Enabled = True
                 'By J,K,P feb 13 07:10
                 'Me.cmd_Save_Rank.Enabled = True

                 MsgBox ("Please correct the combination of Army No and Rank to ensure that the correct data is entered.")



           Exit Sub

   End If



End Sub


Private Sub cmd_Save_Name_Click()


If IsNull(Trim(Me.txt_Edited_Combatant_Name.Value)) Or Trim(Me.txt_Edited_Combatant_Name.Value) = "" Then


    MsgBox "Combatant Name cannot be blank. Please enter a valid Combatant Name."

    Me.txt_Edited_Combatant_Name.Value = "NA"

    Exit Sub

End If


'Call TestNameValidation


' check for minimum size and save to the Combatant_Name field regular expression for minimum of 3 characters  ^[a-zA-Z]{3,}$
' get the name of the combatant from the text box - default value is NA to avoid null

'Dim edited_Combatant_Name As String

edited_Combatant_Name = Me.txt_Edited_Combatant_Name.Value


' Dim regex As Object
'    Set regex = CreateObject("VBScript.RegExp")
'
'    With regex
'        .pattern = "^[a-zA-Z]{3,}$"
'        .IgnoreCase = True
'        .Global = False
'    End With
'
'    Is_Valid_Name = regex.Test(edited_Combatant_Name)



    If Is_Valid_Name(edited_Combatant_Name) = True Then

        MsgBox "The name is valid"

        ' Update the name
        Call Update_Name

        Else

            MsgBox "The Name is not valid"


    End If



End Sub
'By j,K,p feb 13 7:11

'Private Sub cmd_Save_Rank_Click()



' All four varibales should get values


'present_Army_Number = Me.txt_Present_Army_Number.Value

'edited_Army_Number = Me.txt_Edited_Army_Number.Value

'present_Rank_Type = Me.txt_Present_Rank_Type.Value

'edited_Rank_Type = Me.txt_Edited_Rank_Type.Value


 'returned_Value = IsArmyNumberPatternCorrect(present_Army_Number, edited_Army_Number, present_Rank_Type, edited_Rank_Type)

     ' Debug.Print returned_Value


'Dim edited_Rank_Id As Integer
'
'Dim current_Army_Number As String
'
'Dim Selected_Rank_Type As String
'
'Dim returned_Value As Variant

'current_Army_Number = Me.txt_Current_Army_Number

'edited_Rank = Me.cmb_Selected_Rank.Value

'current_Army_Number =
'Selected_Rank_Type = Me.txt_Selected_Rank_Type_Name.Value



' Check if the entered Army number pattern is correct.

 'returned_Value = IsArmyNumberPatternCorrect(Selected_Rank_Type, current_Army_Number)

       ' Debug.Print returned_Value


' If correct, save the Army Number


'If returned_Value = True Then

           ' ConnectDatabase

           ' Dim selected_Combatant_Id As Integer

          '  Dim sqlStr As String

           ' Dim rs As New ADODB.Recordset

            'Dim cmd As ADODB.Command
           '
            'Set cmd = New ADODB.Command
            '
            'cmd.ActiveConnection = dbConn

            'selected_Combatant_Id = Me.txt_Combatant_Id.Value



            'sqlStr = "UPDATE tbl_Combatant SET Rank_Id = ? WHERE Combatant_Id = " & selected_Combatant_Id



              '  With cmd
                '.CommandText = sqlStr
                '.CommandType = adCmdText
                '.Parameters.Append .CreateParameter("Rank_Id", adInteger, adParamInput, 255, Me.cmb_Selected_Rank.Value)
           ' End With

               ' cmd.Execute


             ' CloseDatabase

              'Me.Requery ' refreshing all the values after update

              'Me.Refresh


          ' Else: Me.cmb_Selected_Rank.SetFocus

'                 Me.txt_Edit_Army_Number.Enabled = True
'                 Me.cmd_Save_Army_Number.Enabled = True
'                 Me.cmb_Selected_Rank.Enabled = True
'                 Me.cmd_Save_Rank.Enabled = True
'
                ' MsgBox ("Please correct the combination of Army No and Rank to ensure that the correct data is entered.")

           'Exit Sub

   'End If










'End Sub

Private Sub Form_Load()


Me.cmb_Select_Option.Value = "Click Drop Down"

Me.cmb_Selected_Rank.Requery


present_Combatant_Id = Me.txt_Present_Combatant_Id.Value

present_Army_Number = Me.txt_Present_Army_Number.Value

present_Rank_Type = Me.txt_Present_Rank_Type.Value

edited_Army_Number = Me.txt_Edited_Army_Number.Value

edited_Rank_Type = Me.txt_Edited_Rank_Type.Value



End Sub

Private Sub txt_Edited_Army_Number_LostFocus()

edited_Army_Number = txt_Edited_Army_Number.Value

Me.cmd_Save_Army_No_Rank_Changes.Enabled = True ' Goverdhan Feb 5, enable here when the user had decided the Army number to change.



End Sub

'Public Function Set_SQL_Case(present_Combatant_Id As Integer, selected_Rank_Id As Integer, edited_Army_Number As String)
'
''Public Function Set_SQL_Case()
'
'
'            '    Dim sqlStr As String
'
'                If Me.cmb_Select_Option.Value = "Change Army No" Then
'
'                    sqlStr = "UPDATE tbl_Combatant SET Combatant_Army_Number = ? WHERE Combatant_Id = " & present_Combatant_Id
'
'                ElseIf Me.cmb_Select_Option.Value = "Change Rank" Then
'
'                     sqlStr = "UPDATE tbl_Combatant SET Rank_Id = ? WHERE Combatant_Id = " & present_Combatant_Id
'
'                 ElseIf Me.cmb_Select_Option.Value = "Change Both" Then
'
'
'
'
'                   sqlStr = "UPDATE tbl_Combatant SET Combatant_Army_Number = ?, Rank_Id = ? WHERE Combatant_Id = " & present_Combatant_Id
'
'
'             End If
'
'      Set_SQL_Case = sqlStr ' the function name is used to assign the return value
'
'
'
'End Function



Public Function Is_Valid_Name(edited_Combatant_Name As String) As Boolean


 Dim regex As Object
    Set regex = CreateObject("VBScript.RegExp")

    With regex
        .pattern = "^[a-zA-Z ]{3,}$"
        .IgnoreCase = True
        .Global = False
    End With

    Is_Valid_Name = regex.Test(edited_Combatant_Name)

End Function

Sub TestNameValidation()
    Dim name As String
    name = "JohnDoe"

    If Is_Valid_Name(name) Then
        MsgBox "The name is valid."
    Else
        MsgBox "The name is not valid."
    End If
End Sub


Public Sub Update_Name()

' Open the database and execute the sql to update

Debug.Print present_Combatant_Id

ConnectDatabase

Dim rs As New ADODB.Recordset

            Dim cmd As ADODB.Command

            Set cmd = New ADODB.Command

            cmd.ActiveConnection = dbConn

        sqlStr = "UPDATE tbl_Combatant SET Combatant_Name = ? WHERE Combatant_Id = " & present_Combatant_Id



                        With cmd
                        .CommandText = sqlStr
                        .CommandType = adCmdText
                        .Parameters.Append .CreateParameter("edited_Combatant_Name", adVarChar, adParamInput, 255, edited_Combatant_Name)
                    End With
            cmd.Execute

                MsgBox ("The Combatant Record has been updated. Please check the new values on the left of this form")

              CloseDatabase

              Me.Requery ' refreshing all the values after update

              Me.Refresh

              Call Disable_Controls_After_Save ' to ensure that all controls are in the form load state.


End Sub

Public Sub Disable_Controls_After_Save()

Me.txt_Edited_Army_Number.Value = "NA"
Me.txt_Edited_Army_Number.Enabled = False

Me.cmb_Selected_Rank.Value = Null
Me.cmb_Selected_Rank.Enabled = False

Me.txt_Edited_Rank_Type.Value = "NA"
Me.txt_Edited_Rank_Type.Enabled = False

Me.txt_Edited_Combatant_Name.Value = "NA"
Me.txt_Edited_Combatant_Name.Enabled = False


Me.cmb_Selected_Rank.Requery
Me.cmb_Selected_Rank.Enabled = False

Me.cmb_Select_Option.Value = "Click Drop Down"


End Sub


Private Sub txt_Edited_Combatant_Name_LostFocus()
'By jayashree and Prashant for testing 10:24 feb 6 2025
'Me.cmd_Save_Name.Enabled = True
End Sub

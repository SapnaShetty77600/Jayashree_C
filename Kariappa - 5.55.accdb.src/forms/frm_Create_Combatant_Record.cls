Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public returned_Value As Boolean ' to hold the value after checking Army Number Pattern
Public input_Army_Number As String ' to hold the Army number that the user has entered
Public Selected_Rank_Type As Integer
Public regular_Expression As String
Public army_Number_To_Be_Processed   As String
Public input_Combatant_Name As String
Public returned_Value_For_Name_Check As Boolean ' to hold the value after checking name
Public selected_Sub_Unit As Integer
Public selected_CHQ_Pl As Integer
Public selected_Rank As Integer





Private Sub cmb_Rank_Type_BeforeUpdate(Cancel As Integer)

Me.cmb_Rank.Requery

End Sub

Private Sub cmb_Select_Sub_Unit_BeforeUpdate(Cancel As Integer)


Me.cmb_Select_CHQ_Pl.Requery

End Sub

Private Sub cmd_Save_New_Combatant_Data_Click()

' check if Sub Unit selected
' check if CHQ_Pl selected
' check if Rank type selected
' check if Army number entered
' check if Name entered

If IsNull(Me.cmb_Select_Sub_Unit) Then

    MsgBox ("Please select the Sub Unit before Saving this record.")

    Exit Sub

  End If


    If IsNull(Me.cmb_Select_CHQ_Pl) Then

    MsgBox ("Please select related CHQ / Pl for the selected Sub Unit before Saving this record.")
    Exit Sub
 End If



If IsNull(Me.cmb_Rank_Type) Then

                MsgBox ("Please select type of rank before saving this record.")
                Exit Sub

End If


If IsNull(Me.cmb_Rank) Then

  MsgBox ("Please select  rank before saving this record.")
                Exit Sub

End If


If IsNull(Me.txt_Army_Number) Then

                    MsgBox ("The Army No cannot be blank.  Please enter a correct Army No based on the Rank Type selected and then save this record.")

                     Exit Sub



  End If


If IsNull(Me.cmb_Rank) Then

  MsgBox ("Please select  rank before saving this record.")
                Exit Sub

End If



If IsNull(Me.txt_Combatant_Name) Then

                        MsgBox ("The name of the Combatant cannot be blank.  Please enter a valid Name and then save this record.")

                        Exit Sub

  End If





If returned_Value = False Then

    MsgBox ("Please enter a correct Army No before saving this record.")
    Exit Sub

End If

If returned_Value_For_Name_Check = False Then

    MsgBox ("Please enter a correct name of the Combatant before saving this record.")
    Exit Sub

End If


' use the variable and values below to save the record.  We are using if not IsNull to make sure that there is a value.
If Not IsNull(Me.cmb_Select_Sub_Unit.Value) Then

selected_Sub_Unit = Me.cmb_Select_Sub_Unit.Value

    Else

    MsgBox ("Sub Unit has not been selected.  Please select and then proceed.")
    Exit Sub


End If

If Not IsNull(Me.cmb_Select_CHQ_Pl.Value) Then

selected_CHQ_Pl = Me.cmb_Select_CHQ_Pl.Value

Else

    MsgBox ("CHQ / Pl has not been selected.  Please select and then proceed.")
    Exit Sub


End If

If Not IsNull(Me.cmb_Rank.Value) Then
selected_Rank = Me.cmb_Rank.Value

Else

    MsgBox ("Rank has not been selected.  Please select and then proceed.")
    Exit Sub


End If

If Not IsNull(Me.txt_Army_Number.Value) Then

input_Army_Number = Me.txt_Army_Number

Else

    MsgBox ("Army No has not been entered.  Please enter and then proceed.")
    Exit Sub


End If

If Not IsNull(Me.txt_Combatant_Name.Value) Then

input_Combatant_Name = Me.txt_Combatant_Name

Else

    MsgBox ("Combatant Name has not been entered.  Please enter and then proceed.")
    Exit Sub


End If

' Save the record

' After saving the record call the Sub Procedure Reset_Controls

'Inserting Record Into tbl_Combatant by Jayashree,Prashant,Kariappa 11:47 feb 10 2025

 ConnectDatabase ' calling program in module Mdl_ADODB_Connection
 Dim sqlStr As String


            Dim rs As New ADODB.Recordset

            Dim cmd As ADODB.Command

            Set cmd = New ADODB.Command

            cmd.ActiveConnection = dbConn

               sqlStr = "INSERT INTO tbl_Combatant(Combatant_Army_Number,Combatant_Name,Rank_Id,Sub_Unit_Id,Chq_Platoon_Id) Values(?,?,?,?,?)"



                        With cmd
                        .CommandText = sqlStr
                        .CommandType = adCmdText
                        .Parameters.Append .CreateParameter("Combatant_Army_Number", adVarChar, adParamInput, 255, input_Army_Number)
                        .Parameters.Append .CreateParameter("Combatant_Name", adVarChar, adParamInput, 255, input_Combatant_Name)
                        .Parameters.Append .CreateParameter("Rank_Id", adInteger, adParamInput, 255, selected_Rank)
                        .Parameters.Append .CreateParameter("Sub_Unit_Id", adInteger, adParamInput, 255, selected_Sub_Unit)
                        .Parameters.Append .CreateParameter("Chq_Platoon_Id", adInteger, adParamInput, 255, selected_CHQ_Pl)
                    End With



            cmd.Execute

                MsgBox ("The Combatant Record has been Created. ")

              CloseDatabase

Call Reset_Controls
End Sub



Private Sub Form_Load()

Call Reset_Controls

'Me.cmb_Select_Sub_Unit = Null
'
'Me.cmb_Select_CHQ_Pl = Null
'
'Me.cmb_Rank_Type = Null
'
'Me.cmb_Rank = Null
'
'Me.txt_Army_Number.Value = "Blank"
'
'Me.txt_Combatant_Name.Value = "Blank"
'
'returned_Value = False
'
'returned_Value_For_Name_Check = False


End Sub



Private Sub txt_Army_Number_LostFocus()

' get the Army number

Selected_Rank_Type = Me.cmb_Rank_Type.Value

'If selected_Rank_Type < 1 Then  ' convert this to is null check
'
'
'    MsgBox "Please select a Rank Type and then enter the Army Number"
'
'    Exit Sub
'
'End If

If IsNull(Me.cmb_Rank_Type) Then

MsgBox "Please select a Rank Type and then enter the Army Number"

    Exit Sub

End If

If IsNull(Me.txt_Army_Number) Then

    MsgBox "Please enter a valid Army Number and then save this record. "

Exit Sub

End If


'MsgBox "Selected Rank Type is " & selected_Rank_Type


input_Army_Number = Me.txt_Army_Number

' if Rank Type is not selected - warn user and exit sub


returned_Value = Is_Army_Number_For_Create_Correct(input_Army_Number, Selected_Rank_Type)

    '    Debug.Print returned_Value




' Call module to check the army number pattern.  Call a function in the module.

End Sub



Private Sub txt_Combatant_Name_LostFocus()


input_Combatant_Name = Me.txt_Combatant_Name.Value

If IsNull(Me.txt_Combatant_Name) Or Me.txt_Combatant_Name.Value = "Blank" Then
' Blank is the default value

    ' Program to execute if the combo box is null
    MsgBox "Please enter a valid value for the name of the Combatant."

    'Me.txt_Combatant_Name.Undo
    Me.txt_Combatant_Name = Null  'Edited at 11:25 by Prashant, Jayashree, Kariappa

    Exit Sub
End If




    returned_Value_For_Name_Check = Is_Combatant_Name_For_Create_Correct(input_Combatant_Name)

    Debug.Print returned_Value_For_Name_Check

    If returned_Value_For_Name_Check = False Then



        Me.txt_Combatant_Name.SetFocus

    End If





End Sub




Public Sub Reset_Controls()

Me.cmb_Select_Sub_Unit = Null

Me.cmb_Select_CHQ_Pl = Null

Me.cmb_Rank_Type = Null

Me.cmb_Rank = Null

Me.txt_Army_Number.Value = "Blank"

Me.txt_Combatant_Name.Value = "Blank"

returned_Value = False

returned_Value_For_Name_Check = False


End Sub

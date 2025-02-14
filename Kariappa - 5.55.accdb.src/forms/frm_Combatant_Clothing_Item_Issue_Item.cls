Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub btnSaveIssueData_Click()
'By Jayashree,Kariappa,Prashant 4:11 feb 10 2025


Dim enteredDate As Date
Dim correctIssueDate As Date

enteredDate = Me.txtIssueDate.Value

correctIssueDate = Me.Due_Date.Value


If enteredDate < correctIssueDate Then


   MsgBox ("Please enter a date equal to or greater than the due date")
      Me.txtIssueDate.Value = Null
      Me.btnSaveIssueData.Enabled = False
Exit Sub

'Else
'Me.btnSaveIssueData.Enabled = True
End If




' Calculate the new due date for the item.  Issue date + months is the new due date.

Dim newIssueDate As Date

Dim lifeOfItem As Integer

lifeOfItem = Me.Clothing_Item_Life

Dim dateOfIssue As Date

dateOfIssue = txtIssueDate

newIssueDate = DateAdd("m", lifeOfItem, dateOfIssue)

'MsgBox (newIssueDate)

Dim clothingIssueData As Recordset

Set clothingIssueData = CurrentDb.OpenRecordset("tbl_Combatant_Clothing_Card_Item")

clothingIssueData.AddNew

  clothingIssueData!Combatant_Id = Me.Combatant_Id

  clothingIssueData!Clothing_Item_Id = Me.Clothing_Item_Id

  clothingIssueData!Date_Of_Issue = Me.txtIssueDate

  clothingIssueData!Due_Date = newIssueDate



clothingIssueData.Update

clothingIssueData.Close

Set clothingIssueData = Nothing

DoCmd.Beep

MsgBox ("Saved Data")
'By Jayashree,Kariappa,Prashant 4:40 feb 10 2025
 Me.txtIssueDate.Value = Null
 Me.btnSaveIssueData.Enabled = False


End Sub



Private Sub Form_Load()
'Me.txtIssueDate.Value = Date

End Sub



Private Sub txtIssueDate_Change()
btnSaveIssueData.Enabled = True
End Sub

Private Sub txtIssueDate_Click()
'Dim enteredDate As Date
'Dim correctIssueDate As Date

'enteredDate = Me.txtIssueDate.Value

'correctIssueDate = Me.Due_Date.Value


'If enteredDate < correctIssueDate Then
   'Me.txtIssueDate.Value = Null
   '
  ' MsgBox ("Please enter a date equal to or greater than the due date")

'By Jayashree,Kariappa,Prashant 4:11 feb 07 2025
'Else
'Me.btnSaveIssueData.Enabled = True
'End If
End Sub

Private Sub txtIssueDate_KeyPress(KeyAscii As Integer) '4:25 by Jayashree, Prashant, Kariappa
    ' Prevent manual entry by setting KeyAscii to 0
    'If KeyAscii <> 9 Then

    KeyAscii = 0
    MsgBox "Please use the date picker to select a date.", vbInformation

   ' End If

End Sub

Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub btnCancel_Click()
'BY jayashree,kariapp,Prashant 11:35 Feb14 2025
'Quit

Me.txtUserName.Value = ""
Me.txtpassword.Value = ""
End Sub

Private Sub btnLogin_Click()

'BY jayashree,kariapp,Prashant 11:42 Feb14 2025
Dim ID As Long, PW As String
ID = Nz(DLookup("UserId", "tbl_User", "UserName=""" & txtUserName & """"), 0)


If ID = 0 Then
Me.user.Visible = True
Me.pass.Visible = False
Me.txtUserName.Value = ""
Exit Sub
'Quit
End If

PW = Nz(DLookup("Password", "tbl_User", "UserId=" & ID), "")

If PW <> Nz(txtpassword, "") Then
Me.pass.Visible = True
Me.user.Visible = False
Me.txtpassword.Value = ""
Exit Sub

'Quit
Else
'TempVars("UserName") = txtUserName.Value
DoCmd.OpenForm "Switchboard"
DoCmd.Close acForm, Me.name, acSaveYes


End If

End Sub



Private Sub txtpassword_GotFocus()
Me.pass.Visible = False
Me.user.Visible = False

End Sub

Private Sub txtUserName_GotFocus()
Me.user.Visible = False
Me.pass.Visible = False
End Sub

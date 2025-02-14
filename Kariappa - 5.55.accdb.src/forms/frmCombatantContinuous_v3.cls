Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database







Private Sub btnFetchCombatant_Click()

'by Sapna,jayashree,Kariappa,Prashant feb 13 2025 6:45

Me.Filter = "[Sub_Unit_Name] LIKE '*" & cmb_Sub_Unit & "*' and [CHQ_Pl_Name] LIKE '*" & cmb_Chq_Pl & "*' and [Combatant_Army_Number] LIKE '*" & txtArmyNumber & "*' and [Combatant_Name] LIKE '*" & txtname & "*' and [Rank_Name] LIKE  '" & cmb_search_rank & "*'"

Me.FilterOn = True



'By jayashree,Kariappa,Prashant 2:45 feb 10 2025
 ' Me.Requery
  'MsgBox (" clicked fetch combatant button")
  'Me.Refresh



End Sub

Private Sub Command47_Click()
 Dim CID As Integer
    CID = Me.Combatant_Id ' Assuming txtCID is the control holding the CID value
    DoCmd.OpenForm "frm_Combatant_Basic_Data_Edit", , , , , , CID
    CID = 0

End Sub


Private Sub cmb_Sub_Unit_Change()
Me.cmb_Chq_Pl.Requery

End Sub

Private Sub Form_Load()
Me.FilterOn = False
End Sub

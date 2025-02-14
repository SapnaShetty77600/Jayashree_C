Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub btnIssueSelectedClothingItem_Click()

' for details of this program see notes made by me.  I also need to understand it better.



Dim CID As Integer

Dim clothingItemId As Integer

CID = Me!Combatant_Id

' clothingItemId = Me!Clothing_Item_Id

clothingItemId = Me!Clothing_Item_Id


'MsgBox CID

'MsgBox clothingItemId

' open form with a sql query

Dim qryIssueItem As String

'qryIssueItem = where CID = Combatant_Clothing_Card_Item.Combatant.Id and clothingItemId = Combatant

DoCmd.OpenForm "frm_Combatant_Clothing_Item_Issue_Item", , , "Combatant_Id=" & CID & "AND Clothing_Item_Id=" & clothingItemId



End Sub

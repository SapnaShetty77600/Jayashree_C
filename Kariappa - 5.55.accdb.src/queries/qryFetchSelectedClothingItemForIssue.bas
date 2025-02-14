Operation =1
Option =0
Begin InputTables
    Name ="tbl_Sub_Unit"
    Name ="tbl_Rank"
    Name ="tbl_Chq_Pl"
    Name ="tbl_Combatant"
    Name ="tbl_Unit"
    Name ="tbl_Clothing_Item"
    Name ="tbl_Combatant_Clothing_Card_Item"
End
Begin OutputColumns
    Expression ="tbl_Combatant_Clothing_Card_Item.Combatant_Id"
    Expression ="tbl_Combatant.Combatant_Army_Number"
    Expression ="tbl_Rank.Rank_Name"
    Expression ="tbl_Combatant.Combatant_Name"
    Expression ="tbl_Combatant_Clothing_Card_Item.Clothing_Card_Item_Id"
    Expression ="tbl_Combatant_Clothing_Card_Item.Clothing_Item_Id"
    Expression ="tbl_Clothing_Item.Clothing_Item_Name"
    Expression ="tbl_Clothing_Item.Clothing_Item_Life"
    Expression ="tbl_Combatant_Clothing_Card_Item.Date_Of_Issue"
    Expression ="tbl_Combatant_Clothing_Card_Item.Due_Date"
    Expression ="tbl_Sub_Unit.Sub_Unit_Name"
    Expression ="tbl_Chq_Pl.CHQ_Pl_Name"
    Expression ="tbl_Unit.Unit_Name"
End
Begin Joins
    LeftTable ="tbl_Unit"
    RightTable ="tbl_Clothing_Item"
    Expression ="tbl_Unit.Unit_Id = tbl_Clothing_Item.Unit_Id"
    Flag =1
    LeftTable ="tbl_Clothing_Item"
    RightTable ="tbl_Combatant_Clothing_Card_Item"
    Expression ="tbl_Clothing_Item.Clothing_Item_Id = tbl_Combatant_Clothing_Card_Item.Clothing_I"
        "tem_Id"
    Flag =1
    LeftTable ="tbl_Chq_Pl"
    RightTable ="tbl_Combatant"
    Expression ="tbl_Chq_Pl.CHQ_Pl_Id = tbl_Combatant.Chq_Platoon_Id"
    Flag =1
    LeftTable ="tbl_Combatant"
    RightTable ="tbl_Combatant_Clothing_Card_Item"
    Expression ="tbl_Combatant.Combatant_Id = tbl_Combatant_Clothing_Card_Item.Combatant_Id"
    Flag =1
    LeftTable ="tbl_Rank"
    RightTable ="tbl_Combatant"
    Expression ="tbl_Rank.Rank_Id = tbl_Combatant.Rank_Id"
    Flag =1
    LeftTable ="tbl_Sub_Unit"
    RightTable ="tbl_Chq_Pl"
    Expression ="tbl_Sub_Unit.Sub_Unit_Id = tbl_Chq_Pl.Sub_Unit_Id"
    Flag =1
    LeftTable ="tbl_Sub_Unit"
    RightTable ="tbl_Combatant"
    Expression ="tbl_Sub_Unit.Sub_Unit_Id = tbl_Combatant.Sub_Unit_Id"
    Flag =1
    LeftTable ="tbl_Unit"
    RightTable ="tbl_Chq_Pl"
    Expression ="tbl_Unit.Unit_Id = tbl_Chq_Pl.Unit_Id"
    Flag =1
    LeftTable ="tbl_Unit"
    RightTable ="tbl_Combatant"
    Expression ="tbl_Unit.Unit_Id = tbl_Combatant.Unit_Id"
    Flag =1
    LeftTable ="tbl_Unit"
    RightTable ="tbl_Rank"
    Expression ="tbl_Unit.Unit_Id = tbl_Rank.Unit_Id"
    Flag =1
    LeftTable ="tbl_Unit"
    RightTable ="tbl_Sub_Unit"
    Expression ="tbl_Unit.Unit_Id = tbl_Sub_Unit.Unit_Id"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Clothing_Item.Clothing_Item_Life"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Clothing_Item.Clothing_Item_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Clothing_Item_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Unit.Unit_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Clothing_Card_Item_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Chq_Pl.CHQ_Pl_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sub_Unit.Sub_Unit_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Rank_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Due_Date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Army_Number"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Date_Of_Issue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Combatant_Id"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1138
    Bottom =836
    Left =-1
    Top =-1
    Right =1114
    Bottom =397
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1022
        Top =224
        Right =1166
        Bottom =368
        Top =0
        Name ="tbl_Sub_Unit"
        Name =""
    End
    Begin
        Left =643
        Top =34
        Right =787
        Bottom =178
        Top =0
        Name ="tbl_Rank"
        Name =""
    End
    Begin
        Left =868
        Top =66
        Right =1012
        Bottom =210
        Top =0
        Name ="tbl_Chq_Pl"
        Name =""
    End
    Begin
        Left =183
        Top =5
        Right =327
        Bottom =149
        Top =0
        Name ="tbl_Combatant"
        Name =""
    End
    Begin
        Left =1060
        Top =12
        Right =1204
        Bottom =156
        Top =0
        Name ="tbl_Unit"
        Name =""
    End
    Begin
        Left =379
        Top =7
        Right =523
        Bottom =151
        Top =0
        Name ="tbl_Clothing_Item"
        Name =""
    End
    Begin
        Left =424
        Top =303
        Right =738
        Bottom =447
        Top =0
        Name ="tbl_Combatant_Clothing_Card_Item"
        Name =""
    End
End

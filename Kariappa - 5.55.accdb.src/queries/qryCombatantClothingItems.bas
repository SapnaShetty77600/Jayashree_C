dbMemo "SQL" ="SELECT tbl_Combatant_Clothing_Card_Item.Combatant_Id, tbl_Combatant.Combatant_Ar"
    "my_Number, tbl_Rank.Rank_Name, tbl_Combatant.Combatant_Name, tbl_Combatant_Cloth"
    "ing_Card_Item.Clothing_Card_Item_Id, tbl_Combatant_Clothing_Card_Item.Clothing_I"
    "tem_Id, tbl_Clothing_Item.Clothing_Item_Name, tbl_Clothing_Item.Clothing_Item_Li"
    "fe, tbl_Combatant_Clothing_Card_Item.Date_Of_Issue, tbl_Combatant_Clothing_Card_"
    "Item.Due_Date, tbl_Sub_Unit.Sub_Unit_Name, tbl_Chq_Pl.CHQ_Pl_Name, tbl_Unit.Unit"
    "_Name\015\012FROM tbl_Sub_Unit INNER JOIN (tbl_Rank INNER JOIN ((tbl_Chq_Pl INNE"
    "R JOIN tbl_Combatant ON tbl_Chq_Pl.CHQ_Pl_Id = tbl_Combatant.Chq_Platoon_Id) INN"
    "ER JOIN ((tbl_Unit INNER JOIN tbl_Clothing_Item ON tbl_Unit.Unit_Id = tbl_Clothi"
    "ng_Item.Unit_Id) INNER JOIN tbl_Combatant_Clothing_Card_Item ON tbl_Clothing_Ite"
    "m.Clothing_Item_Id = tbl_Combatant_Clothing_Card_Item.Clothing_Item_Id) ON (tbl_"
    "Combatant.Combatant_Id = tbl_Combatant_Clothing_Card_Item.Combatant_Id) AND (tbl"
    "_Unit.Unit_Id = tbl_Chq_Pl.Unit_Id) AND (tbl_Unit.Unit_Id = tbl_Combatant.Unit_I"
    "d)) ON (tbl_Rank.Rank_Id = tbl_Combatant.Rank_Id) AND (tbl_Unit.Unit_Id = tbl_Ra"
    "nk.Unit_Id)) ON (tbl_Sub_Unit.Sub_Unit_Id = tbl_Chq_Pl.Sub_Unit_Id) AND (tbl_Sub"
    "_Unit.Sub_Unit_Id = tbl_Combatant.Sub_Unit_Id) AND (tbl_Unit.Unit_Id = tbl_Sub_U"
    "nit.Unit_Id);\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Combatant_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Clothing_Item.Clothing_Item_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Clothing_Item_Id"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="5415"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Clothing_Card_Item_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Name"
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
        dbText "Name" ="tbl_Clothing_Item.Clothing_Item_Life"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant_Clothing_Card_Item.Date_Of_Issue"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Unit.Unit_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Chq_Pl.CHQ_Pl_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sub_Unit.Sub_Unit_Name"
        dbLong "AggregateType" ="-1"
    End
End

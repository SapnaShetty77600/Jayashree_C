Operation =1
Option =0
Begin InputTables
    Name ="tbl_Chq_Pl"
    Name ="tbl_Sub_Unit"
    Name ="tbl_Rank_Type"
    Name ="tbl_Rank"
    Name ="tbl_Combatant"
End
Begin OutputColumns
    Expression ="tbl_Combatant.Combatant_Id"
    Expression ="tbl_Combatant.Rank_Id"
    Expression ="tbl_Rank.Rank_Name"
    Expression ="tbl_Rank_Type.Rank_Type_Name"
    Expression ="tbl_Combatant.Sub_Unit_Id"
    Expression ="tbl_Sub_Unit.Sub_Unit_Name"
    Expression ="tbl_Combatant.Chq_Platoon_Id"
    Expression ="tbl_Chq_Pl.CHQ_Pl_Name"
    Expression ="tbl_Combatant.Combatant_Army_Number"
    Expression ="tbl_Combatant.Combatant_Name"
End
Begin Joins
    LeftTable ="tbl_Chq_Pl"
    RightTable ="tbl_Combatant"
    Expression ="tbl_Chq_Pl.CHQ_Pl_Id = tbl_Combatant.Chq_Platoon_Id"
    Flag =1
    LeftTable ="tbl_Rank_Type"
    RightTable ="tbl_Rank"
    Expression ="tbl_Rank_Type.Rank_Type_Id = tbl_Rank.Rank_Type"
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
        dbText "Name" ="tbl_Rank_Type.Rank_Type_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Rank_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Chq_Platoon_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Sub_Unit_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Rank_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sub_Unit.Sub_Unit_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Chq_Pl.CHQ_Pl_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Army_Number"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Name"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-48
    Top =40
    Right =2403
    Bottom =1245
    Left =-1
    Top =-1
    Right =2416
    Bottom =654
    Left =50
    Top =0
    ColumnsShown =539
    Begin
        Left =1002
        Top =431
        Right =1218
        Bottom =647
        Top =0
        Name ="tbl_Chq_Pl"
        Name =""
    End
    Begin
        Left =427
        Top =511
        Right =643
        Bottom =727
        Top =0
        Name ="tbl_Sub_Unit"
        Name =""
    End
    Begin
        Left =1066
        Top =172
        Right =1282
        Bottom =388
        Top =0
        Name ="tbl_Rank_Type"
        Name =""
    End
    Begin
        Left =542
        Top =128
        Right =758
        Bottom =344
        Top =0
        Name ="tbl_Rank"
        Name =""
    End
    Begin
        Left =188
        Top =212
        Right =404
        Bottom =428
        Top =0
        Name ="tbl_Combatant"
        Name =""
    End
End

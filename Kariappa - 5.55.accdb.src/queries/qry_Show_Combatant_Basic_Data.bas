Operation =1
Option =0
Begin InputTables
    Name ="tbl_Combatant"
    Name ="tbl_Rank"
    Name ="tbl_Unit"
    Name ="tbl_Rank_Type"
    Name ="tbl_Chq_Pl"
    Name ="tbl_Sub_Unit"
End
Begin OutputColumns
    Expression ="tbl_Combatant.Combatant_Id"
    Expression ="tbl_Combatant.Combatant_Army_Number"
    Expression ="tbl_Combatant.Combatant_Name"
    Expression ="tbl_Sub_Unit.Sub_Unit_Name"
    Expression ="tbl_Chq_Pl.CHQ_Pl_Name"
    Expression ="tbl_Combatant.Rank_Id"
    Expression ="tbl_Rank.Rank_Name"
    Expression ="tbl_Combatant.Sub_Unit_Id"
    Expression ="tbl_Combatant.Chq_Platoon_Id"
    Expression ="tbl_Rank_Type.Rank_Type_Id"
    Expression ="tbl_Rank_Type.Rank_Type_Name"
    Expression ="tbl_Combatant.Combatant_Army_Number"
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
        dbText "Name" ="tbl_Combatant.Sub_Unit_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Rank_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Rank_Id"
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
    Begin
        dbText "Name" ="tbl_Rank_Type.Rank_Type_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank_Type.Rank_Type_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Army_Number"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Chq_Platoon_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Combatant.Combatant_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1001"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1542
    Bottom =828
    Left =-1
    Top =-1
    Right =1518
    Bottom =457
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =150
        Top =115
        Right =374
        Bottom =313
        Top =0
        Name ="tbl_Combatant"
        Name =""
    End
    Begin
        Left =446
        Top =0
        Right =590
        Bottom =144
        Top =0
        Name ="tbl_Rank"
        Name =""
    End
    Begin
        Left =759
        Top =43
        Right =903
        Bottom =187
        Top =0
        Name ="tbl_Unit"
        Name =""
    End
    Begin
        Left =1101
        Top =109
        Right =1245
        Bottom =253
        Top =0
        Name ="tbl_Rank_Type"
        Name =""
    End
    Begin
        Left =975
        Top =304
        Right =1119
        Bottom =448
        Top =0
        Name ="tbl_Chq_Pl"
        Name =""
    End
    Begin
        Left =563
        Top =304
        Right =707
        Bottom =448
        Top =0
        Name ="tbl_Sub_Unit"
        Name =""
    End
End

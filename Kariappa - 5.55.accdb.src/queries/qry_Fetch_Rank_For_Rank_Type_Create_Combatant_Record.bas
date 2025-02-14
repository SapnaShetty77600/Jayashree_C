Operation =1
Option =0
Where ="(((tbl_Rank.Rank_Type)=[Forms]![frm_Create_Combatant_Record]![cmb_Rank_Type]))"
Begin InputTables
    Name ="tbl_Rank"
End
Begin OutputColumns
    Expression ="tbl_Rank.Rank_Id"
    Expression ="tbl_Rank.Rank_Name"
    Expression ="tbl_Rank.Display_Seniority"
    Expression ="tbl_Rank.Rank_Type"
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
        dbText "Name" ="tbl_Rank.Rank_Type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Display_Seniority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Rank_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Rank_Id"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-81
    Top =-26
    Right =2058
    Bottom =1074
    Left =-1
    Top =-1
    Right =2115
    Bottom =564
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =453
        Top =180
        Right =669
        Bottom =396
        Top =0
        Name ="tbl_Rank"
        Name =""
    End
End

Operation =1
Option =0
Begin InputTables
    Name ="tbl_Rank"
    Name ="tbl_Rank_Type"
End
Begin OutputColumns
    Expression ="tbl_Rank.Rank_Id"
    Expression ="tbl_Rank.Rank_Name"
    Expression ="tbl_Rank.Rank_Type"
    Expression ="tbl_Rank_Type.Rank_Type_Name"
    Expression ="tbl_Rank.Display_Seniority"
End
Begin Joins
    LeftTable ="tbl_Rank_Type"
    RightTable ="tbl_Rank"
    Expression ="tbl_Rank_Type.Rank_Type_Id = tbl_Rank.Rank_Type"
    Flag =1
End
Begin OrderBy
    Expression ="tbl_Rank.Display_Seniority"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbByte "RecordsetType" ="0"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Rank.Display_Seniority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank_Type.Rank_Type_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Rank_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Rank_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Rank.Rank_Type"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-12
    Top =31
    Right =2127
    Bottom =1131
    Left =-1
    Top =-1
    Right =2115
    Bottom =554
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =240
        Bottom =222
        Top =0
        Name ="tbl_Rank"
        Name =""
    End
    Begin
        Left =288
        Top =12
        Right =432
        Bottom =156
        Top =0
        Name ="tbl_Rank_Type"
        Name =""
    End
End

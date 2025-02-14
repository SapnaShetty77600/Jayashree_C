Operation =1
Option =0
Where ="(((tbl_Chq_Pl.Sub_Unit_Id)=[Forms]![frm_Edit_Combatant_Basic_Data]![Cmb_selected"
    "SubUnit]))"
Begin InputTables
    Name ="tbl_Chq_Pl"
End
Begin OutputColumns
    Expression ="tbl_Chq_Pl.CHQ_Pl_Id"
    Expression ="tbl_Chq_Pl.CHQ_Pl_Name"
    Expression ="tbl_Chq_Pl.Display_Seniority"
    Expression ="tbl_Chq_Pl.Sub_Unit_Id"
End
Begin OrderBy
    Expression ="tbl_Chq_Pl.Display_Seniority"
    Flag =0
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
        dbText "Name" ="tbl_Chq_Pl.Display_Seniority"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Chq_Pl.CHQ_Pl_Name"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Chq_Pl.CHQ_Pl_Id"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Chq_Pl.Sub_Unit_Id"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1496
    Bottom =836
    Left =-1
    Top =-1
    Right =1472
    Bottom =427
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =72
        Top =18
        Right =288
        Bottom =234
        Top =0
        Name ="tbl_Chq_Pl"
        Name =""
    End
End

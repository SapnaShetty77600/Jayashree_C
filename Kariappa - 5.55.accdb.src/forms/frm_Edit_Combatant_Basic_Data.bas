Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =14200
    DatasheetFontHeight =11
    ItemSuffix =52
    Left =1185
    Top =1710
    Right =15675
    Bottom =9255
    Filter ="[Combatant_Id]=203"
    RecSrcDt = Begin
        0x48fa2a35de4ee640
    End
    RecordSource ="qry_Fetch_Combatant_For_Current_CID"
    DatasheetFontName ="Aptos"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =0
            FontSize =11
            FontName ="Aptos"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =60.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin CommandButton
            TextFontFamily =0
            FontSize =11
            FontWeight =400
            FontName ="Aptos"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            TextFontFamily =0
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Aptos"
            AsianLineBreak =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ListBox
            TextFontFamily =0
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Aptos"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            TextFontFamily =0
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Aptos"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =7560
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2320
                    Top =830
                    Width =1820
                    Height =310
                    Name ="txt_Present_Combatant_Id"
                    ControlSource ="Combatant_Id"

                    LayoutCachedLeft =2320
                    LayoutCachedTop =830
                    LayoutCachedWidth =4140
                    LayoutCachedHeight =1140
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1090
                            Top =830
                            Width =590
                            Height =290
                            Name ="Label1"
                            Caption ="Text0"
                            LayoutCachedLeft =1090
                            LayoutCachedTop =830
                            LayoutCachedWidth =1680
                            LayoutCachedHeight =1120
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2450
                    Top =1550
                    Height =290
                    TabIndex =1
                    Name ="txt_Present_Army_Number"
                    ControlSource ="Combatant_Army_Number"

                    LayoutCachedLeft =2450
                    LayoutCachedTop =1550
                    LayoutCachedWidth =3890
                    LayoutCachedHeight =1840
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1280
                            Top =1540
                            Width =590
                            Height =290
                            Name ="Label3"
                            Caption ="Text2"
                            LayoutCachedLeft =1280
                            LayoutCachedTop =1540
                            LayoutCachedWidth =1870
                            LayoutCachedHeight =1830
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2290
                    Top =2150
                    Height =290
                    TabIndex =2
                    Name ="txt_Present_Rank_Name"
                    ControlSource ="Rank_Name"

                    LayoutCachedLeft =2290
                    LayoutCachedTop =2150
                    LayoutCachedWidth =3730
                    LayoutCachedHeight =2440
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =490
                            Top =2150
                            Width =590
                            Height =290
                            Name ="Label5"
                            Caption ="Text4"
                            LayoutCachedLeft =490
                            LayoutCachedTop =2150
                            LayoutCachedWidth =1080
                            LayoutCachedHeight =2440
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2310
                    Top =2800
                    Height =290
                    TabIndex =3
                    Name ="txt_Present_Combatant_Name"
                    ControlSource ="Combatant_Name"

                    LayoutCachedLeft =2310
                    LayoutCachedTop =2800
                    LayoutCachedWidth =3750
                    LayoutCachedHeight =3090
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =510
                            Top =2800
                            Width =590
                            Height =290
                            Name ="Label7"
                            Caption ="Text6"
                            LayoutCachedLeft =510
                            LayoutCachedTop =2800
                            LayoutCachedWidth =1100
                            LayoutCachedHeight =3090
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2310
                    Top =3480
                    Height =290
                    TabIndex =4
                    Name ="txt_Present_Sub_Unit_Name"
                    ControlSource ="Sub_Unit_Name"

                    LayoutCachedLeft =2310
                    LayoutCachedTop =3480
                    LayoutCachedWidth =3750
                    LayoutCachedHeight =3770
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =510
                            Top =3480
                            Width =590
                            Height =290
                            Name ="Label9"
                            Caption ="Text8"
                            LayoutCachedLeft =510
                            LayoutCachedTop =3480
                            LayoutCachedWidth =1100
                            LayoutCachedHeight =3770
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2340
                    Top =4180
                    Height =290
                    TabIndex =5
                    Name ="txt_Present_CHQ_Pl"
                    ControlSource ="CHQ_Pl_Name"

                    LayoutCachedLeft =2340
                    LayoutCachedTop =4180
                    LayoutCachedWidth =3780
                    LayoutCachedHeight =4470
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =540
                            Top =4180
                            Width =710
                            Height =290
                            Name ="Label11"
                            Caption ="Text10"
                            LayoutCachedLeft =540
                            LayoutCachedTop =4180
                            LayoutCachedWidth =1250
                            LayoutCachedHeight =4470
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8660
                    Top =1430
                    Width =1860
                    Height =290
                    TabIndex =6
                    Name ="txt_Edited_Army_Number"
                    DefaultValue ="\"NA\""
                    OnLostFocus ="[Event Procedure]"

                    LayoutCachedLeft =8660
                    LayoutCachedTop =1430
                    LayoutCachedWidth =10520
                    LayoutCachedHeight =1720
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =5590
                            Top =1460
                            Width =2700
                            Height =290
                            Name ="lbl_Edit_Army_Number"
                            Caption ="Please enter new Army No"
                            LayoutCachedLeft =5590
                            LayoutCachedTop =1460
                            LayoutCachedWidth =8290
                            LayoutCachedHeight =1750
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2460
                    Top =4820
                    Width =2390
                    Height =290
                    TabIndex =7
                    Name ="txt_Present_Rank_Type"
                    ControlSource ="Rank_Type_Name"

                    LayoutCachedLeft =2460
                    LayoutCachedTop =4820
                    LayoutCachedWidth =4850
                    LayoutCachedHeight =5110
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =100
                            Top =4820
                            Width =1870
                            Height =290
                            Name ="Existing Rank Type"
                            Caption ="Existing Rank Type"
                            EventProcPrefix ="Existing_Rank_Type"
                            LayoutCachedLeft =100
                            LayoutCachedTop =4820
                            LayoutCachedWidth =1970
                            LayoutCachedHeight =5110
                        End
                    End
                End
                Begin ComboBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =5
                    ListWidth =1450
                    Left =8630
                    Top =2000
                    Height =300
                    TabIndex =8
                    Name ="cmb_Selected_Rank"
                    RowSourceType ="Table/Query"
                    RowSource ="qry_Fetch_Rank_For_Edit_Combatant"
                    ColumnWidths ="0;1440;0;10;0"
                    AfterUpdate ="[Event Procedure]"

                    LayoutCachedLeft =8630
                    LayoutCachedTop =2000
                    LayoutCachedWidth =10070
                    LayoutCachedHeight =2300
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =6360
                            Top =2060
                            Width =1870
                            Height =300
                            Name ="Rank_Name1_Label"
                            Caption ="Please select Rank"
                            LayoutCachedLeft =6360
                            LayoutCachedTop =2060
                            LayoutCachedWidth =8230
                            LayoutCachedHeight =2360
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8660
                    Top =2510
                    Height =300
                    TabIndex =9
                    Name ="txt_Edited_Rank_Type"
                    DefaultValue ="\"NA\""

                    LayoutCachedLeft =8660
                    LayoutCachedTop =2510
                    LayoutCachedWidth =10100
                    LayoutCachedHeight =2810
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =5960
                            Top =2470
                            Width =2310
                            Height =300
                            Name ="Selected Rank Type"
                            Caption ="Selected Rank Type"
                            EventProcPrefix ="Selected_Rank_Type"
                            LayoutCachedLeft =5960
                            LayoutCachedTop =2470
                            LayoutCachedWidth =8270
                            LayoutCachedHeight =2770
                        End
                    End
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =11445
                    Top =1890
                    TabIndex =10
                    Name ="cmd_Save_Army_No_Rank_Changes"
                    Caption ="Save Changecmb"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =11445
                    LayoutCachedTop =1890
                    LayoutCachedWidth =12885
                    LayoutCachedHeight =2250
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    ListWidth =2948
                    Left =8680
                    Top =860
                    Width =2450
                    Height =300
                    TabIndex =11
                    BoundColumn =1
                    Name ="cmb_Select_Option"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Change Army No\";2;\"Change Rank\";3;\"Change Both\";4;\"Change Name\";5;\"C"
                        "hange Subunit and Platoon\""
                    ColumnWidths ="0;1440"
                    OnChange ="[Event Procedure]"

                    LayoutCachedLeft =8680
                    LayoutCachedTop =860
                    LayoutCachedWidth =11130
                    LayoutCachedHeight =1160
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =6780
                            Top =890
                            Width =1450
                            Height =320
                            Name ="Select Option_Label"
                            Caption ="Select Option"
                            EventProcPrefix ="Select_Option_Label"
                            LayoutCachedLeft =6780
                            LayoutCachedTop =890
                            LayoutCachedWidth =8230
                            LayoutCachedHeight =1210
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7660
                    Top =3290
                    Width =2580
                    Height =290
                    TabIndex =12
                    Name ="txt_Edited_Combatant_Name"
                    DefaultValue ="\"NA\""
                    OnLostFocus ="[Event Procedure]"

                    LayoutCachedLeft =7660
                    LayoutCachedTop =3290
                    LayoutCachedWidth =10240
                    LayoutCachedHeight =3580
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =6220
                            Top =3290
                            Width =1070
                            Height =300
                            Name ="Label36"
                            Caption ="Edit Name"
                            LayoutCachedLeft =6220
                            LayoutCachedTop =3290
                            LayoutCachedWidth =7290
                            LayoutCachedHeight =3590
                        End
                    End
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =11280
                    Top =3240
                    TabIndex =13
                    Name ="cmd_Save_Name"
                    Caption ="Save"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =11280
                    LayoutCachedTop =3240
                    LayoutCachedWidth =12720
                    LayoutCachedHeight =3600
                End
                Begin ComboBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =3
                    ListWidth =980
                    Left =8340
                    Top =4280
                    Height =290
                    TabIndex =14
                    Name ="Cmb_selectedSubUnit"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [tbl_Sub_Unit].[Sub_Unit_Id], [tbl_Sub_Unit].[Sub_Unit_Name], [tbl_Sub_Un"
                        "it].[Display_Seniority] FROM tbl_Sub_Unit ORDER BY [Display_Seniority]; "
                    ColumnWidths ="0;980;0"
                    OnKeyPress ="[Event Procedure]"
                    OnChange ="[Event Procedure]"

                    LayoutCachedLeft =8340
                    LayoutCachedTop =4280
                    LayoutCachedWidth =9780
                    LayoutCachedHeight =4570
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =6190
                            Top =4270
                            Width =1820
                            Height =320
                            Name ="Sub_Unit_Name1_Label"
                            Caption ="Selected Sub Unit"
                            LayoutCachedLeft =6190
                            LayoutCachedTop =4270
                            LayoutCachedWidth =8010
                            LayoutCachedHeight =4590
                        End
                    End
                End
                Begin ComboBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =3
                    ListWidth =964
                    Left =8340
                    Top =4950
                    Width =1410
                    Height =360
                    TabIndex =15
                    Name ="Cmb_SelectedChqPl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [qry_chq_Pl_for_frm_Edit_Combatant_Basic_data].CHQ_Pl_Id, [qry_chq_Pl_for"
                        "_frm_Edit_Combatant_Basic_data].CHQ_Pl_Name, [qry_chq_Pl_for_frm_Edit_Combatant_"
                        "Basic_data].Display_Seniority, [qry_chq_Pl_for_frm_Edit_Combatant_Basic_data].Su"
                        "b_Unit_Id FROM qry_chq_Pl_for_frm_Edit_Combatant_Basic_data; "
                    ColumnWidths ="0;851;0"
                    OnKeyPress ="[Event Procedure]"
                    OnChange ="[Event Procedure]"

                    LayoutCachedLeft =8340
                    LayoutCachedTop =4950
                    LayoutCachedWidth =9750
                    LayoutCachedHeight =5310
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =6120
                            Top =5010
                            Width =1905
                            Height =320
                            Name ="CHQ_Pl_Id_Label"
                            Caption ="Selected CHQ Pl"
                            LayoutCachedLeft =6120
                            LayoutCachedTop =5010
                            LayoutCachedWidth =8025
                            LayoutCachedHeight =5330
                        End
                    End
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =11490
                    Top =5160
                    Width =1860
                    Height =615
                    TabIndex =16
                    Name ="btnSub_Chq"
                    Caption ="Save SubUnit And Platoon"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =11490
                    LayoutCachedTop =5160
                    LayoutCachedWidth =13350
                    LayoutCachedHeight =5775
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_Edit_Combatant_Basic_Data.cls"

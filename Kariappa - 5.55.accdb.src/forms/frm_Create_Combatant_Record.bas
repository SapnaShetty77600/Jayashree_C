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
    Width =8884
    DatasheetFontHeight =11
    ItemSuffix =18
    Left =3555
    Top =1035
    Right =12720
    Bottom =8580
    RecSrcDt = Begin
        0xef1aa5910050e640
    End
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
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =3
                    ListWidth =1440
                    Left =3580
                    Top =1640
                    Height =300
                    Name ="cmb_Select_Sub_Unit"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [tbl_Sub_Unit].[Sub_Unit_Id], [tbl_Sub_Unit].[Sub_Unit_Name], [tbl_Sub_Un"
                        "it].[Display_Seniority] FROM tbl_Sub_Unit ORDER BY [Display_Seniority]; "
                    ColumnWidths ="0;1440;0"
                    BeforeUpdate ="[Event Procedure]"

                    LayoutCachedLeft =3580
                    LayoutCachedTop =1640
                    LayoutCachedWidth =5020
                    LayoutCachedHeight =1940
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1780
                            Top =1640
                            Width =1700
                            Height =320
                            Name ="Sub_Unit_Name_Label"
                            Caption ="Sub_Unit_Name"
                            LayoutCachedLeft =1780
                            LayoutCachedTop =1640
                            LayoutCachedWidth =3480
                            LayoutCachedHeight =1960
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =4
                    ListWidth =1440
                    Left =3590
                    Top =2590
                    Height =300
                    TabIndex =1
                    Name ="cmb_Select_CHQ_Pl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [qry_Chq_Pl_For_Create_Combatant].[CHQ_Pl_Id], [qry_Chq_Pl_For_Create_Com"
                        "batant].[CHQ_Pl_Name], [qry_Chq_Pl_For_Create_Combatant].[Display_Seniority], [q"
                        "ry_Chq_Pl_For_Create_Combatant].[Sub_Unit_Id] FROM qry_Chq_Pl_For_Create_Combata"
                        "nt ORDER BY [Display_Seniority]; "
                    ColumnWidths ="0;1440;0;0"

                    LayoutCachedLeft =3590
                    LayoutCachedTop =2590
                    LayoutCachedWidth =5030
                    LayoutCachedHeight =2890
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1790
                            Top =2590
                            Width =1610
                            Height =320
                            Name ="CHQ_Pl_Name_Label"
                            Caption ="CHQ_Pl_Name"
                            LayoutCachedLeft =1790
                            LayoutCachedTop =2590
                            LayoutCachedWidth =3400
                            LayoutCachedHeight =2910
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3400
                    Top =4090
                    Height =300
                    TabIndex =2
                    Name ="txt_Army_Number"
                    OnLostFocus ="[Event Procedure]"

                    LayoutCachedLeft =3400
                    LayoutCachedTop =4090
                    LayoutCachedWidth =4840
                    LayoutCachedHeight =4390
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1770
                            Top =4080
                            Width =860
                            Height =300
                            Name ="Label5"
                            Caption ="Army No"
                            LayoutCachedLeft =1770
                            LayoutCachedTop =4080
                            LayoutCachedWidth =2630
                            LayoutCachedHeight =4380
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    ListWidth =650
                    Left =3620
                    Top =3300
                    Height =300
                    TabIndex =3
                    Name ="cmb_Rank_Type"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [tbl_Rank_Type].[Rank_Type_Id], [tbl_Rank_Type].[Rank_Type_Name] FROM tbl"
                        "_Rank_Type ORDER BY [Rank_Type_Id]; "
                    ColumnWidths ="0;650"
                    BeforeUpdate ="[Event Procedure]"

                    LayoutCachedLeft =3620
                    LayoutCachedTop =3300
                    LayoutCachedWidth =5060
                    LayoutCachedHeight =3600
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1480
                            Top =3280
                            Width =1880
                            Height =320
                            Name ="Rank_Type_Name_Label"
                            Caption ="Rank_Type_Name"
                            LayoutCachedLeft =1480
                            LayoutCachedTop =3280
                            LayoutCachedWidth =3360
                            LayoutCachedHeight =3600
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =4
                    ListWidth =1440
                    Left =3470
                    Top =4800
                    Height =300
                    TabIndex =4
                    Name ="cmb_Rank"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [qry_Fetch_Rank_For_Rank_Type_Create_Combatant_Record].[Rank_Id] AS Expr1"
                        ", [qry_Fetch_Rank_For_Rank_Type_Create_Combatant_Record].[Rank_Name] AS Expr2, ["
                        "qry_Fetch_Rank_For_Rank_Type_Create_Combatant_Record].[Display_Seniority] AS Exp"
                        "r3, [qry_Fetch_Rank_For_Rank_Type_Create_Combatant_Record].[Rank_Type] AS Expr4 "
                        "FROM qry_Fetch_Rank_For_Rank_Type_Create_Combatant_Record ORDER BY [Display_Seni"
                        "ority]; "
                    ColumnWidths ="0;1440;0;0"

                    LayoutCachedLeft =3470
                    LayoutCachedTop =4800
                    LayoutCachedWidth =4910
                    LayoutCachedHeight =5100
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1670
                            Top =4800
                            Width =1330
                            Height =320
                            Name ="Rank_Name_Label"
                            Caption ="Rank_Name"
                            LayoutCachedLeft =1670
                            LayoutCachedTop =4800
                            LayoutCachedWidth =3000
                            LayoutCachedHeight =5120
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =3410
                    Top =5540
                    Width =1520
                    Height =300
                    TabIndex =5
                    Name ="txt_Combatant_Name"
                    OnLostFocus ="[Event Procedure]"

                    LayoutCachedLeft =3410
                    LayoutCachedTop =5540
                    LayoutCachedWidth =4930
                    LayoutCachedHeight =5840
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1610
                            Top =5540
                            Width =690
                            Height =300
                            Name ="Label15"
                            Caption ="Name"
                            LayoutCachedLeft =1610
                            LayoutCachedTop =5540
                            LayoutCachedWidth =2300
                            LayoutCachedHeight =5840
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2600
                    Top =6500
                    TabIndex =6
                    Name ="cmd_Save_New_Combatant_Data"
                    Caption ="Save"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =2600
                    LayoutCachedTop =6500
                    LayoutCachedWidth =4040
                    LayoutCachedHeight =6860
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_Create_Combatant_Record.cls"

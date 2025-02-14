Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    FilterOn = NotDefault
    DataEntry = NotDefault
    AllowDesignChanges = NotDefault
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =16500
    DatasheetFontHeight =11
    ItemSuffix =68
    Left =1020
    Top =825
    Right =17805
    Bottom =10650
    Filter ="[Sub_Unit_Name] LIKE '*B coy*' and [CHQ_Pl_Name] LIKE '**' and [Combatant_Army_N"
        "umber] LIKE '**' and [Combatant_Name] LIKE '**' and [Rank_Name] LIKE  '*'"
    RecSrcDt = Begin
        0x41386511ac50e640
    End
    RecordSource ="qry_Show_Combatant_Basic_Data"
    Caption ="View Combatants"
    DatasheetFontName ="Aptos"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =255
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
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin CustomControl
            OldBorderStyle =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =2760
            BackColor =8210719
            Name ="FormHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    BackStyle =1
                    BorderWidth =3
                    OverlapFlags =85
                    TextAlign =2
                    Left =300
                    Top =1005
                    Width =660
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="lblCID"
                    Caption ="CID"
                    LayoutCachedLeft =300
                    LayoutCachedTop =1005
                    LayoutCachedWidth =960
                    LayoutCachedHeight =1305
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =5220
                    Top =1005
                    Width =1360
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="lblArmyNumber"
                    Caption ="Army No"
                    LayoutCachedLeft =5220
                    LayoutCachedTop =1005
                    LayoutCachedWidth =6580
                    LayoutCachedHeight =1305
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =7620
                    Top =1005
                    Width =530
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="lblRank"
                    Caption ="Rank"
                    LayoutCachedLeft =7620
                    LayoutCachedTop =1005
                    LayoutCachedWidth =8150
                    LayoutCachedHeight =1305
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =9600
                    Top =1005
                    Width =640
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="lblName"
                    Caption ="Name"
                    LayoutCachedLeft =9600
                    LayoutCachedTop =1005
                    LayoutCachedWidth =10240
                    LayoutCachedHeight =1305
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =3600
                    Top =1005
                    Width =790
                    Height =290
                    BackColor =967423
                    ForeColor =8210719
                    Name ="lblPlatoon"
                    Caption ="Platoon"
                    LayoutCachedLeft =3600
                    LayoutCachedTop =1005
                    LayoutCachedWidth =4390
                    LayoutCachedHeight =1295
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =1860
                    Top =1005
                    Width =870
                    Height =290
                    BackColor =967423
                    ForeColor =8210719
                    Name ="lblSubUnit"
                    Caption ="Sub Unit"
                    LayoutCachedLeft =1860
                    LayoutCachedTop =1005
                    LayoutCachedWidth =2730
                    LayoutCachedHeight =1295
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5175
                    Top =1680
                    Width =1650
                    Height =290
                    Name ="txtArmyNumber"

                    LayoutCachedLeft =5175
                    LayoutCachedTop =1680
                    LayoutCachedWidth =6825
                    LayoutCachedHeight =1970
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =11430
                    Top =1035
                    Width =2400
                    Height =300
                    TabIndex =1
                    Name ="btnFetchCombatant"
                    Caption ="Fetch Combatant"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =11430
                    LayoutCachedTop =1035
                    LayoutCachedWidth =13830
                    LayoutCachedHeight =1335
                    Gradient =0
                    BackColor =967423
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    HoverColor =967423
                    HoverThemeColorIndex =-1
                    HoverTint =100.0
                    PressedColor =967423
                    PressedThemeColorIndex =-1
                    PressedShade =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =4630
                    Top =210
                    Width =5300
                    Height =400
                    BackColor =967423
                    Name ="Label44"
                    Caption ="1 Sikh LI Clothing Card Management System"
                    LayoutCachedLeft =4630
                    LayoutCachedTop =210
                    LayoutCachedWidth =9930
                    LayoutCachedHeight =610
                    BackThemeColorIndex =-1
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ListWidth =1440
                    Left =7260
                    Top =1695
                    Width =1605
                    Height =300
                    TabIndex =2
                    Name ="cmb_search_rank"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_Rank.Rank_Name FROM tbl_Rank; "
                    ColumnWidths ="1443"

                    LayoutCachedLeft =7260
                    LayoutCachedTop =1695
                    LayoutCachedWidth =8865
                    LayoutCachedHeight =1995
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =9360
                    Top =1710
                    Width =1305
                    Height =300
                    TabIndex =3
                    Name ="txtname"

                    LayoutCachedLeft =9360
                    LayoutCachedTop =1710
                    LayoutCachedWidth =10665
                    LayoutCachedHeight =2010
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ListWidth =1440
                    Left =3450
                    Top =1695
                    Width =1350
                    Height =300
                    TabIndex =4
                    Name ="cmb_Chq_Pl"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_Chq_Pl.CHQ_Pl_Name, tbl_Sub_Unit.Sub_Unit_Name FROM tbl_Sub_Unit INNE"
                        "R JOIN tbl_Chq_Pl ON tbl_Sub_Unit.Sub_Unit_Id = tbl_Chq_Pl.Sub_Unit_Id WHERE ((("
                        "tbl_Sub_Unit.Sub_Unit_Name)=[Forms]![frmCombatantContinuous_v3]![cmb_Sub_Unit]))"
                        "; "
                    ColumnWidths ="1443"

                    LayoutCachedLeft =3450
                    LayoutCachedTop =1695
                    LayoutCachedWidth =4800
                    LayoutCachedHeight =1995
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ListWidth =1440
                    Left =1755
                    Top =1725
                    Width =1065
                    Height =300
                    TabIndex =5
                    Name ="cmb_Sub_Unit"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tbl_Sub_Unit.Sub_Unit_Name FROM tbl_Sub_Unit; "
                    ColumnWidths ="1442"

                    LayoutCachedLeft =1755
                    LayoutCachedTop =1725
                    LayoutCachedWidth =2820
                    LayoutCachedHeight =2025
                End
            End
        End
        Begin Section
            Height =690
            BackColor =15590879
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =240
                    Top =240
                    Width =900
                    Height =300
                    Name ="Combatant_Id"
                    ControlSource ="Combatant_Id"

                    LayoutCachedLeft =240
                    LayoutCachedTop =240
                    LayoutCachedWidth =1140
                    LayoutCachedHeight =540
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8940
                    Top =240
                    Width =2520
                    Height =300
                    TabIndex =1
                    Name ="Combatant_Name"
                    ControlSource ="Combatant_Name"

                    LayoutCachedLeft =8940
                    LayoutCachedTop =240
                    LayoutCachedWidth =11460
                    LayoutCachedHeight =540
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7320
                    Top =240
                    Height =299
                    TabIndex =2
                    Name ="Rank_Name"
                    ControlSource ="Rank_Name"

                    LayoutCachedLeft =7320
                    LayoutCachedTop =240
                    LayoutCachedWidth =8760
                    LayoutCachedHeight =539
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =5220
                    Top =240
                    Width =1800
                    Height =300
                    TabIndex =3
                    Name ="Combatant_Army_Number"
                    ControlSource ="Combatant_Army_Number"

                    LayoutCachedLeft =5220
                    LayoutCachedTop =240
                    LayoutCachedWidth =7020
                    LayoutCachedHeight =540
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1860
                    Top =240
                    Height =290
                    TabIndex =4
                    Name ="Sub_Unit_Name"
                    ControlSource ="Sub_Unit_Name"

                    LayoutCachedLeft =1860
                    LayoutCachedTop =240
                    LayoutCachedWidth =3300
                    LayoutCachedHeight =530
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11970
                    Top =220
                    Width =1200
                    Height =350
                    TabIndex =5
                    Name ="cmd_Open_Edit_Combatant"
                    Caption ="Edit"
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Action ="OpenForm"
                            Argument ="frm_Combatant_Basic_Data_Edit"
                            Argument ="0"
                            Argument =""
                            Argument ="=\"[Combatant_Id]=\" & [Combatant_Id]"
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"cmd_Open_Edit_Combatant\" Event=\"OnClick\" xmlns=\"http://s"
                                "chemas.microsoft.com/office/accessservices/2009/11/application\"><Statements><Ac"
                                "tion Name=\"OpenForm\"><Argument "
                        End
                        Begin
                            Comment ="_AXL:Name=\"FormName\">frm_Combatant_Basic_Data_Edit</Argument><Argument Name=\""
                                "WhereCondition\">=\"[Combatant_Id]=\" &amp; [Combatant_Id]</Argument></Action></"
                                "Statements></UserInterfaceMacro>"
                        End
                    End

                    LayoutCachedLeft =11970
                    LayoutCachedTop =220
                    LayoutCachedWidth =13170
                    LayoutCachedHeight =570
                    Gradient =0
                    BackColor =967423
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    HoverColor =967423
                    HoverThemeColorIndex =-1
                    HoverTint =100.0
                    PressedColor =967423
                    PressedThemeColorIndex =-1
                    PressedShade =100.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3540
                    Top =240
                    Height =290
                    TabIndex =6
                    Name ="Platoon_Name"
                    ControlSource ="CHQ_Pl_Name"

                    LayoutCachedLeft =3540
                    LayoutCachedTop =240
                    LayoutCachedWidth =4980
                    LayoutCachedHeight =530
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =13920
                    Top =210
                    Width =1200
                    Height =350
                    TabIndex =7
                    Name ="Command49"
                    Caption ="Open Form"
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =8
                        Begin
                            Action ="OpenForm"
                            Argument ="frm_Edit_Combatant_Basic_Data"
                            Argument ="0"
                            Argument =""
                            Argument ="=\"[Combatant_Id]=\"  &[Combatant_Id]"
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"Command49\" xmlns=\"http://schemas.microsoft.com/office/acce"
                                "ssservices/2009/11/application\"><Statements><Action Name=\"OpenForm\"><Argument"
                                " Name=\"FormName\">frm_Edit_Comba"
                        End
                        Begin
                            Comment ="_AXL:tant_Basic_Data</Argument><Argument Name=\"WhereCondition\">=\"[Combatant_I"
                                "d]=\"  &amp;[Combatant_Id]</Argument></Action></Statements></UserInterfaceMacro>"
                        End
                    End

                    LayoutCachedLeft =13920
                    LayoutCachedTop =210
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =560
                End
            End
        End
        Begin FormFooter
            Height =876
            Name ="FormFooter"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =3420
                    Top =230
                    Width =5940
                    FontSize =14
                    ForeColor =8210719
                    Name ="btnViewClothingItems"
                    Caption ="View Clothing Items for Selected Combatant"
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Action ="OpenForm"
                            Argument ="frm_Combatant_Clothing_Item_Continuous_V2"
                            Argument ="0"
                            Argument =""
                            Argument ="=\"[Combatant_Id]=\" & [Combatant_Id]"
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"btnViewClothingItems\" Event=\"OnClick\" xmlns=\"http://sche"
                                "mas.microsoft.com/office/accessservices/2009/11/application\"><Statements><Actio"
                                "n Name=\"OpenForm\"><Argument Nam"
                        End
                        Begin
                            Comment ="_AXL:e=\"FormName\">frm_Combatant_Clothing_Item_Continuous_V2</Argument><Argumen"
                                "t Name=\"WhereCondition\">=\"[Combatant_Id]=\" &amp; [Combatant_Id]</Argument></"
                                "Action></Statements></UserInterfaceMacro>"
                        End
                    End

                    LayoutCachedLeft =3420
                    LayoutCachedTop =230
                    LayoutCachedWidth =9360
                    LayoutCachedHeight =590
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Gradient =0
                    BackColor =967423
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    HoverColor =967423
                    HoverThemeColorIndex =-1
                    HoverTint =100.0
                    PressedColor =967423
                    PressedThemeColorIndex =-1
                    PressedShade =100.0
                    HoverForeColor =8210719
                    HoverForeThemeColorIndex =-1
                    HoverForeTint =100.0
                    PressedForeColor =8210719
                    PressedForeThemeColorIndex =-1
                    PressedForeTint =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frmCombatantContinuous_v3.cls"

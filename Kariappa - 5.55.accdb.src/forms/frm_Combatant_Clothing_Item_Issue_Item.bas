Version =20
VersionRequired =20
Begin Form
    AllowFilters = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =11660
    DatasheetFontHeight =11
    ItemSuffix =37
    Left =3465
    Top =1545
    Right =15150
    Bottom =9090
    RecSrcDt = Begin
        0x5340299c9450e640
    End
    RecordSource ="qryFetchSelectedClothingItemForIssue"
    Caption ="Issue New Clothing Item"
    DatasheetFontName ="Aptos"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =255
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
        Begin Section
            Height =7560
            BackColor =8210719
            Name ="Detail"
            AutoHeight =255
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2350
                    Top =1210
                    Width =720
                    Height =300
                    ColumnOrder =2
                    Name ="Combatant_Id"
                    ControlSource ="Combatant_Id"

                    LayoutCachedLeft =2350
                    LayoutCachedTop =1210
                    LayoutCachedWidth =3070
                    LayoutCachedHeight =1510
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =490
                            Top =1210
                            Width =1410
                            Height =300
                            BackColor =967423
                            Name ="Label0"
                            Caption ="Combatant_Id"
                            LayoutCachedLeft =490
                            LayoutCachedTop =1210
                            LayoutCachedWidth =1900
                            LayoutCachedHeight =1510
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2350
                    Top =2020
                    Height =300
                    ColumnWidth =1790
                    ColumnOrder =3
                    TabIndex =1
                    Name ="Combatant_Army_Number"
                    ControlSource ="Combatant_Army_Number"

                    LayoutCachedLeft =2350
                    LayoutCachedTop =2020
                    LayoutCachedWidth =3790
                    LayoutCachedHeight =2320
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =490
                            Top =2020
                            Width =1360
                            Height =300
                            BackColor =967423
                            Name ="Label1"
                            Caption ="Army Number"
                            LayoutCachedLeft =490
                            LayoutCachedTop =2020
                            LayoutCachedWidth =1850
                            LayoutCachedHeight =2320
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2350
                    Top =3180
                    Height =300
                    ColumnOrder =4
                    TabIndex =2
                    Name ="Rank_Name"
                    ControlSource ="Rank_Name"

                    LayoutCachedLeft =2350
                    LayoutCachedTop =3180
                    LayoutCachedWidth =3790
                    LayoutCachedHeight =3480
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =490
                            Top =3180
                            Width =530
                            Height =300
                            BackColor =967423
                            Name ="Label2"
                            Caption ="Rank"
                            LayoutCachedLeft =490
                            LayoutCachedTop =3180
                            LayoutCachedWidth =1020
                            LayoutCachedHeight =3480
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2380
                    Top =4280
                    Width =1940
                    Height =300
                    ColumnOrder =5
                    TabIndex =3
                    Name ="Combatant_Name"
                    ControlSource ="Combatant_Name"

                    LayoutCachedLeft =2380
                    LayoutCachedTop =4280
                    LayoutCachedWidth =4320
                    LayoutCachedHeight =4580
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =490
                            Top =4280
                            Width =1140
                            Height =300
                            BackColor =967423
                            Name ="Label3"
                            Caption ="Name"
                            LayoutCachedLeft =490
                            LayoutCachedTop =4280
                            LayoutCachedWidth =1630
                            LayoutCachedHeight =4580
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6720
                    Top =1210
                    Width =4770
                    Height =300
                    ColumnOrder =7
                    TabIndex =4
                    Name ="Clothing_Item_Name"
                    ControlSource ="Clothing_Item_Name"

                    LayoutCachedLeft =6720
                    LayoutCachedTop =1210
                    LayoutCachedWidth =11490
                    LayoutCachedHeight =1510
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =5020
                            Top =1210
                            Width =640
                            Height =300
                            BackColor =967423
                            Name ="Label6"
                            Caption ="Name"
                            LayoutCachedLeft =5020
                            LayoutCachedTop =1210
                            LayoutCachedWidth =5660
                            LayoutCachedHeight =1510
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6720
                    Top =2020
                    Width =1400
                    Height =300
                    ColumnOrder =8
                    TabIndex =5
                    Name ="Clothing_Item_Life"
                    ControlSource ="Clothing_Item_Life"
                    StatusBarText ="Life of the clothing item in months after which it has to be replaced."

                    LayoutCachedLeft =6720
                    LayoutCachedTop =2020
                    LayoutCachedWidth =8120
                    LayoutCachedHeight =2320
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =5020
                            Top =2020
                            Width =360
                            Height =300
                            BackColor =967423
                            Name ="Label7"
                            Caption ="Life"
                            LayoutCachedLeft =5020
                            LayoutCachedTop =2020
                            LayoutCachedWidth =5380
                            LayoutCachedHeight =2320
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6720
                    Top =3180
                    Height =300
                    ColumnOrder =9
                    TabIndex =6
                    Name ="Date_Of_Issue"
                    ControlSource ="Date_Of_Issue"
                    Format ="Medium Date"

                    LayoutCachedLeft =6720
                    LayoutCachedTop =3180
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =3480
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =5020
                            Top =3170
                            Width =1300
                            Height =310
                            BackColor =967423
                            Name ="Label8"
                            Caption ="Date of Issue"
                            LayoutCachedLeft =5020
                            LayoutCachedTop =3170
                            LayoutCachedWidth =6320
                            LayoutCachedHeight =3480
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =3300
                    Top =6140
                    Width =1980
                    TabIndex =7
                    Name ="btnSaveIssueData"
                    Caption ="Click to Save Data"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =3300
                    LayoutCachedTop =6140
                    LayoutCachedWidth =5280
                    LayoutCachedHeight =6500
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
                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4715
                    Top =5500
                    Height =290
                    ColumnOrder =0
                    TabIndex =8
                    Name ="txtIssueDate"
                    Format ="Medium Date"
                    OnKeyPress ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    OnChange ="[Event Procedure]"

                    LayoutCachedLeft =4715
                    LayoutCachedTop =5500
                    LayoutCachedWidth =6155
                    LayoutCachedHeight =5790
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =1845
                            Top =5490
                            Width =2490
                            Height =300
                            BackColor =967423
                            Name ="lblDateOfIssue"
                            Caption ="Date of Issue of New Item"
                            LayoutCachedLeft =1845
                            LayoutCachedTop =5490
                            LayoutCachedWidth =4335
                            LayoutCachedHeight =5790
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6720
                    Top =4290
                    Height =290
                    TabIndex =9
                    Name ="Due_Date"
                    ControlSource ="Due_Date"
                    Format ="Medium Date"

                    LayoutCachedLeft =6720
                    LayoutCachedTop =4290
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =4580
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            Left =5020
                            Top =4290
                            Width =1020
                            Height =290
                            BackColor =967423
                            Name ="Label35"
                            Caption ="Due_Date"
                            LayoutCachedLeft =5020
                            LayoutCachedTop =4290
                            LayoutCachedWidth =6040
                            LayoutCachedHeight =4580
                            BackThemeColorIndex =-1
                        End
                    End
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =2400
                    Top =300
                    Width =3900
                    Height =420
                    FontSize =16
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label36"
                    Caption ="Issue New Clothing Item"
                    LayoutCachedLeft =2400
                    LayoutCachedTop =300
                    LayoutCachedWidth =6300
                    LayoutCachedHeight =720
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "frm_Combatant_Clothing_Item_Issue_Item.cls"

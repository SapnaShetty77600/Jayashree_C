Version =20
VersionRequired =20
Begin Form
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =14700
    DatasheetFontHeight =11
    ItemSuffix =30
    Left =1635
    Top =1605
    Right =16620
    Bottom =11250
    RecSrcDt = Begin
        0xe70c3c689750e640
    End
    RecordSource ="qryCombatantClothingItems"
    Caption ="View Clothing Items of Selected Combatant"
    DatasheetFontName ="Aptos"
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
            Height =1920
            BackColor =8210719
            Name ="FormHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =900
                    Top =1500
                    Width =1410
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label0"
                    Caption ="CID"
                    LayoutCachedLeft =900
                    LayoutCachedTop =1500
                    LayoutCachedWidth =2310
                    LayoutCachedHeight =1800
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =2040
                    Top =780
                    Width =1360
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label1"
                    Caption ="Army Number"
                    LayoutCachedLeft =2040
                    LayoutCachedTop =780
                    LayoutCachedWidth =3400
                    LayoutCachedHeight =1080
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =5820
                    Top =780
                    Width =530
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label2"
                    Caption ="Rank"
                    LayoutCachedLeft =5820
                    LayoutCachedTop =780
                    LayoutCachedWidth =6350
                    LayoutCachedHeight =1080
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =9300
                    Top =780
                    Width =720
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label3"
                    Caption ="Name"
                    LayoutCachedLeft =9300
                    LayoutCachedTop =780
                    LayoutCachedWidth =10020
                    LayoutCachedHeight =1080
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =2880
                    Top =1500
                    Width =2210
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label6"
                    Caption ="Name of Clothing Item"
                    LayoutCachedLeft =2880
                    LayoutCachedTop =1500
                    LayoutCachedWidth =5090
                    LayoutCachedHeight =1800
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =8340
                    Top =1500
                    Width =1200
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label8"
                    Caption ="Date of Issue"
                    LayoutCachedLeft =8340
                    LayoutCachedTop =1500
                    LayoutCachedWidth =9540
                    LayoutCachedHeight =1800
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =6600
                    Top =1500
                    Width =400
                    Height =300
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label15"
                    Caption ="Life"
                    LayoutCachedLeft =6600
                    LayoutCachedTop =1500
                    LayoutCachedWidth =7000
                    LayoutCachedHeight =1800
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =10320
                    Top =780
                    Width =3360
                    Height =360
                    ColumnOrder =0
                    Name ="Combatant_Name"
                    ControlSource ="Combatant_Name"

                    LayoutCachedLeft =10320
                    LayoutCachedTop =780
                    LayoutCachedWidth =13680
                    LayoutCachedHeight =1140
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =6600
                    Top =780
                    Width =1140
                    Height =360
                    ColumnOrder =1
                    TabIndex =1
                    Name ="Rank_Name"
                    ControlSource ="Rank_Name"

                    LayoutCachedLeft =6600
                    LayoutCachedTop =780
                    LayoutCachedWidth =7740
                    LayoutCachedHeight =1140
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =3660
                    Top =780
                    Width =1740
                    Height =300
                    ColumnOrder =2
                    TabIndex =2
                    Name ="Combatant_Army_Number"
                    ControlSource ="Combatant_Army_Number"

                    LayoutCachedLeft =3660
                    LayoutCachedTop =780
                    LayoutCachedWidth =5400
                    LayoutCachedHeight =1080
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    Left =10620
                    Top =1500
                    Width =1020
                    Height =290
                    BackColor =967423
                    ForeColor =8210719
                    Name ="Label16"
                    Caption ="Due_Date"
                    LayoutCachedLeft =10620
                    LayoutCachedTop =1500
                    LayoutCachedWidth =11640
                    LayoutCachedHeight =1790
                    BackThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =3670
                    Top =250
                    Width =5780
                    Height =300
                    FontSize =14
                    BackColor =967423
                    Name ="lblFormTitleViewClothingCardDetails"
                    Caption ="Clothing Card Details of Selected Combatant"
                    LayoutCachedLeft =3670
                    LayoutCachedTop =250
                    LayoutCachedWidth =9450
                    LayoutCachedHeight =550
                    BackThemeColorIndex =-1
                End
            End
        End
        Begin Section
            Height =540
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =900
                    Top =120
                    Width =600
                    Height =300
                    ColumnOrder =0
                    Name ="Combatant_Id"
                    ControlSource ="Combatant_Id"

                    LayoutCachedLeft =900
                    LayoutCachedTop =120
                    LayoutCachedWidth =1500
                    LayoutCachedHeight =420
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2880
                    Top =120
                    Width =3300
                    Height =300
                    ColumnOrder =1
                    TabIndex =1
                    Name ="Clothing_Item_Name"
                    ControlSource ="Clothing_Item_Name"

                    LayoutCachedLeft =2880
                    LayoutCachedTop =120
                    LayoutCachedWidth =6180
                    LayoutCachedHeight =420
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =8340
                    Top =120
                    Height =300
                    ColumnOrder =2
                    TabIndex =2
                    Name ="Date_Of_Issue"
                    ControlSource ="Date_Of_Issue"
                    Format ="Medium Date"

                    LayoutCachedLeft =8340
                    LayoutCachedTop =120
                    LayoutCachedWidth =9780
                    LayoutCachedHeight =420
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6600
                    Top =120
                    Width =840
                    Height =300
                    ColumnOrder =3
                    TabIndex =3
                    Name ="Clothing_Item_Life"
                    ControlSource ="Clothing_Item_Life"
                    StatusBarText ="Life of the clothing item in months after which it has to be replaced."

                    LayoutCachedLeft =6600
                    LayoutCachedTop =120
                    LayoutCachedWidth =7440
                    LayoutCachedHeight =420
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =10680
                    Top =120
                    Height =290
                    ColumnOrder =4
                    TabIndex =4
                    Name ="Due_Date"
                    ControlSource ="Due_Date"
                    Format ="Medium Date"

                    LayoutCachedLeft =10680
                    LayoutCachedTop =120
                    LayoutCachedWidth =12120
                    LayoutCachedHeight =410
                End
            End
        End
        Begin FormFooter
            Height =720
            Name ="FormFooter"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =4390
                    Top =90
                    Width =4230
                    Height =470
                    ForeColor =8210719
                    Name ="btnIssueSelectedClothingItem"
                    Caption ="Click to Issue Selected Clothing Item"
                    OnClick ="[Event Procedure]"

                    LayoutCachedLeft =4390
                    LayoutCachedTop =90
                    LayoutCachedWidth =8620
                    LayoutCachedHeight =560
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
' See "frm_Combatant_Clothing_Item_Continuous_V2.cls"

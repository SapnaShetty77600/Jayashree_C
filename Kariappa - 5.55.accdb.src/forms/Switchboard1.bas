Version =20
VersionRequired =20
Begin Form
    AllowFilters = NotDefault
    RecordSelectors = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =0
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7740
    DatasheetFontHeight =11
    ItemSuffix =7
    Left =7770
    Top =255
    Right =15510
    Bottom =11340
    RecSrcDt = Begin
        0xe5f13edacd50e640
    End
    RecordSource ="SELECT * FROM [Switchboard Items] WHERE [ItemNumber]>0 And [SwitchboardID]=TempV"
        "ars!SwitchboardID ORDER BY [ItemNumber]; "
    Caption ="Switchboard"
    DatasheetFontName ="Aptos"
    FilterOnLoad =0
    OnCurrentEmMacro = Begin
        Version =196611
        ColumnsShown =12
        Begin
            Action ="SetTempVar"
            Argument ="CurrentItemNumber"
            Argument ="[ItemNumber]"
        End
    End
    OnOpenEmMacro = Begin
        Version =196611
        ColumnsShown =8
        Begin
            Action ="SetTempVar"
            Argument ="SwitchboardID"
            Argument ="DLookUp(\"SwitchboardID\",\"Switchboard Items\",\"[ItemNumber] = 0 AND [Argument"
                "] = 'Default'\")"
        End
        Begin
            Action ="SetProperty"
            Argument ="Label1"
            Argument ="9"
            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                "SwitchboardID\"))"
        End
        Begin
            Action ="SetProperty"
            Argument ="Label2"
            Argument ="9"
            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                "SwitchboardID\"))"
        End
        Begin
            Action ="Requery"
        End
    End
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
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            SizeMode =3
            PictureAlignment =2
            Width =1701
            Height =1701
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin CommandButton
            TextFontFamily =0
            Width =1701
            Height =283
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
            Width =1701
            LabelX =-1701
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
        Begin FormHeader
            Height =1134
            Name ="FormHeader"
            AutoHeight =255
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Rectangle
                    SpecialEffect =0
                    BackStyle =1
                    OverlapFlags =93
                    Width =7725
                    Height =660
                    BorderColor =8421376
                    Name ="HorizontalHeaderBox"
                    LayoutCachedWidth =7725
                    LayoutCachedHeight =660
                    BackThemeColorIndex =6
                    BackShade =75.0
                    BorderThemeColorIndex =-1
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =223
                    TextFontFamily =34
                    Left =2997
                    Top =215
                    Width =4740
                    Height =450
                    FontSize =18
                    BorderColor =0
                    ForeColor =8421504
                    Name ="Label2"
                    Caption ="ArmyClothingCard"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =2997
                    LayoutCachedTop =215
                    LayoutCachedWidth =7737
                    LayoutCachedHeight =665
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                End
                Begin Label
                    OverlapFlags =215
                    TextFontFamily =34
                    Left =1590
                    Top =120
                    Width =4410
                    Height =450
                    FontSize =18
                    BorderColor =0
                    ForeColor =16777215
                    Name ="Label1"
                    Caption ="ArmyClothingCard"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =1590
                    LayoutCachedTop =120
                    LayoutCachedWidth =6000
                    LayoutCachedHeight =570
                    ThemeFontIndex =-1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                End
            End
        End
        Begin Section
            Height =420
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Rectangle
                    SpecialEffect =0
                    BackStyle =1
                    OldBorderStyle =0
                    OverlapFlags =93
                    Left =2355
                    Width =378
                    Height =420
                    BackColor =8421504
                    BorderColor =0
                    Name ="VerticalShadowBox"
                    LayoutCachedLeft =2355
                    LayoutCachedWidth =2733
                    LayoutCachedHeight =420
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =3030
                    Top =80
                    Width =259
                    Height =259
                    FontSize =10
                    ForeColor =0
                    Name ="Option1"
                    FontName ="System"
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =11
                        Begin
                            Action ="OnError"
                            Argument ="1"
                            Argument ="ErrorHandler"
                        End
                        Begin
                            Condition ="[Command]=1"
                            Action ="SetTempVar"
                            Argument ="SwitchboardID"
                            Argument ="[Argument]"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetProperty"
                            Argument ="Label1"
                            Argument ="9"
                            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                                "SwitchboardID\"))"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetProperty"
                            Argument ="Label2"
                            Argument ="9"
                            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                                "SwitchboardID\"))"
                        End
                        Begin
                            Condition ="..."
                            Action ="Requery"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=2"
                            Action ="OpenForm"
                            Argument ="=[Argument]"
                            Argument ="0"
                            Argument =""
                            Argument =""
                            Argument ="0"
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=3"
                            Action ="OpenForm"
                            Argument ="=[Argument]"
                            Argument ="0"
                            Argument =""
                            Argument =""
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=4"
                            Action ="OpenReport"
                            Argument ="=[Argument]"
                            Argument ="5"
                            Argument =""
                            Argument =""
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=5"
                            Action ="RunCommand"
                            Argument ="521"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetTempVar"
                            Argument ="SwitchboardID"
                            Argument ="DLookUp(\"SwitchboardID\",\"Switchboard Items\",\"[ItemNumber] = 0 AND [Argument"
                                "] = 'Default'\")"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetProperty"
                            Argument ="Label1"
                            Argument ="9"
                            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                                "SwitchboardID\"))"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetProperty"
                            Argument ="Label2"
                            Argument ="9"
                            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                                "SwitchboardID\"))"
                        End
                        Begin
                            Condition ="..."
                            Action ="Requery"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=6"
                            Action ="CloseDatabase"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=7"
                            Action ="RunMacro"
                            Argument ="=[Argument]"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=8"
                            Action ="RunCode"
                            Argument ="=[Argument] & \"()\""
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Action ="MsgBox"
                            Argument ="Unknown option."
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            MacroName ="ErrorHandler"
                            Action ="MsgBox"
                            Argument ="=[MacroError].[Description]"
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"Option1\" xmlns=\"http://schemas.microsoft.com/office/access"
                                "services/2009/11/application\"><Statements><Action Name=\"OnError\"><Argument Na"
                                "me=\"Goto\">Macro Name</Argument>"
                        End
                        Begin
                            Comment ="_AXL:<Argument Name=\"MacroName\">ErrorHandler</Argument></Action><ConditionalBl"
                                "ock><If><Condition>[Command]=1</Condition><Statements><Action Name=\"SetTempVar\""
                                "><Argument Name=\"Name\">SwitchboardID</Argument><Argument Name=\"Expression\">["
                                "Argument]</Argument>"
                        End
                        Begin
                            Comment ="_AXL:</Action><Action Name=\"SetProperty\"><Argument Name=\"ControlName\">Label1"
                                "</Argument><Argument Name=\"Property\">Caption</Argument><Argument Name=\"Value\""
                                ">=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" &amp; TempVa"
                                "rs(\"SwitchboardID\"))</Argu"
                        End
                        Begin
                            Comment ="_AXL:ment></Action><Action Name=\"SetProperty\"><Argument Name=\"ControlName\">L"
                                "abel2</Argument><Argument Name=\"Property\">Caption</Argument><Argument Name=\"V"
                                "alue\">=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" &amp; "
                                "TempVars(\"SwitchboardID\"))<"
                        End
                        Begin
                            Comment ="_AXL:/Argument></Action><Action Name=\"Requery\"/><Action Name=\"StopMacro\"/></"
                                "Statements></If></ConditionalBlock><ConditionalBlock><If><Condition>[Command]=2<"
                                "/Condition><Statements><Action Name=\"OpenForm\"><Argument Name=\"FormName\">=[A"
                                "rgument]</Argument><A"
                        End
                        Begin
                            Comment ="_AXL:rgument Name=\"DataMode\">Add</Argument></Action><Action Name=\"StopMacro\""
                                "/></Statements></If></ConditionalBlock><ConditionalBlock><If><Condition>[Command"
                                "]=3</Condition><Statements><Action Name=\"OpenForm\"><Argument Name=\"FormName\""
                                ">=[Argument]</Argumen"
                        End
                        Begin
                            Comment ="_AXL:t></Action><Action Name=\"StopMacro\"/></Statements></If></ConditionalBlock"
                                "><ConditionalBlock><If><Condition>[Command]=4</Condition><Statements><Action Nam"
                                "e=\"OpenReport\"><Argument Name=\"ReportName\">=[Argument]</Argument></Action><A"
                                "ction Name=\"StopMac"
                        End
                        Begin
                            Comment ="_AXL:ro\"/></Statements></If></ConditionalBlock><ConditionalBlock><If><Condition"
                                ">[Command]=5</Condition><Statements><Action Name=\"RunMenuCommand\"><Argument Na"
                                "me=\"Command\">SwitchboardManager</Argument></Action><Action Name=\"SetTempVar\""
                                "><Argument Name=\"Nam"
                        End
                        Begin
                            Comment ="_AXL:e\">SwitchboardID</Argument><Argument Name=\"Expression\">DLookUp(\"Switchb"
                                "oardID\",\"Switchboard Items\",\"[ItemNumber] = 0 AND [Argument] = 'Default'\")<"
                                "/Argument></Action><Action Name=\"SetProperty\"><Argument Name=\"ControlName\">L"
                                "abel1</Argument><Argument "
                        End
                        Begin
                            Comment ="_AXL:Name=\"Property\">Caption</Argument><Argument Name=\"Value\">=DLookUp(\"Ite"
                                "mText\",\"Switchboard Items\",\"[SwitchboardID] = \" &amp; TempVars(\"Switchboar"
                                "dID\"))</Argument></Action><Action Name=\"SetProperty\"><Argument Name=\"Control"
                                "Name\">Label2</Argument><Argu"
                        End
                        Begin
                            Comment ="_AXL:ment Name=\"Property\">Caption</Argument><Argument Name=\"Value\">=DLookUp("
                                "\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" &amp; TempVars(\"Switc"
                                "hboardID\"))</Argument></Action><Action Name=\"Requery\"/><Action Name=\"StopMac"
                                "ro\"/></Statements></If></Con"
                        End
                        Begin
                            Comment ="_AXL:ditionalBlock><ConditionalBlock><If><Condition>[Command]=6</Condition><Stat"
                                "ements><Action Name=\"CloseDatabase\"/><Action Name=\"StopMacro\"/></Statements>"
                                "</If></ConditionalBlock><ConditionalBlock><If><Condition>[Command]=7</Condition>"
                                "<Statements><Acti"
                        End
                        Begin
                            Comment ="_AXL:on Name=\"RunMacro\"><Argument Name=\"MacroName\">=[Argument]</Argument></A"
                                "ction><Action Name=\"StopMacro\"/></Statements></If></ConditionalBlock><Conditio"
                                "nalBlock><If><Condition>[Command]=8</Condition><Statements><Action Name=\"RunCod"
                                "e\"><Argument Name=\"F"
                        End
                        Begin
                            Comment ="_AXL:unctionName\">=[Argument] &amp; \"()\"</Argument></Action><Action Name=\"St"
                                "opMacro\"/></Statements></If></ConditionalBlock><Action Name=\"MessageBox\"><Arg"
                                "ument Name=\"Message\">Unknown option.</Argument></Action></Statements><Sub Name"
                                "=\"ErrorHandler\"><State"
                        End
                        Begin
                            Comment ="_AXL:ments><Action Name=\"MessageBox\"><Argument Name=\"Message\">=[MacroError]."
                                "[Description]</Argument></Action></Statements></Sub></UserInterfaceMacro>"
                        End
                    End

                    LayoutCachedLeft =3030
                    LayoutCachedTop =80
                    LayoutCachedWidth =3289
                    LayoutCachedHeight =339
                    ForeThemeColorIndex =-1
                    Gradient =0
                    BackThemeColorIndex =6
                    OldBorderStyle =0
                    BorderColor =0
                    BorderThemeColorIndex =-1
                    ThemeFontIndex =-1
                End
                Begin TextBox
                    Locked = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextFontFamily =34
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3390
                    Top =80
                    Width =3990
                    FontSize =8
                    TabIndex =1
                    BorderColor =0
                    ForeColor =-2147483630
                    Name ="OptionLabel1"
                    ControlSource ="ItemText"
                    FontName ="Tahoma"
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =11
                        Begin
                            Action ="OnError"
                            Argument ="1"
                            Argument ="ErrorHandler"
                        End
                        Begin
                            Condition ="[Command]=1"
                            Action ="SetTempVar"
                            Argument ="SwitchboardID"
                            Argument ="[Argument]"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetProperty"
                            Argument ="Label1"
                            Argument ="9"
                            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                                "SwitchboardID\"))"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetProperty"
                            Argument ="Label2"
                            Argument ="9"
                            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                                "SwitchboardID\"))"
                        End
                        Begin
                            Condition ="..."
                            Action ="Requery"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=2"
                            Action ="OpenForm"
                            Argument ="=[Argument]"
                            Argument ="0"
                            Argument =""
                            Argument =""
                            Argument ="0"
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=3"
                            Action ="OpenForm"
                            Argument ="=[Argument]"
                            Argument ="0"
                            Argument =""
                            Argument =""
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=4"
                            Action ="OpenReport"
                            Argument ="=[Argument]"
                            Argument ="5"
                            Argument =""
                            Argument =""
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=5"
                            Action ="RunCommand"
                            Argument ="521"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetTempVar"
                            Argument ="SwitchboardID"
                            Argument ="DLookUp(\"SwitchboardID\",\"Switchboard Items\",\"[ItemNumber] = 0 AND [Argument"
                                "] = 'Default'\")"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetProperty"
                            Argument ="Label1"
                            Argument ="9"
                            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                                "SwitchboardID\"))"
                        End
                        Begin
                            Condition ="..."
                            Action ="SetProperty"
                            Argument ="Label2"
                            Argument ="9"
                            Argument ="=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" & TempVars(\""
                                "SwitchboardID\"))"
                        End
                        Begin
                            Condition ="..."
                            Action ="Requery"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=6"
                            Action ="CloseDatabase"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=7"
                            Action ="RunMacro"
                            Argument ="=[Argument]"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Condition ="[Command]=8"
                            Action ="RunCode"
                            Argument ="=[Argument] & \"()\""
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Action ="MsgBox"
                            Argument ="Unknown option."
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            MacroName ="ErrorHandler"
                            Action ="MsgBox"
                            Argument ="=[MacroError].[Description]"
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"OptionLabel1\" xmlns=\"http://schemas.microsoft.com/office/a"
                                "ccessservices/2009/11/application\"><Statements><Action Name=\"OnError\"><Argume"
                                "nt Name=\"Goto\">Macro Name</Argu"
                        End
                        Begin
                            Comment ="_AXL:ment><Argument Name=\"MacroName\">ErrorHandler</Argument></Action><Conditio"
                                "nalBlock><If><Condition>[Command]=1</Condition><Statements><Action Name=\"SetTem"
                                "pVar\"><Argument Name=\"Name\">SwitchboardID</Argument><Argument Name=\"Expressi"
                                "on\">[Argument]</Argu"
                        End
                        Begin
                            Comment ="_AXL:ment></Action><Action Name=\"SetProperty\"><Argument Name=\"ControlName\">L"
                                "abel1</Argument><Argument Name=\"Property\">Caption</Argument><Argument Name=\"V"
                                "alue\">=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" &amp; "
                                "TempVars(\"SwitchboardID\"))<"
                        End
                        Begin
                            Comment ="_AXL:/Argument></Action><Action Name=\"SetProperty\"><Argument Name=\"ControlNam"
                                "e\">Label2</Argument><Argument Name=\"Property\">Caption</Argument><Argument Nam"
                                "e=\"Value\">=DLookUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" &"
                                "amp; TempVars(\"SwitchboardI"
                        End
                        Begin
                            Comment ="_AXL:D\"))</Argument></Action><Action Name=\"Requery\"/><Action Name=\"StopMacro"
                                "\"/></Statements></If></ConditionalBlock><ConditionalBlock><If><Condition>[Comma"
                                "nd]=2</Condition><Statements><Action Name=\"OpenForm\"><Argument Name=\"FormName"
                                "\">=[Argument]</Argume"
                        End
                        Begin
                            Comment ="_AXL:nt><Argument Name=\"DataMode\">Add</Argument></Action><Action Name=\"StopMa"
                                "cro\"/></Statements></If></ConditionalBlock><ConditionalBlock><If><Condition>[Co"
                                "mmand]=3</Condition><Statements><Action Name=\"OpenForm\"><Argument Name=\"FormN"
                                "ame\">=[Argument]</Ar"
                        End
                        Begin
                            Comment ="_AXL:gument></Action><Action Name=\"StopMacro\"/></Statements></If></Conditional"
                                "Block><ConditionalBlock><If><Condition>[Command]=4</Condition><Statements><Actio"
                                "n Name=\"OpenReport\"><Argument Name=\"ReportName\">=[Argument]</Argument></Acti"
                                "on><Action Name=\"St"
                        End
                        Begin
                            Comment ="_AXL:opMacro\"/></Statements></If></ConditionalBlock><ConditionalBlock><If><Cond"
                                "ition>[Command]=5</Condition><Statements><Action Name=\"RunMenuCommand\"><Argume"
                                "nt Name=\"Command\">SwitchboardManager</Argument></Action><Action Name=\"SetTemp"
                                "Var\"><Argument Name"
                        End
                        Begin
                            Comment ="_AXL:=\"Name\">SwitchboardID</Argument><Argument Name=\"Expression\">DLookUp(\"S"
                                "witchboardID\",\"Switchboard Items\",\"[ItemNumber] = 0 AND [Argument] = 'Defaul"
                                "t'\")</Argument></Action><Action Name=\"SetProperty\"><Argument Name=\"ControlNa"
                                "me\">Label1</Argument><Argu"
                        End
                        Begin
                            Comment ="_AXL:ment Name=\"Property\">Caption</Argument><Argument Name=\"Value\">=DLookUp("
                                "\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" &amp; TempVars(\"Switc"
                                "hboardID\"))</Argument></Action><Action Name=\"SetProperty\"><Argument Name=\"Co"
                                "ntrolName\">Label2</Argument>"
                        End
                        Begin
                            Comment ="_AXL:<Argument Name=\"Property\">Caption</Argument><Argument Name=\"Value\">=DLo"
                                "okUp(\"ItemText\",\"Switchboard Items\",\"[SwitchboardID] = \" &amp; TempVars(\""
                                "SwitchboardID\"))</Argument></Action><Action Name=\"Requery\"/><Action Name=\"St"
                                "opMacro\"/></Statements></If>"
                        End
                        Begin
                            Comment ="_AXL:</ConditionalBlock><ConditionalBlock><If><Condition>[Command]=6</Condition>"
                                "<Statements><Action Name=\"CloseDatabase\"/><Action Name=\"StopMacro\"/></Statem"
                                "ents></If></ConditionalBlock><ConditionalBlock><If><Condition>[Command]=7</Condi"
                                "tion><Statements>"
                        End
                        Begin
                            Comment ="_AXL:<Action Name=\"RunMacro\"><Argument Name=\"MacroName\">=[Argument]</Argumen"
                                "t></Action><Action Name=\"StopMacro\"/></Statements></If></ConditionalBlock><Con"
                                "ditionalBlock><If><Condition>[Command]=8</Condition><Statements><Action Name=\"R"
                                "unCode\"><Argument Na"
                        End
                        Begin
                            Comment ="_AXL:me=\"FunctionName\">=[Argument] &amp; \"()\"</Argument></Action><Action Nam"
                                "e=\"StopMacro\"/></Statements></If></ConditionalBlock><Action Name=\"MessageBox\""
                                "><Argument Name=\"Message\">Unknown option.</Argument></Action></Statements><Sub"
                                " Name=\"ErrorHandler\"><"
                        End
                        Begin
                            Comment ="_AXL:Statements><Action Name=\"MessageBox\"><Argument Name=\"Message\">=[MacroEr"
                                "ror].[Description]</Argument></Action></Statements></Sub></UserInterfaceMacro>"
                        End
                    End

                    LayoutCachedLeft =3390
                    LayoutCachedTop =80
                    LayoutCachedWidth =7380
                    LayoutCachedHeight =320
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                End
                Begin Image
                    BackStyle =1
                    SizeMode =1
                    Width =2685
                    Height =420
                    BackColor =4754549
                    BorderColor =0
                    Name ="Picture"

                    LayoutCachedWidth =2685
                    LayoutCachedHeight =420
                    TabIndex =2
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                End
            End
        End
        Begin FormFooter
            Height =1134
            Name ="FormFooter"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End

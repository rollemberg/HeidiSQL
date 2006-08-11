object MDIChild: TMDIChild
  Left = 652
  Top = 95
  Width = 685
  Height = 454
  Caption = 'MySQL-Host'
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 300
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 274
    Width = 677
    Height = 4
    Cursor = crSizeNS
    Align = alBottom
    AutoSnap = False
    Beveled = True
    ResizeStyle = rsUpdate
    OnMoved = Splitter2Moved
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 274
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 169
      Top = 0
      Width = 4
      Height = 274
      Cursor = crSizeWE
      Beveled = True
      ResizeStyle = rsUpdate
    end
    object DBtree: TTreeView
      Left = 0
      Top = 0
      Width = 169
      Height = 274
      Align = alLeft
      ChangeDelay = 50
      Constraints.MinWidth = 40
      DragMode = dmAutomatic
      HotTrack = True
      Images = MainForm.ImageList1
      Indent = 19
      PopupMenu = PopupMenu1
      ReadOnly = True
      RightClickSelect = True
      RowSelect = True
      ShowRoot = False
      TabOrder = 0
      OnChange = DBtreeChange
    end
    object TableShow: TPanel
      Left = 173
      Top = 0
      Width = 504
      Height = 274
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 504
        Height = 274
        ActivePage = SheetQuery
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotTrack = True
        Images = MainForm.ImageList1
        MultiLine = True
        ParentFont = False
        TabHeight = 22
        TabIndex = 1
        TabOrder = 0
        OnChange = pcChange
        object SheetHost: TTabSheet
          Caption = 'Host'
          ImageIndex = 41
          object PageControl2: TPageControl
            Left = 0
            Top = 17
            Width = 496
            Height = 225
            ActivePage = TabSheet6
            Align = alClient
            HotTrack = True
            TabIndex = 0
            TabOrder = 0
            OnChange = PageControl2Change
            object TabSheet6: TTabSheet
              Caption = 'Variables'
              object ListVariables: TSortListView
                Tag = -1
                Left = 0
                Top = 0
                Width = 488
                Height = 197
                Align = alClient
                Columns = <
                  item
                    Caption = 'Variable'
                    Tag = 63
                    Width = 130
                  end
                  item
                    Caption = 'Value'
                    Tag = 64
                    Width = 354
                  end>
                GridLines = True
                ReadOnly = True
                RowSelect = True
                PopupMenu = PopupMenu2
                TabOrder = 0
                ViewStyle = vsReport
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'Process-List'
              ImageIndex = 1
              object ListProcesses: TSortListView
                Tag = -1
                Left = 0
                Top = 0
                Width = 488
                Height = 197
                Align = alClient
                Columns = <
                  item
                    Caption = 'id'
                    Tag = 65
                    Width = -1
                    WidthType = (
                      -1)
                  end
                  item
                    Caption = 'User'
                    Tag = 66
                    Width = 80
                  end
                  item
                    Caption = 'Host'
                    Tag = 67
                    Width = 80
                  end
                  item
                    Caption = 'DB'
                    Tag = 68
                    Width = -1
                    WidthType = (
                      -1)
                  end
                  item
                    Caption = 'Command'
                    Tag = 69
                    Width = 80
                  end
                  item
                    Caption = 'Time'
                    Tag = 70
                  end
                  item
                    Caption = 'State'
                    Tag = 71
                  end
                  item
                    Caption = 'Info'
                    Tag = 72
                    Width = 126
                  end>
                GridLines = True
                ReadOnly = True
                RowSelect = True
                PopupMenu = PopupMenu2
                SmallImages = MainForm.ImageList1
                TabOrder = 0
                ViewStyle = vsReport
                OnChange = ListProcessesChange
              end
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 496
            Height = 17
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 1
            Caption = 'Host'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object SheetDatabase: TTabSheet
          Caption = 'Database'
          ImageIndex = 38
          DesignSize = (
            496
            242)
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 496
            Height = 17
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 1
            Caption = 'Database'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object ListTables: TSortListView
            Tag = -1
            Left = 30
            Top = 17
            Width = 466
            Height = 218
            Anchors = [akLeft, akTop, akRight, akBottom]
            Columns = <
              item
                Caption = 'Table'
                Tag = 73
                Width = -1
                WidthType = (
                  -1)
              end
              item
                Alignment = taRightJustify
                Caption = 'Records'
                Tag = 74
                Width = 80
              end
              item
                Alignment = taRightJustify
                Caption = 'Size'
                Tag = 75
                Width = -1
                WidthType = (
                  -1)
              end
              item
                Caption = 'Created'
                Tag = 76
                Width = -1
                WidthType = (
                  -1)
              end
              item
                Caption = 'Updated'
                Width = -1
                WidthType = (
                  -1)
              end
              item
                Caption = 'Type'
                Tag = 77
                Width = -1
                WidthType = (
                  -1)
              end
              item
                Caption = 'Comment'
                Tag = 78
                Width = 328
              end>
            GridLines = True
            MultiSelect = True
            RowSelect = True
            ParentShowHint = False
            PopupMenu = pmenu2
            ShowHint = False
            SmallImages = MainForm.ImageList1
            TabOrder = 1
            ViewStyle = vsReport
            OnChange = ListTablesChange
            OnColumnRightClick = ListTablesColumnRightClick
            OnDblClick = ListTablesDblClick
            OnEdited = ListTablesEdited
            OnEditing = ListTablesEditing
            OnMouseDown = ListTablesMouseDown
          end
          object ToolBar1: TToolBar
            Left = 3
            Top = 20
            Width = 26
            Height = 146
            Align = alNone
            Caption = 'ToolBar1'
            Color = clBtnFace
            EdgeInner = esNone
            EdgeOuter = esNone
            Flat = True
            Images = MainForm.ImageList1
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Transparent = True
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Hint = 'View Data'
              Caption = 'View Data'
              Enabled = False
              ImageIndex = 8
              Wrap = True
              OnClick = viewdata
            end
            object ToolButton2: TToolButton
              Left = 0
              Top = 22
              Hint = 'Show Table-Properties'
              Caption = 'Show Table-Properties'
              Enabled = False
              ImageIndex = 9
              Wrap = True
              OnClick = ShowTableProperties
            end
            object ToolButton13: TToolButton
              Left = 0
              Top = 46
              Hint = 'Empty Table ...'
              Caption = 'ToolButton13'
              ImageIndex = 31
              Wrap = True
              OnClick = TabelleLeeren
            end
            object MenuTabelleLoeschen: TToolButton
              Left = 0
              Top = 69
              Action = MainForm.DropTable
              Wrap = True
            end
            object ToolButton14: TToolButton
              Left = 0
              Top = 92
              Action = MainForm.CopyTable
              Wrap = True
            end
          end
          object ToolBar5: TToolBar
            Left = 3
            Top = 153
            Width = 23
            Height = 29
            Align = alNone
            Caption = 'ToolBar5'
            EdgeInner = esNone
            EdgeOuter = esNone
            Images = MainForm.ImageList1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Transparent = True
            object ToolButton3: TToolButton
              Left = 0
              Top = 0
              Hint = 'Insert Record...|Insert new Record into Table...'
              Caption = 'Insert Record'
              Enabled = False
              ImageIndex = 32
              OnClick = InsertRecord
            end
          end
        end
        object SheetTable: TTabSheet
          Caption = 'Table'
          ImageIndex = 40
          DesignSize = (
            496
            242)
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 496
            Height = 17
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 1
            Caption = 'Table-Properties'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object ToolBar2: TToolBar
            Left = 3
            Top = 20
            Width = 26
            Height = 125
            Align = alNone
            ButtonHeight = 23
            Caption = 'ToolBar2'
            EdgeInner = esNone
            EdgeOuter = esNone
            Flat = True
            Images = MainForm.ImageList1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Transparent = True
            Wrapable = False
            object ToolButton10: TToolButton
              Left = 0
              Top = 0
              Hint = 'View Data'
              Caption = 'ToolButton10'
              ImageIndex = 8
              Wrap = True
              OnClick = viewdata
            end
            object ButtonEditField: TToolButton
              Left = 0
              Top = 23
              Hint = 'Edit Field / Index...'
              Caption = 'ButtonEditField'
              ImageIndex = 9
              Wrap = True
              OnClick = UpdateField
            end
            object ButtonAddField: TToolButton
              Left = 0
              Top = 46
              Hint = 'Add Field / Index...'
              Caption = 'ButtonAddField'
              ImageIndex = 34
              Wrap = True
              OnClick = UpdateField
            end
            object ToolButton9: TToolButton
              Left = 0
              Top = 69
              Hint = 'Drop Field ...'
              Caption = 'ToolButton9'
              ImageIndex = 33
              Wrap = True
              OnClick = DropField
            end
          end
          object Panel9: TPanel
            Left = 32
            Top = 17
            Width = 465
            Height = 218
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelOuter = bvNone
            TabOrder = 2
            object ListColumns: TSortListView
              Tag = -1
              Left = 0
              Top = 0
              Width = 465
              Height = 218
              Align = alClient
              Columns = <
                item
                  Caption = 'Name'
                  Tag = 79
                  Width = -1
                  WidthType = (
                    -1)
                end
                item
                  Caption = 'Type'
                  Tag = 80
                  Width = 100
                end
                item
                  Caption = 'Null'
                  Tag = 81
                  Width = 40
                end
                item
                  Caption = 'Default'
                  Tag = 80
                  Width = 115
                end
                item
                  Caption = 'Extra'
                  Tag = 83
                  Width = 200
                end>
              GridLines = True
              ReadOnly = True
              RowSelect = True
              PopupMenu = PopupMenu3
              SmallImages = MainForm.ImageList1
              TabOrder = 0
              ViewStyle = vsReport
              OnChange = ListColumnsChange
              OnDblClick = UpdateField
            end
          end
          object ToolBar6: TToolBar
            Left = 2
            Top = 127
            Width = 23
            Height = 39
            Align = alNone
            ButtonHeight = 23
            Caption = 'ToolBar2'
            EdgeInner = esNone
            EdgeOuter = esNone
            Images = MainForm.ImageList1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Transparent = True
            Wrapable = False
            object ButtonInsert: TToolButton
              Left = 0
              Top = 0
              Hint = 'Insert Record...|Insert new Record into Table...'
              Caption = 'ButtonInsert'
              ImageIndex = 32
              Wrap = True
              OnClick = InsertRecord
            end
          end
        end
        object SheetData: TTabSheet
          Caption = 'Data'
          ImageIndex = 39
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 496
            Height = 23
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 1
            Caption = 'Data'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            DesignSize = (
              496
              23)
            object EditDataSearch: TEdit
              Left = 317
              Top = 0
              Width = 121
              Height = 21
              Anchors = [akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = EditDataSearchEnter
              OnExit = EditDataSearchExit
            end
            object ButtonDataSearch: TButton
              Left = 440
              Top = 0
              Width = 51
              Height = 21
              Anchors = [akTop, akRight]
              Caption = 'Search'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = ButtonDataSearchClick
            end
          end
          object DBGrid1: TSMDBGrid
            Left = 0
            Top = 23
            Width = 496
            Height = 219
            Align = alClient
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            PopupMenu = PopupMenuData
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColEnter = DBGridColEnter
            OnColumnMoved = DBGrid1ColumnMoved
            OnDblClick = DBGridDblClick
            OnEnter = DBGridEnter
            OnExit = DBGridExit
            OnTitleClick = DBGrid1TitleClick
            ExOptions = [eoBooleanAsCheckBox, eoCheckBoxSelect, eoCellHint, eoENTERlikeTAB, eoKeepSelection]
            OnGetCellParams = DBGridGetCellParams
            RegistryKey = 'Software\MikeSoft'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 23
            ScrollBars = ssHorizontal
            ColCount = 2
            RowCount = 2
            Col = 1
            Row = 1
          end
        end
        object SheetQuery: TTabSheet
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 57
          ParentFont = False
          object Splitter3: TSplitter
            Left = 0
            Top = 125
            Width = 496
            Height = 4
            Cursor = crSizeNS
            Align = alTop
            Beveled = True
            ResizeStyle = rsUpdate
          end
          object Label4: TLabel
            Left = 0
            Top = 146
            Width = 496
            Height = 13
            Align = alTop
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 496
            Height = 29
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 1
            Caption = 'SQL-Query:'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Panel8: TPanel
              Left = 317
              Top = 1
              Width = 178
              Height = 27
              Align = alRight
              BevelOuter = bvNone
              BorderWidth = 1
              Color = clWindow
              TabOrder = 0
              object ToolBarQuery: TToolBar
                Left = 1
                Top = 1
                Width = 176
                Height = 25
                Align = alClient
                AutoSize = True
                ButtonHeight = 25
                Caption = 'Query'
                Color = clBtnFace
                DragKind = dkDock
                EdgeBorders = []
                EdgeInner = esNone
                EdgeOuter = esNone
                Flat = True
                Images = MainForm.ImageList1
                ParentColor = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Transparent = True
                Wrapable = False
                object ButtonRunQuery: TToolButton
                  Left = 0
                  Top = 0
                  Action = MainForm.ExecuteQuery
                end
                object ButtonRunSelection: TToolButton
                  Left = 23
                  Top = 0
                  Action = MainForm.ExecuteSelection
                end
                object ButtonLoadSQL: TToolButton
                  Left = 46
                  Top = 0
                  Hint = 'Load SQL from Textfile'
                  Caption = 'Load SQL...'
                  DropdownMenu = MainForm.PopupMenu6
                  ImageIndex = 6
                  Style = tbsDropDown
                  OnClick = ButtonLoadSQLClick
                end
                object ButtonSaveSQL: TToolButton
                  Left = 82
                  Top = 0
                  Hint = 'Save SQL to Textfile'
                  Caption = 'Save SQL...'
                  Enabled = False
                  ImageIndex = 7
                  OnClick = ButtonSaveSQLClick
                end
                object ToolButton15: TToolButton
                  Left = 105
                  Top = 0
                  Hint = 'Find Text...'
                  Caption = 'Find...'
                  ImageIndex = 50
                  OnClick = ToolButton15Click
                end
                object ToolButton19: TToolButton
                  Left = 128
                  Top = 0
                  Action = MainForm.SearchReplace
                end
                object ToolButtonStopOnErrors: TToolButton
                  Left = 151
                  Top = 0
                  Hint = 'Stop on MySQL-errors in batch-mode'
                  Caption = 'ToolButtonStopOnErrors'
                  Down = True
                  ImageIndex = 47
                  Style = tbsCheck
                  OnClick = ToolButtonStopOnErrorsClick
                end
              end
            end
            object PanelCharsInQueryWindow: TPanel
              Left = 201
              Top = 1
              Width = 116
              Height = 27
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = '0 Characters'
              Color = clWindow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 29
            Width = 496
            Height = 96
            Align = alTop
            BevelOuter = bvNone
            Constraints.MinHeight = 10
            TabOrder = 1
            object SynMemo1: TSynMemo
              Left = 0
              Top = 0
              Width = 496
              Height = 96
              Cursor = crIBeam
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              PopupMenu = MainForm.SQLFunctions
              TabOrder = 0
              OnDragDrop = SynMemo1DragDrop
              OnDragOver = SynMemo1DragOver
              OnKeyUp = SynMemo1KeyUp
              OnMouseUp = SynMemo1MouseUp
              Gutter.AutoSize = True
              Gutter.Font.Charset = DEFAULT_CHARSET
              Gutter.Font.Color = clWindowText
              Gutter.Font.Height = -11
              Gutter.Font.Name = 'Terminal'
              Gutter.Font.Style = []
              Gutter.LeftOffset = 10
              Gutter.RightOffset = 0
              Gutter.ShowLineNumbers = True
              Highlighter = SynSQLSyn1
              Keystrokes = <
                item
                  Command = ecUp
                  ShortCut = 38
                end
                item
                  Command = ecSelUp
                  ShortCut = 8230
                end
                item
                  Command = ecScrollUp
                  ShortCut = 16422
                end
                item
                  Command = ecDown
                  ShortCut = 40
                end
                item
                  Command = ecSelDown
                  ShortCut = 8232
                end
                item
                  Command = ecScrollDown
                  ShortCut = 16424
                end
                item
                  Command = ecLeft
                  ShortCut = 37
                end
                item
                  Command = ecSelLeft
                  ShortCut = 8229
                end
                item
                  Command = ecWordLeft
                  ShortCut = 16421
                end
                item
                  Command = ecSelWordLeft
                  ShortCut = 24613
                end
                item
                  Command = ecRight
                  ShortCut = 39
                end
                item
                  Command = ecSelRight
                  ShortCut = 8231
                end
                item
                  Command = ecWordRight
                  ShortCut = 16423
                end
                item
                  Command = ecSelWordRight
                  ShortCut = 24615
                end
                item
                  Command = ecPageDown
                  ShortCut = 34
                end
                item
                  Command = ecSelPageDown
                  ShortCut = 8226
                end
                item
                  Command = ecPageBottom
                  ShortCut = 16418
                end
                item
                  Command = ecSelPageBottom
                  ShortCut = 24610
                end
                item
                  Command = ecPageUp
                  ShortCut = 33
                end
                item
                  Command = ecSelPageUp
                  ShortCut = 8225
                end
                item
                  Command = ecPageTop
                  ShortCut = 16417
                end
                item
                  Command = ecSelPageTop
                  ShortCut = 24609
                end
                item
                  Command = ecLineStart
                  ShortCut = 36
                end
                item
                  Command = ecSelLineStart
                  ShortCut = 8228
                end
                item
                  Command = ecEditorTop
                  ShortCut = 16420
                end
                item
                  Command = ecSelEditorTop
                  ShortCut = 24612
                end
                item
                  Command = ecLineEnd
                  ShortCut = 35
                end
                item
                  Command = ecSelLineEnd
                  ShortCut = 8227
                end
                item
                  Command = ecEditorBottom
                  ShortCut = 16419
                end
                item
                  Command = ecSelEditorBottom
                  ShortCut = 24611
                end
                item
                  Command = ecToggleMode
                  ShortCut = 45
                end
                item
                  Command = ecCopy
                  ShortCut = 16429
                end
                item
                  Command = ecPaste
                  ShortCut = 8237
                end
                item
                  Command = ecDeleteChar
                  ShortCut = 46
                end
                item
                  Command = ecCut
                  ShortCut = 8238
                end
                item
                  Command = ecDeleteLastChar
                  ShortCut = 8
                end
                item
                  Command = ecDeleteLastWord
                  ShortCut = 16392
                end
                item
                  Command = ecUndo
                  ShortCut = 32776
                end
                item
                  Command = ecRedo
                  ShortCut = 40968
                end
                item
                  Command = ecLineBreak
                  ShortCut = 13
                end
                item
                  Command = ecSelectAll
                  ShortCut = 16449
                end
                item
                  Command = ecCopy
                  ShortCut = 16451
                end
                item
                  Command = ecBlockIndent
                  ShortCut = 24649
                end
                item
                  Command = ecLineBreak
                  ShortCut = 16461
                end
                item
                  Command = ecInsertLine
                  ShortCut = 16462
                end
                item
                  Command = ecDeleteWord
                  ShortCut = 16468
                end
                item
                  Command = ecBlockUnindent
                  ShortCut = 24661
                end
                item
                  Command = ecPaste
                  ShortCut = 16470
                end
                item
                  Command = ecCut
                  ShortCut = 16472
                end
                item
                  Command = ecDeleteEOL
                  ShortCut = 24665
                end
                item
                  Command = ecUndo
                  ShortCut = 16474
                end
                item
                  Command = ecRedo
                  ShortCut = 24666
                end
                item
                  Command = ecGotoMarker0
                  ShortCut = 16432
                end
                item
                  Command = ecGotoMarker1
                  ShortCut = 16433
                end
                item
                  Command = ecGotoMarker2
                  ShortCut = 16434
                end
                item
                  Command = ecGotoMarker3
                  ShortCut = 16435
                end
                item
                  Command = ecGotoMarker4
                  ShortCut = 16436
                end
                item
                  Command = ecGotoMarker5
                  ShortCut = 16437
                end
                item
                  Command = ecGotoMarker6
                  ShortCut = 16438
                end
                item
                  Command = ecGotoMarker7
                  ShortCut = 16439
                end
                item
                  Command = ecGotoMarker8
                  ShortCut = 16440
                end
                item
                  Command = ecGotoMarker9
                  ShortCut = 16441
                end
                item
                  Command = ecSetMarker0
                  ShortCut = 24624
                end
                item
                  Command = ecSetMarker1
                  ShortCut = 24625
                end
                item
                  Command = ecSetMarker2
                  ShortCut = 24626
                end
                item
                  Command = ecSetMarker3
                  ShortCut = 24627
                end
                item
                  Command = ecSetMarker4
                  ShortCut = 24628
                end
                item
                  Command = ecSetMarker5
                  ShortCut = 24629
                end
                item
                  Command = ecSetMarker6
                  ShortCut = 24630
                end
                item
                  Command = ecSetMarker7
                  ShortCut = 24631
                end
                item
                  Command = ecSetMarker8
                  ShortCut = 24632
                end
                item
                  Command = ecSetMarker9
                  ShortCut = 24633
                end
                item
                  Command = ecNormalSelect
                  ShortCut = 24654
                end
                item
                  Command = ecColumnSelect
                  ShortCut = 24643
                end
                item
                  Command = ecLineSelect
                  ShortCut = 24652
                end
                item
                  Command = ecTab
                  ShortCut = 9
                end
                item
                  Command = ecShiftTab
                  ShortCut = 8201
                end
                item
                  Command = ecMatchBracket
                  ShortCut = 24642
                end>
              Options = [eoAutoIndent, eoDropFiles, eoGroupUndo, eoShowScrollHint]
              RightEdge = 40
              TabWidth = 2
              WantTabs = True
              OnChange = SynMemo1Change
              OnDropFiles = SynMemo1DropFiles
            end
          end
          object DBGrid2: TSMDBGrid
            Left = 0
            Top = 159
            Width = 496
            Height = 83
            Align = alClient
            DataSource = DataSource2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            PopupMenu = Result
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColEnter = DBGridColEnter
            OnDblClick = DBGridDblClick
            OnEnter = DBGridEnter
            OnExit = DBGridExit
            ExOptions = [eoBooleanAsCheckBox, eoCellHint, eoENTERlikeTAB, eoKeepSelection]
            OnGetCellParams = DBGridGetCellParams
            RegistryKey = 'Software\MikeSoft'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 11
            ScrollBars = ssHorizontal
            ColCount = 2
            RowCount = 2
            Col = 1
            Row = 1
          end
          object ProgressBarQuery: TProgressBar
            Left = 0
            Top = 129
            Width = 496
            Height = 17
            Align = alTop
            Min = 0
            Max = 100
            Step = 1
            TabOrder = 3
            Visible = False
          end
        end
      end
    end
  end
  object PageControl3: TPageControl
    Left = 0
    Top = 278
    Width = 677
    Height = 142
    ActivePage = TabSheet2
    Align = alBottom
    HotTrack = True
    Images = MainForm.ImageList1
    TabHeight = 20
    TabIndex = 1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'SQL Log'
      ImageIndex = 79
      object SynMemo2: TSynMemo
        Left = 0
        Top = 0
        Width = 669
        Height = 112
        Cursor = crIBeam
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        PopupMenu = PopupMenu4
        TabOrder = 0
        Gutter.AutoSize = True
        Gutter.DigitCount = 2
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Terminal'
        Gutter.Font.Style = []
        Highlighter = SynSQLSyn1
        Keystrokes = <
          item
            Command = ecUp
            ShortCut = 38
          end
          item
            Command = ecSelUp
            ShortCut = 8230
          end
          item
            Command = ecScrollUp
            ShortCut = 16422
          end
          item
            Command = ecDown
            ShortCut = 40
          end
          item
            Command = ecSelDown
            ShortCut = 8232
          end
          item
            Command = ecScrollDown
            ShortCut = 16424
          end
          item
            Command = ecLeft
            ShortCut = 37
          end
          item
            Command = ecSelLeft
            ShortCut = 8229
          end
          item
            Command = ecWordLeft
            ShortCut = 16421
          end
          item
            Command = ecSelWordLeft
            ShortCut = 24613
          end
          item
            Command = ecRight
            ShortCut = 39
          end
          item
            Command = ecSelRight
            ShortCut = 8231
          end
          item
            Command = ecWordRight
            ShortCut = 16423
          end
          item
            Command = ecSelWordRight
            ShortCut = 24615
          end
          item
            Command = ecPageDown
            ShortCut = 34
          end
          item
            Command = ecSelPageDown
            ShortCut = 8226
          end
          item
            Command = ecPageBottom
            ShortCut = 16418
          end
          item
            Command = ecSelPageBottom
            ShortCut = 24610
          end
          item
            Command = ecPageUp
            ShortCut = 33
          end
          item
            Command = ecSelPageUp
            ShortCut = 8225
          end
          item
            Command = ecPageTop
            ShortCut = 16417
          end
          item
            Command = ecSelPageTop
            ShortCut = 24609
          end
          item
            Command = ecLineStart
            ShortCut = 36
          end
          item
            Command = ecSelLineStart
            ShortCut = 8228
          end
          item
            Command = ecEditorTop
            ShortCut = 16420
          end
          item
            Command = ecSelEditorTop
            ShortCut = 24612
          end
          item
            Command = ecLineEnd
            ShortCut = 35
          end
          item
            Command = ecSelLineEnd
            ShortCut = 8227
          end
          item
            Command = ecEditorBottom
            ShortCut = 16419
          end
          item
            Command = ecSelEditorBottom
            ShortCut = 24611
          end
          item
            Command = ecToggleMode
            ShortCut = 45
          end
          item
            Command = ecCopy
            ShortCut = 16429
          end
          item
            Command = ecPaste
            ShortCut = 8237
          end
          item
            Command = ecDeleteChar
            ShortCut = 46
          end
          item
            Command = ecCut
            ShortCut = 8238
          end
          item
            Command = ecDeleteLastChar
            ShortCut = 8
          end
          item
            Command = ecDeleteLastWord
            ShortCut = 16392
          end
          item
            Command = ecUndo
            ShortCut = 32776
          end
          item
            Command = ecRedo
            ShortCut = 40968
          end
          item
            Command = ecLineBreak
            ShortCut = 13
          end
          item
            Command = ecSelectAll
            ShortCut = 16449
          end
          item
            Command = ecCopy
            ShortCut = 16451
          end
          item
            Command = ecBlockIndent
            ShortCut = 24649
          end
          item
            Command = ecLineBreak
            ShortCut = 16461
          end
          item
            Command = ecInsertLine
            ShortCut = 16462
          end
          item
            Command = ecDeleteWord
            ShortCut = 16468
          end
          item
            Command = ecBlockUnindent
            ShortCut = 24661
          end
          item
            Command = ecPaste
            ShortCut = 16470
          end
          item
            Command = ecCut
            ShortCut = 16472
          end
          item
            Command = ecDeleteEOL
            ShortCut = 24665
          end
          item
            Command = ecUndo
            ShortCut = 16474
          end
          item
            Command = ecRedo
            ShortCut = 24666
          end
          item
            Command = ecGotoMarker0
            ShortCut = 16432
          end
          item
            Command = ecGotoMarker1
            ShortCut = 16433
          end
          item
            Command = ecGotoMarker2
            ShortCut = 16434
          end
          item
            Command = ecGotoMarker3
            ShortCut = 16435
          end
          item
            Command = ecGotoMarker4
            ShortCut = 16436
          end
          item
            Command = ecGotoMarker5
            ShortCut = 16437
          end
          item
            Command = ecGotoMarker6
            ShortCut = 16438
          end
          item
            Command = ecGotoMarker7
            ShortCut = 16439
          end
          item
            Command = ecGotoMarker8
            ShortCut = 16440
          end
          item
            Command = ecGotoMarker9
            ShortCut = 16441
          end
          item
            Command = ecSetMarker0
            ShortCut = 24624
          end
          item
            Command = ecSetMarker1
            ShortCut = 24625
          end
          item
            Command = ecSetMarker2
            ShortCut = 24626
          end
          item
            Command = ecSetMarker3
            ShortCut = 24627
          end
          item
            Command = ecSetMarker4
            ShortCut = 24628
          end
          item
            Command = ecSetMarker5
            ShortCut = 24629
          end
          item
            Command = ecSetMarker6
            ShortCut = 24630
          end
          item
            Command = ecSetMarker7
            ShortCut = 24631
          end
          item
            Command = ecSetMarker8
            ShortCut = 24632
          end
          item
            Command = ecSetMarker9
            ShortCut = 24633
          end
          item
            Command = ecNormalSelect
            ShortCut = 24654
          end
          item
            Command = ecColumnSelect
            ShortCut = 24643
          end
          item
            Command = ecLineSelect
            ShortCut = 24652
          end
          item
            Command = ecTab
            ShortCut = 9
          end
          item
            Command = ecShiftTab
            ShortCut = 8201
          end
          item
            Command = ecMatchBracket
            ShortCut = 24642
          end>
        Options = [eoAutoIndent, eoDragDropEditing, eoShowScrollHint, eoSmartTabs, eoTabsToSpaces]
        ReadOnly = True
        RightEdge = 40
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'BLOB-Editor'
      ImageIndex = 80
      object ToolBar3: TToolBar
        Left = 0
        Top = 0
        Width = 23
        Height = 112
        Align = alLeft
        AutoSize = True
        Caption = 'ToolBar1'
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        Images = MainForm.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Transparent = True
        Wrapable = False
        object ToolButton6: TToolButton
          Left = 0
          Top = 0
          Hint = 'Wordwrap'
          Caption = 'ToolButton1'
          ImageIndex = 54
          Wrap = True
          Style = tbsCheck
          OnClick = ToolButton6Click
        end
        object ToolButton7: TToolButton
          Left = 0
          Top = 22
          Hint = 'Open|Open file'
          Caption = 'ToolButton4'
          ImageIndex = 6
          Wrap = True
          OnClick = ToolButton7Click
        end
        object ToolButton8: TToolButton
          Left = 0
          Top = 44
          Hint = 'Save|Save to File'
          Caption = 'ToolButton5'
          ImageIndex = 7
          Wrap = True
          OnClick = ToolButton8Click
        end
        object ToolButton4: TToolButton
          Left = 0
          Top = 66
          Action = MainForm.HTMLview
          Wrap = True
        end
        object ToolButton5: TToolButton
          Left = 0
          Top = 88
          Hint = 'Copy to clipboard'
          Caption = 'ToolButton5'
          ImageIndex = 1
          OnClick = ToolButton5Click
        end
      end
      object PageControl4: TPageControl
        Left = 23
        Top = 0
        Width = 646
        Height = 112
        ActivePage = TabSheet3
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        OnChange = PageControl4Change
        object TabSheet3: TTabSheet
          Caption = 'Text'
          object DBMemo1: TDBMemo
            Left = 0
            Top = 0
            Width = 638
            Height = 84
            Align = alClient
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            OnKeyDown = DBMemo1KeyDown
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Image'
          ImageIndex = 1
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 638
            Height = 84
            Align = alClient
            TabOrder = 0
            object EDBImage1: TEDBImage
              Left = 0
              Top = 0
              Width = 1
              Height = 60
              Align = alCustom
              Anchors = [akTop, akBottom]
              BorderStyle = bsNone
              Color = clBtnFace
              Stretch = True
              TabOrder = 0
            end
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Filter'
      ImageIndex = 81
      object SynMemo3: TSynMemo
        Left = 0
        Top = 29
        Width = 669
        Height = 83
        Cursor = crIBeam
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        PopupMenu = MainForm.SQLFunctions
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Terminal'
        Gutter.Font.Style = []
        Gutter.LeftOffset = 10
        Gutter.RightOffset = 0
        Gutter.ShowLineNumbers = True
        Highlighter = SynSQLSyn1
        Keystrokes = <
          item
            Command = ecUp
            ShortCut = 38
          end
          item
            Command = ecSelUp
            ShortCut = 8230
          end
          item
            Command = ecScrollUp
            ShortCut = 16422
          end
          item
            Command = ecDown
            ShortCut = 40
          end
          item
            Command = ecSelDown
            ShortCut = 8232
          end
          item
            Command = ecScrollDown
            ShortCut = 16424
          end
          item
            Command = ecLeft
            ShortCut = 37
          end
          item
            Command = ecSelLeft
            ShortCut = 8229
          end
          item
            Command = ecWordLeft
            ShortCut = 16421
          end
          item
            Command = ecSelWordLeft
            ShortCut = 24613
          end
          item
            Command = ecRight
            ShortCut = 39
          end
          item
            Command = ecSelRight
            ShortCut = 8231
          end
          item
            Command = ecWordRight
            ShortCut = 16423
          end
          item
            Command = ecSelWordRight
            ShortCut = 24615
          end
          item
            Command = ecPageDown
            ShortCut = 34
          end
          item
            Command = ecSelPageDown
            ShortCut = 8226
          end
          item
            Command = ecPageBottom
            ShortCut = 16418
          end
          item
            Command = ecSelPageBottom
            ShortCut = 24610
          end
          item
            Command = ecPageUp
            ShortCut = 33
          end
          item
            Command = ecSelPageUp
            ShortCut = 8225
          end
          item
            Command = ecPageTop
            ShortCut = 16417
          end
          item
            Command = ecSelPageTop
            ShortCut = 24609
          end
          item
            Command = ecLineStart
            ShortCut = 36
          end
          item
            Command = ecSelLineStart
            ShortCut = 8228
          end
          item
            Command = ecEditorTop
            ShortCut = 16420
          end
          item
            Command = ecSelEditorTop
            ShortCut = 24612
          end
          item
            Command = ecLineEnd
            ShortCut = 35
          end
          item
            Command = ecSelLineEnd
            ShortCut = 8227
          end
          item
            Command = ecEditorBottom
            ShortCut = 16419
          end
          item
            Command = ecSelEditorBottom
            ShortCut = 24611
          end
          item
            Command = ecToggleMode
            ShortCut = 45
          end
          item
            Command = ecCopy
            ShortCut = 16429
          end
          item
            Command = ecPaste
            ShortCut = 8237
          end
          item
            Command = ecDeleteChar
            ShortCut = 46
          end
          item
            Command = ecCut
            ShortCut = 8238
          end
          item
            Command = ecDeleteLastChar
            ShortCut = 8
          end
          item
            Command = ecDeleteLastWord
            ShortCut = 16392
          end
          item
            Command = ecUndo
            ShortCut = 32776
          end
          item
            Command = ecRedo
            ShortCut = 40968
          end
          item
            Command = ecLineBreak
            ShortCut = 13
          end
          item
            Command = ecSelectAll
            ShortCut = 16449
          end
          item
            Command = ecCopy
            ShortCut = 16451
          end
          item
            Command = ecBlockIndent
            ShortCut = 24649
          end
          item
            Command = ecLineBreak
            ShortCut = 16461
          end
          item
            Command = ecInsertLine
            ShortCut = 16462
          end
          item
            Command = ecDeleteWord
            ShortCut = 16468
          end
          item
            Command = ecBlockUnindent
            ShortCut = 24661
          end
          item
            Command = ecPaste
            ShortCut = 16470
          end
          item
            Command = ecCut
            ShortCut = 16472
          end
          item
            Command = ecDeleteEOL
            ShortCut = 24665
          end
          item
            Command = ecUndo
            ShortCut = 16474
          end
          item
            Command = ecRedo
            ShortCut = 24666
          end
          item
            Command = ecGotoMarker0
            ShortCut = 16432
          end
          item
            Command = ecGotoMarker1
            ShortCut = 16433
          end
          item
            Command = ecGotoMarker2
            ShortCut = 16434
          end
          item
            Command = ecGotoMarker3
            ShortCut = 16435
          end
          item
            Command = ecGotoMarker4
            ShortCut = 16436
          end
          item
            Command = ecGotoMarker5
            ShortCut = 16437
          end
          item
            Command = ecGotoMarker6
            ShortCut = 16438
          end
          item
            Command = ecGotoMarker7
            ShortCut = 16439
          end
          item
            Command = ecGotoMarker8
            ShortCut = 16440
          end
          item
            Command = ecGotoMarker9
            ShortCut = 16441
          end
          item
            Command = ecSetMarker0
            ShortCut = 24624
          end
          item
            Command = ecSetMarker1
            ShortCut = 24625
          end
          item
            Command = ecSetMarker2
            ShortCut = 24626
          end
          item
            Command = ecSetMarker3
            ShortCut = 24627
          end
          item
            Command = ecSetMarker4
            ShortCut = 24628
          end
          item
            Command = ecSetMarker5
            ShortCut = 24629
          end
          item
            Command = ecSetMarker6
            ShortCut = 24630
          end
          item
            Command = ecSetMarker7
            ShortCut = 24631
          end
          item
            Command = ecSetMarker8
            ShortCut = 24632
          end
          item
            Command = ecSetMarker9
            ShortCut = 24633
          end
          item
            Command = ecNormalSelect
            ShortCut = 24654
          end
          item
            Command = ecColumnSelect
            ShortCut = 24643
          end
          item
            Command = ecLineSelect
            ShortCut = 24652
          end
          item
            Command = ecTab
            ShortCut = 9
          end
          item
            Command = ecShiftTab
            ShortCut = 8201
          end
          item
            Command = ecMatchBracket
            ShortCut = 24642
          end>
        Options = [eoAutoIndent, eoDragDropEditing, eoShowScrollHint, eoSmartTabs, eoTabsToSpaces]
        RightEdge = 40
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 669
        Height = 29
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          669
          29)
        object ComboBoxWhereFilters: TComboBox
          Left = 168
          Top = 2
          Width = 498
          Height = 21
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBoxWhereFiltersChange
        end
        object ToolBar4: TToolBar
          Left = 0
          Top = 0
          Width = 159
          Height = 29
          Align = alLeft
          AutoSize = True
          Caption = 'ToolBar1'
          EdgeInner = esNone
          EdgeOuter = esNone
          Flat = True
          Images = MainForm.ImageList1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Transparent = True
          Wrapable = False
          object ToolButton18: TToolButton
            Left = 0
            Top = 0
            Hint = 'Set Filter'
            Caption = 'Set Filter'
            ImageIndex = 10
            OnClick = setFilter
          end
          object ToolButton11: TToolButton
            Left = 23
            Top = 0
            Hint = 'Open File'
            DropdownMenu = PopupMenu7
            ImageIndex = 6
            Style = tbsDropDown
            OnClick = ToolButton11Click
          end
          object ToolButton12: TToolButton
            Left = 59
            Top = 0
            Hint = 'Save|Save to File'
            ImageIndex = 7
            OnClick = ToolButton12Click
          end
          object ToolButton17: TToolButton
            Left = 82
            Top = 0
            Hint = 'Clear Filter'
            Caption = 'Clear'
            ImageIndex = 70
            OnClick = ClearFilter
          end
          object ToolButton16: TToolButton
            Left = 105
            Top = 0
            Width = 8
            Caption = 'ToolButton16'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object BtnPreviousFilter: TToolButton
            Left = 113
            Top = 0
            Hint = 'Previous filter'
            Enabled = False
            ImageIndex = 77
            OnClick = BtnPreviousFilterClick
          end
          object BtnNextFilter: TToolButton
            Left = 136
            Top = 0
            Hint = 'Next filter'
            Enabled = False
            ImageIndex = 78
            OnClick = BtnNextFilterClick
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = MainForm.ImageList1
    OnPopup = PopupMenu1Popup
    Left = 8
    Top = 48
    object NewDatabase1: TMenuItem
      Caption = 'Create Database...'
      ImageIndex = 73
      OnClick = CreateDatabase
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object PopupmenuDropDatabase: TMenuItem
      Caption = 'Drop Database...'
      ImageIndex = 22
      OnClick = DBLoeschen
    end
    object PopupMenuDropTable: TMenuItem
      Action = MainForm.DropTable
    end
    object Exporttables2: TMenuItem
      Action = MainForm.ExportTables
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Drop1: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 18
      ShortCut = 116
      OnClick = ReadDatabasesAndTables
    end
  end
  object pmenu2: TPopupMenu
    AutoPopup = False
    Images = MainForm.ImageList1
    Left = 72
    Top = 48
    object menuproperties: TMenuItem
      Caption = 'Properties'
      Default = True
      Enabled = False
      ImageIndex = 9
      OnClick = ShowTableProperties
    end
    object MenuAdvancedProperties: TMenuItem
      Caption = 'Advanced Properties'
      Enabled = False
      OnClick = MenuAdvancedPropertiesClick
    end
    object menuviewdata: TMenuItem
      Caption = 'View Data'
      Enabled = False
      ImageIndex = 8
      OnClick = TabelleAnzeigen
    end
    object menuinsert: TMenuItem
      Caption = 'Insert Record'
      Enabled = False
      ImageIndex = 32
      ShortCut = 45
      OnClick = InsertRecord
    end
    object InsertfilesintoBLOBfields1: TMenuItem
      Action = MainForm.InsertFiles
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Table1: TMenuItem
      Caption = 'Commands'
      object menudroptable: TMenuItem
        Action = MainForm.DropTable
      end
      object menuemptytable: TMenuItem
        Caption = 'Empty ...'
        Enabled = False
        ImageIndex = 31
        ShortCut = 8238
        OnClick = TabelleLeeren
      end
      object MenuRenameTable: TMenuItem
        Caption = 'Rename'
        Enabled = False
        ShortCut = 113
        OnClick = MenuRenameTableClick
      end
      object MenuTableComment: TMenuItem
        Caption = 'Edit Comment'
        Enabled = False
        ShortCut = 114
        OnClick = MenuTableCommentClick
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object MenuOptimize: TMenuItem
        Caption = 'OPTIMIZE'
        Enabled = False
        OnClick = MenuOptimizeClick
      end
      object MenuCheck: TMenuItem
        Caption = 'CHECK'
        Enabled = False
        OnClick = MenuCheckClick
      end
      object MenuAnalyze: TMenuItem
        Caption = 'ANALYZE'
        Enabled = False
        OnClick = MenuAnalyzeClick
      end
      object MenuRepair: TMenuItem
        Caption = 'REPAIR'
        Enabled = False
        OnClick = MenuRepairClick
      end
      object More1: TMenuItem
        Caption = 'More Diagnostics...'
        OnClick = More1Click
      end
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object MenuCopyTable: TMenuItem
      Action = MainForm.CopyTable
    end
    object MenuChangeType: TMenuItem
      Caption = 'Change Type'
      object MenuChangeType1: TMenuItem
        Caption = 'ISAM'
        Hint = 'ISAM'
        OnClick = MenuChangeTypeClick
      end
      object MenuChangeType2: TMenuItem
        Caption = 'MyISAM'
        Hint = 'MyISAM'
        OnClick = MenuChangeTypeClick
      end
      object MenuChangeType3: TMenuItem
        Caption = 'HEAP'
        Hint = 'HEAP'
        OnClick = MenuChangeTypeClick
      end
      object MenuChangeType4: TMenuItem
        Caption = 'MERGE'
        Hint = 'MERGE'
        OnClick = MenuChangeTypeClick
      end
      object MenuChangeType5: TMenuItem
        Caption = 'InnoDB'
        Hint = 'InnoDB'
        OnClick = MenuChangeTypeClick
      end
      object MenuChangeType6: TMenuItem
        Caption = 'BDB'
        Hint = 'BDB'
        OnClick = MenuChangeTypeClick
      end
      object Gemini1: TMenuItem
        Caption = 'Gemini'
        Hint = 'Gemini'
        OnClick = MenuChangeTypeClick
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object MenuChangeTypeOther: TMenuItem
        Caption = 'Other...'
        OnClick = MenuChangeTypeOtherClick
      end
    end
    object menucreatetable: TMenuItem
      Caption = 'Create new Table...'
      ImageIndex = 72
      OnClick = CreateTable
    end
    object Exporttables1: TMenuItem
      Action = MainForm.ExportTables
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object PrintList3: TMenuItem
      Action = MainForm.PrintList
    end
    object menurefresh: TMenuItem
      Tag = 28
      Caption = 'Refresh'
      ImageIndex = 18
      ShortCut = 116
      OnClick = ShowDBProperties
    end
    object selectall1: TMenuItem
      Caption = 'select all'
      ShortCut = 16449
      Visible = False
      OnClick = selectall1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Images = MainForm.ImageList1
    OnPopup = PopupMenu2Popup
    Left = 41
    Top = 48
    object Kill1: TMenuItem
      Caption = 'Kill Process...'
      Enabled = False
      ImageIndex = 83
      ShortCut = 46
      OnClick = KillProcess
    end
    object MenuAutoupdate: TMenuItem
      Caption = 'Auto-refresh'
      object Set1: TMenuItem
        Caption = 'Set interval...'
        OnClick = Autoupdate1Click
      end
      object EnableAutoRefresh: TMenuItem
        Caption = 'Active'
        RadioItem = True
        OnClick = EnableAutoRefreshClick
      end
      object DisableAutoRefresh: TMenuItem
        Caption = 'Inactive'
        Checked = True
        RadioItem = True
        OnClick = DisableAutoRefreshClick
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PrintList2: TMenuItem
      Action = MainForm.PrintList
    end
    object Refresh1: TMenuItem
      Tag = 28
      Caption = 'Refresh'
      ImageIndex = 18
      ShortCut = 116
      OnClick = ShowVariablesAndProcesses
    end
  end
  object SynSQLSyn1: TSynSQLSyn
    DefaultFilter = 'SQL files (*.sql)|*.sql'
    CommentAttri.Foreground = clGray
    DataTypeAttri.Foreground = clMaroon
    FunctionAttri.Foreground = clNavy
    KeyAttri.Foreground = clBlue
    NumberAttri.Foreground = clPurple
    StringAttri.Foreground = clGreen
    SymbolAttri.Foreground = clBlue
    TableNameAttri.Foreground = clFuchsia
    VariableAttri.Foreground = clPurple
    SQLDialect = sqlMySQL
    Left = 39
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'sql'
    Filter = 'SQL-Scripts (*.sql)|*.sql|All files (*.*)|*.*'
    Left = 7
    Top = 120
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 7
    Top = 157
  end
  object PopupMenu3: TPopupMenu
    Images = MainForm.ImageList1
    Left = 104
    Top = 48
    object MenuEditField: TMenuItem
      Caption = 'Properties'
      Default = True
      ImageIndex = 9
      ShortCut = 13
      OnClick = UpdateField
    end
    object MenuAddField: TMenuItem
      Caption = 'Add Field or Index...'
      ImageIndex = 34
      ShortCut = 16449
      OnClick = MenuAddFieldClick
    end
    object DropField1: TMenuItem
      Caption = 'Drop Field...'
      Hint = 'Delete Field from Table'
      ImageIndex = 33
      ShortCut = 46
      OnClick = DropField
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Insertrecord2: TMenuItem
      Caption = 'Insert record...'
      ImageIndex = 32
      ShortCut = 45
      OnClick = InsertRecord
    end
    object InsertfilesintoBLOBfields2: TMenuItem
      Action = MainForm.InsertFiles
    end
    object PrintList4: TMenuItem
      Action = MainForm.PrintList
    end
    object Refresh2: TMenuItem
      Tag = 28
      Caption = 'Refresh'
      Hint = 'Refresh|Refresh Field-List'
      ImageIndex = 18
      ShortCut = 116
      OnClick = ShowTableProperties
    end
  end
  object PopupMenuData: TPopupMenu
    Images = MainForm.ImageList1
    OnPopup = PopupMenuDataPopup
    Left = 8
    Top = 80
    object Copy3: TMenuItem
      Action = MainForm.EditCopy1
    end
    object Copy2: TMenuItem
      Action = MainForm.ManualCopy
    end
    object Paste2: TMenuItem
      Action = MainForm.EditPaste1
    end
    object setNULL1: TMenuItem
      Caption = 'Set NULL'
      ShortCut = 24654
      OnClick = setNULL1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Delete record(s)'
      ImageIndex = 23
      ShortCut = 16430
      OnClick = Delete1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object QuickFilter1: TMenuItem
      Caption = 'Quick Filter'
      object QF1: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Field = Value'
        OnClick = QuickFilterClick
      end
      object QF2: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Field != Value'
        OnClick = QuickFilterClick
      end
      object QF3: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Field > Value'
        OnClick = QuickFilterClick
      end
      object QF4: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Field < Value'
        OnClick = QuickFilterClick
      end
      object QF5: TMenuItem
        Caption = 'Field like Value%'
        OnClick = QuickFilterClick
      end
      object QF6: TMenuItem
        Caption = 'Field like %Value'
        OnClick = QuickFilterClick
      end
      object QF7: TMenuItem
        Caption = 'Field like %Value%'
        OnClick = QuickFilterClick
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object QF8: TMenuItem
        Caption = 'Field = ?'
        OnClick = QuickFilterClick
      end
      object QF9: TMenuItem
        Caption = 'Field != ?'
        OnClick = QuickFilterClick
      end
      object QF10: TMenuItem
        Caption = 'Field > ?'
        OnClick = QuickFilterClick
      end
      object QF11: TMenuItem
        Caption = 'Field < ?'
        OnClick = QuickFilterClick
      end
      object QF12: TMenuItem
        Caption = 'Field like ?'
        OnClick = QuickFilterClick
      end
      object N7: TMenuItem
        AutoHotkeys = maManual
        Caption = '-'
      end
      object DropFilter1: TMenuItem
        Caption = 'Drop Filter'
        OnClick = DropFilter1Click
      end
    end
    object Filter1: TMenuItem
      Caption = 'Filter...'
      OnClick = Filter1Click
    end
    object MenuLimit: TMenuItem
      Caption = 'Limit'
      Checked = True
      OnClick = MenuLimitClick
    end
    object Find1: TMenuItem
      Action = MainForm.DataSearch
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Copytableas1: TMenuItem
      Tag = 46
      Caption = 'Copy data'
      object CopyasCSVData1: TMenuItem
        Tag = 48
        Action = MainForm.Copy2CSV
      end
      object CopycontentsasHTML1: TMenuItem
        Tag = 49
        Action = MainForm.CopyHTMLtable
      end
      object CopyasXMLdata1: TMenuItem
        Action = MainForm.Copy2XML
      end
    end
    object Exportdata2: TMenuItem
      Action = MainForm.ExportData
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object DataInsertDateTime: TMenuItem
      Caption = 'Insert Date/Time'
      object DataDateTime: TMenuItem
        Caption = 'datetime'
        Hint = 'Insert datetime-value'
        OnClick = InsertDate
      end
      object DataDate: TMenuItem
        Caption = 'date'
        Hint = 'Insert date-value'
        OnClick = InsertDate
      end
      object DataTime: TMenuItem
        Caption = 'time'
        Hint = 'Insert time-value'
        OnClick = InsertDate
      end
      object DataTimestamp: TMenuItem
        Caption = 'timestamp'
        Hint = 'Insert timestamp-value'
        OnClick = InsertDate
      end
      object DataYear: TMenuItem
        Caption = 'year'
        Hint = 'Insert year-value'
        OnClick = InsertDate
      end
    end
    object MenuViewBlob: TMenuItem
      Caption = 'Edit Memo/BLOB'
      OnClick = MenuViewBlobClick
    end
    object ViewasHTML1: TMenuItem
      Action = MainForm.HTMLview
    end
    object InsertfilesintoBLOBfields3: TMenuItem
      Action = MainForm.InsertFiles
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object Refresh3: TMenuItem
      Tag = 28
      Caption = 'Refresh'
      ImageIndex = 18
      ShortCut = 116
      OnClick = viewdata
    end
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 39
    Top = 157
  end
  object Result: TPopupMenu
    Images = MainForm.ImageList1
    OnPopup = ResultPopup
    Left = 40
    Top = 80
    object Copy4: TMenuItem
      Action = MainForm.EditCopy1
    end
    object Copyfieldcontents1: TMenuItem
      Action = MainForm.ManualCopy
    end
    object HTMLview1: TMenuItem
      Action = MainForm.HTMLview
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object Copyrecords1: TMenuItem
      Tag = 48
      Action = MainForm.Copy2CSV
    end
    object CopycontentsasHTML2: TMenuItem
      Tag = 49
      Action = MainForm.CopyHTMLtable
    end
    object CopyasXMLdata2: TMenuItem
      Action = MainForm.Copy2XML
    end
    object Exportdata1: TMenuItem
      Action = MainForm.ExportData
    end
  end
  object Timer4: TTimer
    Enabled = False
    OnTimer = Timer4Timer
    Left = 103
    Top = 157
  end
  object PopupMenu4: TPopupMenu
    Images = MainForm.ImageList1
    Left = 72
    Top = 80
    object Copy1: TMenuItem
      Action = MainForm.EditCopy1
    end
    object Clear2: TMenuItem
      Caption = 'Clear'
      OnClick = Clear2Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object Markall3: TMenuItem
      Caption = 'Select all'
      OnClick = Markall3Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object EditQuery1: TMenuItem
      Caption = 'Edit Selection'
      OnClick = EditQuery1Click
    end
    object Saveastextfile1: TMenuItem
      Caption = 'Save as textfile...'
      ImageIndex = 7
      OnClick = Saveastextfile1Click
    end
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer5Timer
    Left = 135
    Top = 157
  end
  object DataSource1: TDataSource
    DataSet = ZQuery2
    OnDataChange = DataSourceDataChange
    Left = 288
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = ZQuery1
    OnDataChange = DataSourceDataChange
    Left = 288
    Top = 120
  end
  object PopupMenu7: TPopupMenu
    Left = 272
    Top = 278
  end
  object OpenDialog2: TOpenDialog
    Left = 302
    Top = 278
  end
  object TimerProcesslist: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = ShowProcessList
    Left = 409
    Top = 97
  end
  object SaveDialogExportData: TSaveDialog
    DefaultExt = 'csv'
    Filter = 
      'CSV-Files (*.csv)|*.csv|Hypertext-Files (*.html)|*.html|XML-File' +
      's (*.xml)|*.xml'
    Options = [ofOverwritePrompt, ofEnableSizing]
    OnTypeChange = SaveDialogExportDataTypeChange
    Left = 72
    Top = 120
  end
  object ZConn: TZConnection
    Protocol = 'mysql'
    SQLHourGlass = True
    Left = 224
    Top = 88
  end
  object ZQuery1: TZQuery
    Connection = ZConn
    AutoCalcFields = False
    BeforeClose = ZQuery2BeforeClose
    OnDeleteError = ZQuery1EditError
    OnEditError = ZQuery1EditError
    OnPostError = ZQuery1EditError
    ParamCheck = False
    Params = <>
    Left = 256
    Top = 120
  end
  object ZQuery2: TZQuery
    Connection = ZConn
    AutoCalcFields = False
    BeforeOpen = ZQuery2BeforeOpen
    BeforeClose = ZQuery2BeforeClose
    BeforePost = ZQueryBeforePost
    OnPostError = ZQuery2PostError
    ParamCheck = False
    Params = <>
    Options = []
    Left = 256
    Top = 88
  end
  object ZQuery3: TZReadOnlyQuery
    Connection = ZConn
    AutoCalcFields = False
    ParamCheck = False
    Params = <>
    Left = 256
    Top = 152
  end
  object ZSQLMonitor1: TZSQLMonitor
    Active = True
    MaxTraceCount = 100
    OnLogTrace = ZSQLMonitor1LogTrace
    Left = 224
    Top = 120
  end
  object PopupMenuTablelistColumns: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Images = MainForm.ImageList1
    Left = 104
    Top = 80
    object DefaultColumnLayout1: TMenuItem
      Tag = 1
      Caption = 'Default columns'
      Checked = True
      OnClick = MenuTablelistColumnsClick
    end
    object N20: TMenuItem
      Caption = '-'
    end
  end
end

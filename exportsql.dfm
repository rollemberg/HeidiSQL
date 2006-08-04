object ExportSQLForm: TExportSQLForm
  Left = 422
  Top = 230
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'Export Tables...'
  ClientHeight = 389
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblProgress: TLabel
    Left = 8
    Top = 312
    Width = 51
    Height = 13
    Caption = 'lblProgress'
  end
  object btnExport: TButton
    Left = 395
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Export!'
    Default = True
    TabOrder = 0
    OnClick = btnExportClick
  end
  object btnCancel: TButton
    Left = 477
    Top = 360
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object groupOutput: TGroupBox
    Left = 256
    Top = 0
    Width = 297
    Height = 169
    Caption = 'Output'
    TabOrder = 2
    object btnFileBrowse: TBitBtn
      Left = 259
      Top = 43
      Width = 22
      Height = 22
      TabOrder = 0
      OnClick = btnFileBrowseClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777777777777777777777000000000007777700333333333077770B033333333
        307770FB03333333330770BFB0333333333070FBFB000000000070BFBFBFBFB0
        777770FBFBFBFBF0777770BFB000000077777700077777777000777777777777
        7700777777777077707077777777770007777777777777777777}
    end
    object editFileName: TEdit
      Left = 32
      Top = 42
      Width = 225
      Height = 21
      TabOrder = 1
      OnDblClick = btnFileBrowseClick
    end
    object radioOtherDatabase: TRadioButton
      Left = 16
      Top = 69
      Width = 113
      Height = 17
      Caption = 'Another Database:'
      TabOrder = 2
      OnClick = radioOtherDatabaseClick
    end
    object radioFile: TRadioButton
      Left = 16
      Top = 24
      Width = 49
      Height = 17
      Caption = 'File:'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = radioFileClick
    end
    object comboOtherDatabase: TComboBox
      Left = 32
      Top = 87
      Width = 249
      Height = 21
      Style = csDropDownList
      Color = clBtnFace
      Enabled = False
      ItemHeight = 13
      TabOrder = 4
    end
    object radioOtherHost: TRadioButton
      Left = 16
      Top = 116
      Width = 113
      Height = 17
      Caption = 'Another Host / DB:'
      TabOrder = 5
      OnClick = radioOtherHostClick
    end
    object comboOtherHost: TComboBox
      Left = 32
      Top = 131
      Width = 249
      Height = 21
      Style = csDropDownList
      Color = clBtnFace
      Enabled = False
      ItemHeight = 13
      TabOrder = 6
    end
  end
  object barProgress: TProgressBar
    Left = 8
    Top = 328
    Width = 545
    Height = 17
    Max = 0
    Smooth = True
    Step = 1
    TabOrder = 3
  end
  object pageControl1: TPageControl
    Left = 4
    Top = 0
    Width = 241
    Height = 306
    ActivePage = TabSheet2
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Selection'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        233
        278)
      object lblSelectDbTables: TLabel
        Left = 8
        Top = 8
        Width = 144
        Height = 13
        Caption = 'Select Database and Table(s):'
      end
      object checkListTables: TCheckListBox
        Left = 8
        Top = 52
        Width = 216
        Height = 216
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 13
        TabOrder = 0
      end
      object comboSelectDatabase: TComboBox
        Left = 8
        Top = 24
        Width = 161
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 0
        TabOrder = 1
        OnChange = comboSelectDatabaseChange
      end
      object toolbarSelectTools: TToolBar
        Left = 177
        Top = 24
        Width = 46
        Height = 22
        Align = alNone
        Anchors = [akTop, akRight]
        AutoSize = True
        Caption = 'toolbarSelectTools'
        EdgeInner = esNone
        EdgeOuter = esNone
        Images = MainForm.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Hint = 'Check none'
          Caption = 'ToolButton1'
          ImageIndex = 35
          OnClick = CheckListToggle
        end
        object ToolButton2: TToolButton
          Tag = 1
          Left = 23
          Top = 0
          Hint = 'Check all'
          Caption = 'ToolButton2'
          ImageIndex = 36
          OnClick = CheckListToggle
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Options'
      ImageIndex = 1
      DesignSize = (
        233
        278)
      object lblTargetCompat: TLabel
        Left = 8
        Top = 225
        Width = 94
        Height = 13
        Caption = 'Target compatibility:'
      end
      object cbxStructure: TCheckBox
        Left = 8
        Top = 9
        Width = 73
        Height = 17
        Caption = 'Structure'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = cbxStructureClick
      end
      object cbxData: TCheckBox
        Left = 8
        Top = 140
        Width = 73
        Height = 17
        Caption = 'Data'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = cbxDataClick
      end
      object cbxExtendedInsert: TCheckBox
        Left = 24
        Top = 186
        Width = 177
        Height = 17
        Caption = 'Extended INSERT (faster import)'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = cbxExtendedInsertClick
      end
      object comboTargetCompat: TComboBox
        Left = 24
        Top = 244
        Width = 193
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'MySQL 3.23 - 5.0'
        Items.Strings = (
          'MySQL 3.23 - 5.0'
          'MySQL 5.1 and above')
      end
      object cbxDatabase: TCheckBox
        Left = 24
        Top = 30
        Width = 97
        Height = 17
        Caption = 'Database'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = cbxDatabaseClick
      end
      object cbxTables: TCheckBox
        Left = 24
        Top = 78
        Width = 57
        Height = 17
        Caption = 'Tables'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = cbxTablesClick
      end
      object comboTables: TComboBox
        Left = 41
        Top = 98
        Width = 176
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 6
        Text = 'Create if necessary'
        OnChange = comboTablesChange
        Items.Strings = (
          'Recreate (remove data)'
          'Create'
          'Create if necessary')
      end
      object comboDatabase: TComboBox
        Left = 41
        Top = 51
        Width = 176
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 7
        Text = 'Create if necessary'
        OnChange = comboDatabaseChange
        Items.Strings = (
          'Recreate (remove all tables)'
          'Create'
          'Create if necessary')
      end
      object comboData: TComboBox
        Left = 24
        Top = 159
        Width = 193
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 3
        TabOrder = 8
        Text = 'Update existing data'
        OnChange = comboDataChange
        Items.Strings = (
          'Replace (truncate existing data)'
          'Insert'
          'Insert new data (do not update existing)'
          'Update existing data')
      end
    end
  end
  object groupExampleSql: TGroupBox
    Left = 256
    Top = 175
    Width = 297
    Height = 131
    Caption = 'Example SQL'
    TabOrder = 5
    object memoExampleSql: TMemo
      Left = 8
      Top = 16
      Width = 282
      Height = 105
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object dialogSave: TSaveDialog
    DefaultExt = 'sql'
    Filter = 'SQL-Scripts (*.sql)|*.sql|All files (*.*)|*.*'
    Left = 8
    Top = 360
  end
end

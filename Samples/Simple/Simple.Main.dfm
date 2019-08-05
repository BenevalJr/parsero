object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 416
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 416
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitHeight = 410
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 298
      Height = 364
      Align = alClient
      Lines.Strings = (
        '['
        '  {'
        '    "id": 1,'
        '    "name": "Matheus",'
        '    "age": 21'
        '  },'
        '  {'
        '    "id": 2,'
        '    "name": "Rodrigo",'
        '    "age": 23'
        '  }'
        ']')
      TabOrder = 0
      ExplicitLeft = -3
      ExplicitHeight = 352
    end
    object Button1: TButton
      Left = 1
      Top = 365
      Width = 298
      Height = 50
      Align = alBottom
      Caption = 'FromJSON'
      TabOrder = 1
      OnClick = Button1Click
      ExplicitLeft = -3
      ExplicitTop = 371
    end
  end
  object Panel2: TPanel
    Left = 565
    Top = 0
    Width = 300
    Height = 416
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 570
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 8
      Height = 13
      Caption = 'id'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 26
      Height = 13
      Caption = 'name'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 24
      Top = 104
      Width = 18
      Height = 13
      Caption = 'age'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 134
      Height = 21
      DataField = 'id'
      DataSource = DataSourcePeople
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 80
      Width = 134
      Height = 21
      DataField = 'name'
      DataSource = DataSourcePeople
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 120
      Width = 134
      Height = 21
      DataField = 'age'
      DataSource = DataSourcePeople
      TabOrder = 2
    end
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 160
      Width = 240
      Height = 25
      DataSource = DataSourcePeople
      TabOrder = 3
    end
    object Button2: TButton
      Left = 1
      Top = 365
      Width = 298
      Height = 50
      Align = alBottom
      Caption = 'ToJSON'
      TabOrder = 4
      OnClick = Button2Click
      ExplicitLeft = 5
    end
  end
  object Panel3: TPanel
    Left = 300
    Top = 0
    Width = 265
    Height = 416
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitLeft = 191
    ExplicitWidth = 318
    ExplicitHeight = 410
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 263
      Height = 414
      Align = alClient
      DataSource = DataSourcePeople
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'age'
          Visible = True
        end>
    end
  end
  object FDMemTablePeople: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 412
    Top = 200
    object FDMemTablePeopleid: TIntegerField
      FieldName = 'id'
    end
    object FDMemTablePeoplename: TStringField
      FieldName = 'name'
      Size = 10
    end
    object FDMemTablePeopleage: TIntegerField
      FieldName = 'age'
    end
  end
  object DataSourcePeople: TDataSource
    DataSet = FDMemTablePeople
    Left = 412
    Top = 272
  end
end

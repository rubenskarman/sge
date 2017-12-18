object frmCadSeries: TfrmCadSeries
  Left = 461
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de S'#233'ries'
  ClientHeight = 442
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 406
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 192
      Height = 24
      Caption = 'Cadastro de S'#233'ries'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 406
    Height = 369
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 95
      Height = 16
      Caption = 'Nome da S'#233'rie'
    end
    object Label3: TLabel
      Left = 225
      Top = 72
      Width = 138
      Height = 16
      Caption = 'Valor da Mensalidade'
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 136
      Width = 369
      Height = 217
      Ctl3D = False
      DataSource = dsSerie
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome da S'#233'rie'
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valorMensalidade'
          Title.Caption = 'Valor da Mensalidade'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 15
      Top = 11
      Width = 364
      Height = 33
      DataSource = dsSerie
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel]
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 91
      Width = 193
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'nome'
      DataSource = dsSerie
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 224
      Top = 91
      Width = 162
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'valorMensalidade'
      DataSource = dsSerie
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object tbSeries: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    AfterInsert = tbSeriesAfterInsert
    TableName = 'serie'
    Left = 176
    Top = 240
    object tbSeriesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbSeriesnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object tbSeriesvalorMensalidade: TBCDField
      FieldName = 'valorMensalidade'
      currency = True
      Precision = 19
    end
  end
  object dsSerie: TDataSource
    DataSet = tbSeries
    Left = 208
    Top = 240
  end
end

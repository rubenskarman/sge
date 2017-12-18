object frmVincularDisciplinaSerie: TfrmVincularDisciplinaSerie
  Left = 202
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vincular Disciplinas - S'#233'ries'
  ClientHeight = 382
  ClientWidth = 830
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
    Width = 830
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 278
      Height = 24
      Caption = 'Vincular Disciplinas - S'#233'ries'
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
    Width = 830
    Height = 309
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 15
      Width = 112
      Height = 19
      Caption = 'Lista de S'#233'ries'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 305
      Top = 15
      Width = 173
      Height = 19
      Caption = 'Disciplinas Vinculadas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 576
      Top = 15
      Width = 148
      Height = 19
      Caption = 'Lista de Disciplinas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 39
      Width = 225
      Height = 249
      Ctl3D = False
      DataSource = dsSeries
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'SERIE'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 185
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 280
      Top = 39
      Width = 225
      Height = 249
      Ctl3D = False
      DataSource = dsDisciplinasSeries
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nomeDisciplina'
          Title.Caption = 'DISCIPLINA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 186
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 576
      Top = 39
      Width = 225
      Height = 249
      Ctl3D = False
      DataSource = dsDisciplinas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'DISCIPLINA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 186
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 520
      Top = 127
      Width = 41
      Height = 57
      Caption = '<<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object tbSeries: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    TableName = 'serie'
    Left = 88
    Top = 217
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
      Precision = 19
    end
  end
  object tbDisciplinasSeries: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    IndexFieldNames = 'idSerie'
    MasterFields = 'id'
    MasterSource = dsSeries
    TableName = 'serieDisciplina'
    Left = 336
    Top = 209
    object tbDisciplinasSeriesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbDisciplinasSeriesidDisciplina: TIntegerField
      FieldName = 'idDisciplina'
    end
    object tbDisciplinasSeriesidSerie: TIntegerField
      FieldName = 'idSerie'
    end
    object tbDisciplinasSeriesnomeDisciplina: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeDisciplina'
      LookupDataSet = tbDisciplinas
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idDisciplina'
      Lookup = True
    end
  end
  object tbDisciplinas: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    TableName = 'disciplina'
    Left = 624
    Top = 209
    object tbDisciplinasid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbDisciplinasnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
  end
  object dsSeries: TDataSource
    DataSet = tbSeries
    Left = 128
    Top = 217
  end
  object dsDisciplinasSeries: TDataSource
    DataSet = tbDisciplinasSeries
    Left = 376
    Top = 209
  end
  object dsDisciplinas: TDataSource
    DataSet = tbDisciplinas
    Left = 664
    Top = 209
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 209
    object Desvincularestadisciplina1: TMenuItem
      Caption = 'Desvincular esta disciplina'
      OnClick = Desvincularestadisciplina1Click
    end
  end
end

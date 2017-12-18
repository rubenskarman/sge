object frmCadDespesas: TfrmCadDespesas
  Left = 248
  Top = 105
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Despesas'
  ClientHeight = 524
  ClientWidth = 912
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
    Width = 912
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 229
      Height = 24
      Caption = 'Cadastro de Despesas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 448
      Top = 16
      Width = 432
      Height = 36
      DataSource = dsDespesas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 912
    Height = 451
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 21
      Width = 143
      Height = 16
      Caption = 'Descritivo da Despesa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 488
      Top = 21
      Width = 65
      Height = 16
      Caption = 'Valor (R$):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 672
      Top = 21
      Width = 33
      Height = 16
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 26
      Top = 85
      Width = 119
      Height = 16
      Caption = 'Pesquisar Despesa'
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 40
      Width = 449
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'descricao'
      DataSource = dsDespesas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 488
      Top = 40
      Width = 169
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'valor'
      DataSource = dsDespesas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 672
      Top = 40
      Width = 169
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      DataField = 'data'
      DataSource = dsDespesas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object txtBusca: TEdit
      Left = 24
      Top = 106
      Width = 857
      Height = 22
      CharCase = ecUpperCase
      Color = 14810879
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnChange = txtBuscaChange
    end
    object DBGrid1: TDBGrid
      Left = 23
      Top = 136
      Width = 858
      Height = 305
      Ctl3D = False
      DataSource = dsDespesas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 4
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Data'
          Width = 87
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'hora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Hora'
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Valor'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Descri'#231#227'o'
          Visible = True
        end>
    end
  end
  object tbDespesas: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    Filter = 'tipo='#39'D'#39
    Filtered = True
    AfterInsert = tbDespesasAfterInsert
    BeforePost = tbDespesasBeforePost
    TableName = 'caixa'
    Left = 312
    Top = 16
    object tbDespesasid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbDespesasidAnoLetivo: TIntegerField
      FieldName = 'idAnoLetivo'
    end
    object tbDespesasdata: TDateTimeField
      ConstraintErrorMessage = 'Digite a Data'
      FieldName = 'data'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbDespesashora: TWideStringField
      FieldName = 'hora'
      Size = 8
    end
    object tbDespesasvalor: TBCDField
      ConstraintErrorMessage = 'Digite o Valor'
      FieldName = 'valor'
      Required = True
      currency = True
      Precision = 19
    end
    object tbDespesasdescricao: TWideStringField
      ConstraintErrorMessage = 'Digite o Descritivo'
      FieldName = 'descricao'
      Required = True
      Size = 255
    end
    object tbDespesasidAluno: TWideStringField
      FieldName = 'idAluno'
      Size = 255
    end
    object tbDespesasnomeAluno: TWideStringField
      FieldName = 'nomeAluno'
      Size = 150
    end
    object tbDespesasturma: TWideStringField
      FieldName = 'turma'
      Size = 30
    end
    object tbDespesasserie: TWideStringField
      FieldName = 'serie'
      Size = 30
    end
    object tbDespesasmes: TWideStringField
      FieldName = 'mes'
      Size = 30
    end
    object tbDespesastipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object dsDespesas: TDataSource
    DataSet = tbDespesas
    Left = 344
    Top = 16
  end
end

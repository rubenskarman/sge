object frmConfiguracoes: TfrmConfiguracoes
  Left = 212
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es'
  ClientHeight = 442
  ClientWidth = 908
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
    Width = 908
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 148
      Height = 24
      Caption = 'Configura'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 752
      Top = 16
      Width = 137
      Height = 33
      Caption = 'Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 908
    Height = 369
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 906
      Height = 367
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados da Escola'
        object Label2: TLabel
          Left = 24
          Top = 21
          Width = 88
          Height = 16
          Caption = 'Nome Fantasia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 24
          Top = 69
          Width = 77
          Height = 16
          Caption = 'Raz'#227'o Social'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 24
          Top = 117
          Width = 33
          Height = 16
          Caption = 'CNPJ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 24
          Top = 165
          Width = 55
          Height = 16
          Caption = 'Endere'#231'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 24
          Top = 213
          Width = 34
          Height = 16
          Caption = 'Bairro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 24
          Top = 261
          Width = 40
          Height = 16
          Caption = 'Cidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 184
          Top = 261
          Width = 27
          Height = 16
          Caption = 'CEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 392
          Top = 21
          Width = 29
          Height = 16
          Caption = 'Fone'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 392
          Top = 69
          Width = 37
          Height = 16
          Caption = 'E-mail'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 392
          Top = 117
          Width = 23
          Height = 16
          Caption = 'Site'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 40
          Width = 305
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'nome'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 88
          Width = 305
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'razaoSocial'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 136
          Width = 169
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cnpj'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 184
          Width = 305
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'endereco'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 24
          Top = 232
          Width = 305
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'bairro'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 24
          Top = 280
          Width = 145
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cidade'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 184
          Top = 280
          Width = 145
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cep'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 392
          Top = 40
          Width = 305
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'fone'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 392
          Top = 88
          Width = 305
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'email'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 392
          Top = 136
          Width = 305
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'site'
          DataSource = dsEscola
          ParentCtl3D = False
          TabOrder = 9
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Ano Letivo'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object lblAnoVigente: TLabel
          Left = 16
          Top = 18
          Width = 108
          Height = 19
          Caption = 'Ano Vigente: -'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 16
          Top = 250
          Width = 160
          Height = 19
          Caption = 'M'#233'dia de Aprova'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label13: TLabel
          Left = 304
          Top = 18
          Width = 142
          Height = 19
          Caption = 'Unidades por ano:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 536
          Top = 18
          Width = 184
          Height = 19
          Caption = 'Avalia'#231#245'es por unidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 16
          Top = 46
          Width = 235
          Height = 183
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsAnoLetivo
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ano'
              Title.Caption = 'Ano Letivo'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mediaAprovacao'
              Title.Caption = 'M'#233'dia Aprova'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 114
              Visible = True
            end>
        end
        object DBEdit11: TDBEdit
          Left = 16
          Top = 273
          Width = 163
          Height = 22
          Ctl3D = False
          DataField = 'mediaAprovacao'
          DataSource = dsAnoLetivo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Visible = False
        end
        object DBGrid2: TDBGrid
          Left = 304
          Top = 45
          Width = 185
          Height = 185
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsUnidades
          ParentCtl3D = False
          PopupMenu = PopupMenu2
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DBGrid2KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Unidade'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 153
              Visible = True
            end>
        end
        object DBGrid3: TDBGrid
          Left = 536
          Top = 45
          Width = 185
          Height = 185
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsAvaliacoes
          ParentCtl3D = False
          PopupMenu = PopupMenu3
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DBGrid3KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Avalia'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 156
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Financeiro'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object Label15: TLabel
          Left = 16
          Top = 18
          Width = 268
          Height = 19
          Caption = 'Dia de Pagamento da Mensalidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txtDiaPagamentoMensalidade: TEdit
          Left = 292
          Top = 15
          Width = 77
          Height = 25
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Seguran'#231'a'
        ImageIndex = 3
        object Label16: TLabel
          Left = 16
          Top = 18
          Width = 164
          Height = 19
          Caption = 'Usu'#225'rios do Sistema:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid4: TDBGrid
          Left = 16
          Top = 40
          Width = 345
          Height = 145
          DataSource = dsUsuario
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DBGrid4KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'usuario'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Title.Caption = 'Usu'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 179
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senha'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Title.Caption = 'Senha'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 124
              Visible = True
            end>
        end
      end
    end
  end
  object tbEscola: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    TableName = 'escola'
    Left = 200
    Top = 24
    object tbEscolaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbEscolanome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object tbEscolarazaoSocial: TWideStringField
      FieldName = 'razaoSocial'
      Size = 255
    end
    object tbEscolacnpj: TWideStringField
      FieldName = 'cnpj'
      Size = 30
    end
    object tbEscolaendereco: TWideStringField
      FieldName = 'endereco'
      Size = 255
    end
    object tbEscolabairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object tbEscolacidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object tbEscolacep: TWideStringField
      FieldName = 'cep'
    end
    object tbEscolafone: TWideStringField
      FieldName = 'fone'
      Size = 50
    end
    object tbEscolaemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object tbEscolasite: TWideStringField
      FieldName = 'site'
      Size = 255
    end
  end
  object dsEscola: TDataSource
    DataSet = tbEscola
    Left = 232
    Top = 24
  end
  object tbAnoLetivo: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    AfterScroll = tbAnoLetivoAfterScroll
    IndexFieldNames = 'ano ASC'
    TableName = 'anoLetivo'
    Left = 309
    Top = 24
    object tbAnoLetivoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbAnoLetivoidEscola: TIntegerField
      FieldName = 'idEscola'
    end
    object tbAnoLetivoano: TWideStringField
      FieldName = 'ano'
      Size = 4
    end
    object tbAnoLetivomediaAprovacao: TWideStringField
      FieldName = 'mediaAprovacao'
      Size = 5
    end
    object tbAnoLetivovigente: TBooleanField
      FieldName = 'vigente'
    end
  end
  object dsAnoLetivo: TDataSource
    DataSet = tbAnoLetivo
    Left = 342
    Top = 24
  end
  object cmd: TADOCommand
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 424
    Top = 400
  end
  object sql: TADOQuery
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 456
    Top = 400
  end
  object PopupMenu1: TPopupMenu
    Left = 377
    Top = 25
    object Definircomoanovigente1: TMenuItem
      Caption = 'Definir como ano vigente'
      OnClick = Definircomoanovigente1Click
    end
  end
  object tbUnidades: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    IndexFieldNames = 'idAnoLetivo'
    MasterFields = 'id'
    MasterSource = dsAnoLetivo
    TableName = 'unidade'
    Left = 453
    Top = 26
    object tbUnidadesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbUnidadesidAnoLetivo: TIntegerField
      FieldName = 'idAnoLetivo'
    end
    object tbUnidadesnome: TWideStringField
      FieldName = 'nome'
      Size = 30
    end
  end
  object dsUnidades: TDataSource
    DataSet = tbUnidades
    Left = 488
    Top = 27
  end
  object PopupMenu2: TPopupMenu
    Left = 522
    Top = 27
    object ExcluirUnidade1: TMenuItem
      Caption = 'Excluir Unidade'
      OnClick = ExcluirUnidade1Click
    end
  end
  object tbAvaliacoes: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    IndexFieldNames = 'idUnidade'
    MasterFields = 'id'
    MasterSource = dsUnidades
    TableName = 'avaliacao'
    Left = 608
    Top = 24
    object tbAvaliacoesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbAvaliacoesidUnidade: TIntegerField
      FieldName = 'idUnidade'
    end
    object tbAvaliacoesnome: TWideStringField
      FieldName = 'nome'
    end
  end
  object dsAvaliacoes: TDataSource
    DataSet = tbAvaliacoes
    Left = 640
    Top = 24
  end
  object PopupMenu3: TPopupMenu
    Left = 672
    Top = 24
    object ExcluirAvaliao1: TMenuItem
      Caption = 'Excluir Avalia'#231#227'o'
      OnClick = ExcluirAvaliao1Click
    end
  end
  object dsUsuario: TDataSource
    DataSet = tbUsuario
    Left = 101
    Top = 402
  end
  object tbUsuario: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    TableName = 'usuario'
    Left = 69
    Top = 402
    object tbUsuarioid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbUsuariousuario: TWideStringField
      FieldName = 'usuario'
      Size = 50
    end
    object tbUsuariosenha: TWideStringField
      FieldName = 'senha'
      Size = 50
    end
    object tbUsuariotipo: TWideStringField
      FieldName = 'tipo'
      Size = 30
    end
  end
end

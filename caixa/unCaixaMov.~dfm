object frmCaixaMov: TfrmCaixaMov
  Left = 144
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento de Caixa'
  ClientHeight = 500
  ClientWidth = 1054
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1054
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 205
      Height = 24
      Caption = 'Movimento de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 365
      Top = 11
      Width = 130
      Height = 16
      Caption = 'Selecione o Per'#237'odo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtDataInicial: TDateTimePicker
      Left = 277
      Top = 35
      Width = 145
      Height = 24
      Date = 42376.322507094900000000
      Time = 42376.322507094900000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object txtDataFinal: TDateTimePicker
      Left = 437
      Top = 35
      Width = 145
      Height = 24
      Date = 42376.322507094900000000
      Time = 42376.322507094900000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object opcTipo: TRadioGroup
      Left = 616
      Top = 11
      Width = 289
      Height = 49
      Caption = 'Selecione o Tipo de Movimento'
      Columns = 3
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Items.Strings = (
        'Entradas'
        'Sa'#237'das'
        'Ambos')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object btoListar: TBitBtn
      Left = 936
      Top = 34
      Width = 105
      Height = 25
      Caption = 'Listar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btoListarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1054
    Height = 427
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 350
      Width = 140
      Height = 24
      Caption = 'Total Entrada:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotalEntrada: TLabel
      Left = 168
      Top = 350
      Width = 87
      Height = 24
      Caption = 'R$ 00,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 38
      Top = 390
      Width = 117
      Height = 24
      Caption = 'Total Sa'#237'da:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotalSaida: TLabel
      Left = 168
      Top = 390
      Width = 87
      Height = 24
      Caption = 'R$ 00,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSaldo: TLabel
      Left = 568
      Top = 374
      Width = 87
      Height = 24
      Caption = 'R$ 00,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 495
      Top = 374
      Width = 64
      Height = 24
      Caption = 'Saldo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 1037
      Height = 329
      DataSource = DSsqlCaixa
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = '#'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data'
          Title.Caption = 'Data'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hora'
          Title.Caption = 'Hora'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valorVariado'
          Title.Caption = 'Valor'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descritivo'
          Width = 586
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mesExtenso'
          Title.Caption = 'M'#234's'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'turma'
          Title.Caption = 'Turma'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'serie'
          Title.Caption = 'S'#233'rie'
          Width = 141
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 865
      Top = 363
      Width = 179
      Height = 35
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object sqlCaixa: TADOQuery
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    OnCalcFields = sqlCaixaCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM caixa;')
    Left = 16
    Top = 137
    object sqlCaixaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sqlCaixaidAnoLetivo: TIntegerField
      FieldName = 'idAnoLetivo'
    end
    object sqlCaixadata: TDateTimeField
      FieldName = 'data'
    end
    object sqlCaixahora: TWideStringField
      FieldName = 'hora'
      Size = 8
    end
    object sqlCaixavalor: TBCDField
      FieldName = 'valor'
      currency = True
      Precision = 19
    end
    object sqlCaixadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 255
    end
    object sqlCaixaidAluno: TWideStringField
      FieldName = 'idAluno'
      Size = 255
    end
    object sqlCaixanomeAluno: TWideStringField
      FieldName = 'nomeAluno'
      Size = 150
    end
    object sqlCaixaturma: TWideStringField
      FieldName = 'turma'
      Size = 30
    end
    object sqlCaixaserie: TWideStringField
      FieldName = 'serie'
      Size = 30
    end
    object sqlCaixames: TWideStringField
      FieldName = 'mes'
      Size = 30
    end
    object sqlCaixatipo: TWideStringField
      FieldName = 'tipo'
      Size = 1
    end
    object sqlCaixamesExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'mesExtenso'
      Size = 30
      Calculated = True
    end
    object sqlCaixavalorVariado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valorVariado'
      Calculated = True
    end
  end
  object DSsqlCaixa: TDataSource
    DataSet = sqlCaixa
    Left = 48
    Top = 137
  end
  object sqlTotais: TADOQuery
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 368
    Top = 441
  end
end

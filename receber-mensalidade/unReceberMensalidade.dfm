object frmReceberMensalidade: TfrmReceberMensalidade
  Left = 241
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Receber Mensalidade sem C'#243'digo de Barras'
  ClientHeight = 442
  ClientWidth = 748
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
    Width = 748
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 216
      Height = 24
      Caption = 'Receber Mensalidade'
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
    Width = 748
    Height = 369
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 17
      Width = 98
      Height = 16
      Caption = 'Nome do Aluno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 201
      Width = 25
      Height = 16
      Caption = 'Pai:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 228
      Width = 31
      Height = 16
      Caption = 'M'#227'e:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 17
      Top = 254
      Width = 39
      Height = 16
      Caption = 'Resp.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 48
      Top = 201
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'nomePai'
      DataSource = dsSqlAluno
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 56
      Top = 228
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'nomeMae'
      DataSource = dsSqlAluno
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 64
      Top = 254
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'nomeResp'
      DataSource = dsSqlAluno
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 376
      Top = 16
      Width = 87
      Height = 16
      Caption = 'Mensalidades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 66
      Width = 321
      Height = 120
      Ctl3D = False
      DataSource = dsSqlAluno
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'ALUNO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 16
      Top = 36
      Width = 321
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = Edit2KeyDown
    end
    object DBGrid2: TDBGrid
      Left = 376
      Top = 36
      Width = 356
      Height = 317
      Ctl3D = False
      DataSource = dsMens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = popupPagar
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnDblClick = DBGrid2DblClick
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'mesExtenso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'M'#234's de Refer'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 170
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'status'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Pago'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end>
    end
  end
  object sqlAluno: TADOQuery
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    AfterScroll = sqlAlunoAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT aluno.id, aluno.nome, aluno.nomePai, aluno.nomeMae, aluno' +
        '.nomeResp FROM aluno;')
    Left = 144
    Top = 249
    object sqlAlunoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sqlAlunonome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object sqlAlunonomePai: TWideStringField
      FieldName = 'nomePai'
      Size = 100
    end
    object sqlAlunonomeMae: TWideStringField
      FieldName = 'nomeMae'
      Size = 100
    end
    object sqlAlunonomeResp: TWideStringField
      FieldName = 'nomeResp'
      Size = 100
    end
  end
  object dsSqlAluno: TDataSource
    DataSet = sqlAluno
    Left = 176
    Top = 249
  end
  object sqlMens: TADOQuery
    Connection = frmPrincipal.Conexao
    OnCalcFields = sqlMensCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT matricula.idAluno, carneMensalidade.id, carneMensalidade.' +
        'mes, carneMensalidade.valor, carneMensalidade.pago'
      
        'FROM (matricula INNER JOIN carne ON matricula.id = carne.idMatri' +
        'cula) INNER JOIN carneMensalidade ON carne.id = carneMensalidade' +
        '.idCarne'
      'WHERE (((matricula.idAluno)=1));')
    Left = 504
    Top = 217
    object sqlMensidAluno: TIntegerField
      FieldName = 'idAluno'
    end
    object sqlMensmes: TWordField
      FieldName = 'mes'
    end
    object sqlMensvalor: TBCDField
      FieldName = 'valor'
      currency = True
      Precision = 19
    end
    object sqlMenspago: TBooleanField
      FieldName = 'pago'
    end
    object sqlMensmesExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'mesExtenso'
      Size = 30
      Calculated = True
    end
    object sqlMensstatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'status'
      Size = 6
      Calculated = True
    end
    object sqlMensid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object dsMens: TDataSource
    DataSet = sqlMens
    Left = 536
    Top = 217
  end
  object popupPagar: TPopupMenu
    Left = 504
    Top = 257
    object Pagarestamensalidade1: TMenuItem
      Caption = 'Pagar esta mensalidade'
      OnClick = Pagarestamensalidade1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Estornarestamensalidade1: TMenuItem
      Caption = 'Estornar esta mensalidade'
      OnClick = Estornarestamensalidade1Click
    end
  end
  object sql: TADOCommand
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 504
    Top = 297
  end
  object cmd: TADOCommand
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 504
    Top = 177
  end
  object sqlAnoLetivo: TADOQuery
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 544
    Top = 177
  end
end

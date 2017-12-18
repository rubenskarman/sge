object frmConsAlunosInadimplentes: TfrmConsAlunosInadimplentes
  Left = 402
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consultar Alunos Inadimplentes'
  ClientHeight = 521
  ClientWidth = 486
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
    Width = 486
    Height = 47
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 218
      Height = 24
      Caption = 'Alunos Inadimplentes'
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
    Top = 47
    Width = 486
    Height = 474
    Align = alClient
    TabOrder = 1
    object lbl1: TLabel
      Left = 16
      Top = 96
      Width = 91
      Height = 16
      Caption = 'Escolha o m'#234's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lbl2: TLabel
      Left = 16
      Top = 152
      Width = 102
      Height = 16
      Caption = 'Escolha a turma'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object opcTipo: TRadioGroup
      Left = 16
      Top = 11
      Width = 339
      Height = 70
      Caption = 'Selecione o Tipo de Consulta'
      Columns = 2
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Items.Strings = (
        'Geral'
        'Por M'#234's'
        'Por Turma'
        'Individual')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = opcTipoClick
    end
    object cboMeses: TComboBox
      Left = 16
      Top = 117
      Width = 177
      Height = 24
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Visible = False
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object btoListar: TBitBtn
      Left = 369
      Top = 55
      Width = 105
      Height = 25
      Caption = 'Listar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btoListarClick
    end
    object cboSerie: TDBLookupComboBox
      Left = 16
      Top = 117
      Width = 177
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsSeries
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object cboTurma: TDBLookupComboBox
      Left = 16
      Top = 173
      Width = 177
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsTurmas
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object pnAluno: TPanel
      Left = 16
      Top = 96
      Width = 346
      Height = 355
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object Label4: TLabel
        Left = 8
        Top = 8
        Width = 75
        Height = 13
        Caption = 'Localizar Aluno:'
      end
      object Label6: TLabel
        Left = 17
        Top = 303
        Width = 24
        Height = 13
        Caption = 'M'#227'e:'
      end
      object DBText2: TDBText
        Left = 49
        Top = 303
        Width = 52
        Height = 16
        AutoSize = True
        DataField = 'nomeMae'
        DataSource = dsAlunos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 23
        Top = 330
        Width = 18
        Height = 13
        Caption = 'Pai:'
      end
      object DBText1: TDBText
        Left = 49
        Top = 329
        Width = 52
        Height = 16
        AutoSize = True
        DataField = 'nomePai'
        DataSource = dsAlunos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtLocalizarAluno: TEdit
        Left = 8
        Top = 29
        Width = 329
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = txtLocalizarAlunoKeyDown
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 64
        Width = 329
        Height = 217
        Ctl3D = False
        DataSource = dsAlunos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
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
            Title.Caption = 'Aluno'
            Width = 295
            Visible = True
          end>
      end
    end
  end
  object sqlAlunos: TADOQuery
    Connection = frmPrincipal.Conexao
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM aluno;')
    Left = 152
    Top = 281
    object sqlAlunosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sqlAlunosnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object sqlAlunosnomePai: TWideStringField
      FieldName = 'nomePai'
      Size = 100
    end
    object sqlAlunosnomeMae: TWideStringField
      FieldName = 'nomeMae'
      Size = 100
    end
  end
  object dsAlunos: TDataSource
    DataSet = sqlAlunos
    Left = 182
    Top = 282
  end
  object tbSeries: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    TableName = 'serie'
    Left = 152
    Top = 327
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
  object dsSeries: TDataSource
    DataSet = tbSeries
    Left = 184
    Top = 327
  end
  object dsTurmas: TDataSource
    DataSet = tbTurmas
    Left = 184
    Top = 375
  end
  object tbTurmas: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    IndexFieldNames = 'idSerie'
    MasterFields = 'id'
    MasterSource = dsSeries
    TableName = 'turma'
    Left = 152
    Top = 375
    object tbTurmasid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbTurmasidSerie: TIntegerField
      FieldName = 'idSerie'
    end
    object tbTurmasnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object tbTurmasvagas: TWordField
      FieldName = 'vagas'
    end
    object tbTurmasturno: TWideStringField
      FieldName = 'turno'
    end
  end
end

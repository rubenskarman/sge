object frmRelMatriculadosTurma: TfrmRelMatriculadosTurma
  Left = 266
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Matriculados por Turma'
  ClientHeight = 442
  ClientWidth = 689
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
    Width = 689
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 365
      Height = 24
      Caption = 'Relat'#243'rio de Matriculados por Turma'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btoImprimirAniversarios: TBitBtn
      Left = 536
      Top = 16
      Width = 145
      Height = 41
      Caption = 'Imprimir Anivers'#225'rios'
      TabOrder = 0
      OnClick = btoImprimirAniversariosClick
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
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 689
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
      Top = 16
      Width = 103
      Height = 16
      Caption = 'Escolha a S'#233'rie:'
    end
    object Label3: TLabel
      Left = 224
      Top = 16
      Width = 109
      Height = 16
      Caption = 'Escolha a Turma:'
    end
    object DBText1: TDBText
      Left = 431
      Top = 38
      Width = 47
      Height = 16
      AutoSize = True
      DataField = 'turno'
      DataSource = dsTurmas
      Visible = False
    end
    object Label4: TLabel
      Left = 559
      Top = 36
      Width = 110
      Height = 16
      Alignment = taRightJustify
      Caption = 'TOTAL: 00 alunos'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 36
      Width = 193
      Height = 24
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsSeries
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 224
      Top = 36
      Width = 193
      Height = 24
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsTurmas
      TabOrder = 1
      OnClick = DBLookupComboBox2Click
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 80
      Width = 657
      Height = 281
      DataSource = dsMatriculas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'dataMatricula'
          Title.Caption = 'Data da Matr'#237'cula'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeAluno'
          Title.Caption = 'Nome do Aluno'
          Width = 487
          Visible = True
        end>
    end
  end
  object tbSeries: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    TableName = 'serie'
    Left = 344
    Top = 200
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
    Left = 376
    Top = 200
  end
  object tbTurmas: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    AfterScroll = tbTurmasAfterScroll
    IndexFieldNames = 'idSerie'
    MasterFields = 'id'
    MasterSource = dsSeries
    TableName = 'turma'
    Left = 344
    Top = 240
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
  object dsTurmas: TDataSource
    DataSet = tbTurmas
    Left = 376
    Top = 240
  end
  object tbMatriculas: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    IndexFieldNames = 'idTurma'
    MasterFields = 'id'
    MasterSource = dsTurmas
    TableName = 'matricula'
    Left = 344
    Top = 281
    object tbMatriculasid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbMatriculasidAnoLetivo: TIntegerField
      FieldName = 'idAnoLetivo'
    end
    object tbMatriculasidTurma: TIntegerField
      FieldName = 'idTurma'
    end
    object tbMatriculasidAluno: TIntegerField
      FieldName = 'idAluno'
    end
    object tbMatriculasdataMatricula: TDateTimeField
      FieldName = 'dataMatricula'
    end
    object tbMatriculasnomeAluno: TStringField
      DisplayWidth = 300
      FieldKind = fkLookup
      FieldName = 'nomeAluno'
      LookupDataSet = tbAlunos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idAluno'
      Lookup = True
    end
    object tbMatriculasnomeAluno2: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeAluno2'
      LookupDataSet = tbAlunos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idAluno'
      Size = 100
      Lookup = True
    end
  end
  object dsMatriculas: TDataSource
    DataSet = sqlMatricula
    Left = 376
    Top = 281
  end
  object tbAlunos: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    IndexFieldNames = 'id'
    MasterFields = 'idAluno'
    MasterSource = dsMatriculas
    TableName = 'aluno'
    Left = 344
    Top = 322
    object tbAlunosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbAlunosnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object tbAlunosdataNascimento: TDateTimeField
      FieldName = 'dataNascimento'
    end
  end
  object dsAlunos: TDataSource
    DataSet = tbAlunos
    Left = 376
    Top = 322
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 257
    object CancelarMatrculadestealuno1: TMenuItem
      Caption = 'Cancelar Matr'#237'cula deste Aluno'
      OnClick = CancelarMatrculadestealuno1Click
    end
  end
  object sqlMatricula: TADOQuery
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM matricula INNER JOIN anoLetivo ON matricula.idAnoL' +
        'etivo = anoLetivo.id WHERE anoLetivo.vigente = TRUE')
    Left = 312
    Top = 281
    object sqlMatriculamatriculaid: TAutoIncField
      FieldName = 'matricula.id'
      ReadOnly = True
    end
    object sqlMatriculaidAnoLetivo: TIntegerField
      FieldName = 'idAnoLetivo'
    end
    object sqlMatriculaidTurma: TIntegerField
      FieldName = 'idTurma'
    end
    object sqlMatriculaidAluno: TIntegerField
      FieldName = 'idAluno'
    end
    object sqlMatriculadataMatricula: TDateTimeField
      FieldName = 'dataMatricula'
    end
    object sqlMatriculaanoLetivoid: TAutoIncField
      FieldName = 'anoLetivo.id'
      ReadOnly = True
    end
    object sqlMatriculaidEscola: TIntegerField
      FieldName = 'idEscola'
    end
    object sqlMatriculaano: TWideStringField
      FieldName = 'ano'
      Size = 4
    end
    object sqlMatriculavigente: TBooleanField
      FieldName = 'vigente'
    end
    object sqlMatriculamediaAprovacao: TWideStringField
      FieldName = 'mediaAprovacao'
      Size = 5
    end
    object sqlMatriculanomeAluno: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeAluno'
      LookupDataSet = tbAlunos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idAluno'
      Size = 150
      Lookup = True
    end
    object sqlMatriculadataNasc: TDateField
      FieldKind = fkLookup
      FieldName = 'dataNasc'
      LookupDataSet = tbAlunos
      LookupKeyFields = 'id'
      LookupResultField = 'dataNascimento'
      KeyFields = 'idAluno'
      Lookup = True
    end
  end
  object sql: TADOCommand
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 280
    Top = 233
  end
end

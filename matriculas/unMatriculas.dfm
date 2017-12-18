object frmMatricula: TfrmMatricula
  Left = 256
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Matr'#237'culas'
  ClientHeight = 502
  ClientWidth = 790
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
    Width = 790
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 103
      Height = 24
      Caption = 'Matr'#237'culas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 148
      Top = 20
      Width = 149
      Height = 31
      Caption = 'Cadastrar Aluno'
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
    Width = 790
    Height = 429
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 124
      Height = 19
      Caption = 'Localizar Aluno:'
    end
    object Label3: TLabel
      Left = 534
      Top = 19
      Width = 45
      Height = 19
      Caption = 'S'#233'rie:'
    end
    object Label4: TLabel
      Left = 534
      Top = 75
      Width = 54
      Height = 19
      Caption = 'Turma:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 31
      Top = 369
      Width = 30
      Height = 19
      Caption = 'Pai:'
    end
    object Label6: TLabel
      Left = 24
      Top = 397
      Width = 37
      Height = 19
      Caption = 'M'#227'e:'
    end
    object Label7: TLabel
      Left = 534
      Top = 139
      Width = 147
      Height = 19
      Caption = 'Vagas Dispon'#237'veis:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 73
      Top = 371
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
    object DBText2: TDBText
      Left = 73
      Top = 400
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
    object lblVagas: TLabel
      Left = 686
      Top = 139
      Width = 18
      Height = 19
      Caption = '00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 11
      Top = 341
      Width = 51
      Height = 19
      Caption = 'Aluno:'
    end
    object DBText3: TDBText
      Left = 73
      Top = 343
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'nome'
      DataSource = dsAlunos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtLocalizarAluno: TEdit
      Left = 24
      Top = 45
      Width = 473
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
      Left = 24
      Top = 88
      Width = 473
      Height = 241
      Ctl3D = False
      DataSource = dsAlunos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Aluno'
          Width = 433
          Visible = True
        end>
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 534
      Top = 40
      Width = 233
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsSeries
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 534
      Top = 96
      Width = 233
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsTurma
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnClick = DBLookupComboBox2Click
    end
    object BitBtn2: TBitBtn
      Left = 532
      Top = 200
      Width = 237
      Height = 41
      Caption = 'Realizar Matr'#237'cula'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
  end
  object sqlAluno: TADOQuery
    Connection = frmPrincipal.Conexao
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM aluno;')
    Left = 184
    Top = 257
    object sqlAlunoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sqlAlunonome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object sqlAlunoendereco: TWideStringField
      FieldName = 'endereco'
      Size = 255
    end
    object sqlAlunocomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object sqlAlunobairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object sqlAlunocidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object sqlAlunouf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object sqlAlunocep: TWideStringField
      FieldName = 'cep'
    end
    object sqlAlunocelular: TWideStringField
      FieldName = 'celular'
      Size = 10
    end
    object sqlAlunooperadora: TWideStringField
      FieldName = 'operadora'
      Size = 30
    end
    object sqlAlunoemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object sqlAlunorg: TWideStringField
      FieldName = 'rg'
      Size = 15
    end
    object sqlAlunocpf: TWideStringField
      FieldName = 'cpf'
    end
    object sqlAlunodataNascimento: TDateTimeField
      FieldName = 'dataNascimento'
    end
    object sqlAlunosexo: TWideStringField
      FieldName = 'sexo'
      Size = 1
    end
    object sqlAlunocor: TWideStringField
      FieldName = 'cor'
      Size = 30
    end
    object sqlAlunonaturalidade: TWideStringField
      FieldName = 'naturalidade'
      Size = 50
    end
    object sqlAlunoufNaturalidade: TWideStringField
      FieldName = 'ufNaturalidade'
      Size = 2
    end
    object sqlAlunonacionalidade: TWideStringField
      FieldName = 'nacionalidade'
    end
    object sqlAlunocertidaoNasc: TWideStringField
      FieldName = 'certidaoNasc'
      Size = 100
    end
    object sqlAlunolivroCertidaoNasc: TWideStringField
      FieldName = 'livroCertidaoNasc'
      Size = 30
    end
    object sqlAlunofolhaCertidaoNasc: TWideStringField
      FieldName = 'folhaCertidaoNasc'
      Size = 30
    end
    object sqlAlunodataCertidaoNasc: TDateTimeField
      FieldName = 'dataCertidaoNasc'
    end
    object sqlAlunocartorioCertidaoNasc: TWideStringField
      FieldName = 'cartorioCertidaoNasc'
      Size = 50
    end
    object sqlAlunonumeroCertidaoNasc: TWideStringField
      FieldName = 'numeroCertidaoNasc'
      Size = 50
    end
    object sqlAlunoalergico: TBooleanField
      FieldName = 'alergico'
    end
    object sqlAlunodescricaoAlergia: TMemoField
      FieldName = 'descricaoAlergia'
      BlobType = ftMemo
    end
    object sqlAlunomedicacaoControlada: TBooleanField
      FieldName = 'medicacaoControlada'
    end
    object sqlAlunodescricaoMedicacaoControlada: TMemoField
      FieldName = 'descricaoMedicacaoControlada'
      BlobType = ftMemo
    end
    object sqlAlunoemergenciaLigarPara: TWideStringField
      FieldName = 'emergenciaLigarPara'
      Size = 50
    end
    object sqlAlunoautrizadoSairCom: TWideStringField
      FieldName = 'autrizadoSairCom'
      Size = 50
    end
    object sqlAlunoensinoReligioso: TBooleanField
      FieldName = 'ensinoReligioso'
    end
    object sqlAlunonomePai: TWideStringField
      FieldName = 'nomePai'
      Size = 100
    end
    object sqlAlunodataNascPai: TDateTimeField
      FieldName = 'dataNascPai'
    end
    object sqlAlunoescolaridadePai: TWideStringField
      FieldName = 'escolaridadePai'
      Size = 30
    end
    object sqlAlunoprofissaoPai: TWideStringField
      FieldName = 'profissaoPai'
      Size = 30
    end
    object sqlAlunorgPai: TWideStringField
      FieldName = 'rgPai'
      Size = 30
    end
    object sqlAlunocpfPai: TWideStringField
      FieldName = 'cpfPai'
    end
    object sqlAlunofonePai: TWideStringField
      FieldName = 'fonePai'
      Size = 255
    end
    object sqlAlunocelularPai: TWideStringField
      FieldName = 'celularPai'
      Size = 30
    end
    object sqlAlunooperadoraPai: TWideStringField
      FieldName = 'operadoraPai'
    end
    object sqlAlunoemailPai: TWideStringField
      FieldName = 'emailPai'
      Size = 255
    end
    object sqlAlunonomeMae: TWideStringField
      FieldName = 'nomeMae'
      Size = 100
    end
    object sqlAlunodataNascMae: TDateTimeField
      FieldName = 'dataNascMae'
    end
    object sqlAlunoescolaridadeMae: TWideStringField
      FieldName = 'escolaridadeMae'
      Size = 30
    end
    object sqlAlunoprofissaoMae: TWideStringField
      FieldName = 'profissaoMae'
      Size = 30
    end
    object sqlAlunorgMae: TWideStringField
      FieldName = 'rgMae'
      Size = 30
    end
    object sqlAlunocpfMae: TWideStringField
      FieldName = 'cpfMae'
    end
    object sqlAlunofoneMae: TWideStringField
      FieldName = 'foneMae'
      Size = 255
    end
    object sqlAlunocelularMae: TWideStringField
      FieldName = 'celularMae'
      Size = 30
    end
    object sqlAlunooperadoraMae: TWideStringField
      FieldName = 'operadoraMae'
    end
    object sqlAlunoemailMae: TWideStringField
      FieldName = 'emailMae'
      Size = 255
    end
    object sqlAlunonomeResp: TWideStringField
      FieldName = 'nomeResp'
      Size = 100
    end
    object sqlAlunodataNascResp: TDateTimeField
      FieldName = 'dataNascResp'
    end
    object sqlAlunoescolaridadeResp: TWideStringField
      FieldName = 'escolaridadeResp'
      Size = 30
    end
    object sqlAlunoprofissaoResp: TWideStringField
      FieldName = 'profissaoResp'
      Size = 30
    end
    object sqlAlunorgResp: TWideStringField
      FieldName = 'rgResp'
      Size = 30
    end
    object sqlAlunocpfResp: TWideStringField
      FieldName = 'cpfResp'
    end
    object sqlAlunofoneResp: TWideStringField
      FieldName = 'foneResp'
      Size = 255
    end
    object sqlAlunocelularResp: TWideStringField
      FieldName = 'celularResp'
      Size = 30
    end
    object sqlAlunooperadoraResp: TWideStringField
      FieldName = 'operadoraResp'
    end
    object sqlAlunoemailResp: TWideStringField
      FieldName = 'emailResp'
      Size = 255
    end
  end
  object dsAlunos: TDataSource
    DataSet = sqlAluno
    Left = 216
    Top = 257
  end
  object tbSeries: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    TableName = 'serie'
    Left = 520
    Top = 24
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
    Left = 552
    Top = 24
  end
  object tbTurma: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    AfterScroll = tbTurmaAfterScroll
    IndexFieldNames = 'idSerie'
    MasterFields = 'id'
    MasterSource = dsSeries
    TableName = 'turma'
    Left = 632
    Top = 24
    object tbTurmaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbTurmaidSerie: TIntegerField
      FieldName = 'idSerie'
    end
    object tbTurmanome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object tbTurmavagas: TWordField
      FieldName = 'vagas'
    end
    object tbTurmaturno: TWideStringField
      FieldName = 'turno'
    end
  end
  object dsTurma: TDataSource
    DataSet = tbTurma
    Left = 664
    Top = 24
  end
  object cmd: TADOCommand
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 224
    Top = 16
  end
  object sql: TADOQuery
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 264
    Top = 16
  end
end

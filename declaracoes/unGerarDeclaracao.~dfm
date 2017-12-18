object frmGerarDeclaracao: TfrmGerarDeclaracao
  Left = 406
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerar Declara'#231#227'o'
  ClientHeight = 485
  ClientWidth = 357
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
    Width = 357
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 175
      Height = 24
      Caption = 'Gerar Declara'#231#227'o'
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
    Width = 357
    Height = 412
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
    object Label2: TLabel
      Left = 17
      Top = 294
      Width = 182
      Height = 16
      Caption = 'Selecione o tipo de declara'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
          FieldName = 'aluno.nome'
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
    object cboTipo: TComboBox
      Left = 16
      Top = 312
      Width = 321
      Height = 24
      Style = csDropDownList
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'Declara'#231#227'o de Bolsa Fam'#237'lia'
        'Transfer'#234'ncia Simples')
    end
    object BitBtn1: TBitBtn
      Left = 72
      Top = 352
      Width = 203
      Height = 32
      Caption = 'Gerar Declara'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object RichEdit1: TRichEdit
      Left = 216
      Top = 8
      Width = 121
      Height = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'RichEdit1')
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
  end
  object sqlAluno: TADOQuery
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT anoLetivo.ano, aluno.*, turma.nome, serie.nome, aluno.id'
      
        'FROM serie INNER JOIN (turma INNER JOIN (aluno INNER JOIN (matri' +
        'cula INNER JOIN anoLetivo ON matricula.idAnoLetivo = anoLetivo.i' +
        'd) ON aluno.id = matricula.idAluno) ON turma.id = matricula.idTu' +
        'rma) ON serie.id = turma.idSerie'
      'WHERE (((aluno.id)=1));')
    Left = 144
    Top = 201
    object sqlAlunoalunoid: TAutoIncField
      FieldName = 'aluno.id'
      ReadOnly = True
    end
    object sqlAlunoalunonome: TWideStringField
      FieldName = 'aluno.nome'
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
    object sqlAlunoturmanome: TWideStringField
      FieldName = 'turma.nome'
      Size = 50
    end
    object sqlAlunoserienome: TWideStringField
      FieldName = 'serie.nome'
      Size = 50
    end
    object sqlAlunoalunoid_1: TAutoIncField
      FieldName = 'aluno.id_1'
      ReadOnly = True
    end
    object sqlAlunoano: TWideStringField
      FieldName = 'ano'
      Size = 4
    end
  end
  object dsSqlAluno: TDataSource
    DataSet = sqlAluno
    Left = 176
    Top = 201
  end
end

object frmCadAlunos: TfrmCadAlunos
  Left = 139
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Alunos'
  ClientHeight = 488
  ClientWidth = 1095
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
    Width = 1095
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 199
      Height = 24
      Caption = 'Cadastro de Alunos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 640
      Top = 16
      Width = 434
      Height = 36
      DataSource = dsAlunos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1095
    Height = 415
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 714
      Top = 13
      Width = 153
      Height = 16
      Caption = 'Digite o nome do aluno:'
    end
    object DBGrid1: TDBGrid
      Left = 714
      Top = 64
      Width = 369
      Height = 345
      Ctl3D = False
      DataSource = dsAlunos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome do Aluno'
          Width = 328
          Visible = True
        end>
    end
    object txtBuscaAluno: TEdit
      Left = 714
      Top = 34
      Width = 366
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnChange = txtBuscaAlunoChange
      OnKeyDown = txtBuscaAlunoKeyDown
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 705
      Height = 409
      ActivePage = TabSheet1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Informa'#231#245'es B'#225'sicas'
        object Label2: TLabel
          Left = 24
          Top = 21
          Width = 88
          Height = 16
          Caption = 'Nome do Aluno'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 24
          Top = 69
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
        object Label5: TLabel
          Left = 24
          Top = 117
          Width = 80
          Height = 16
          Caption = 'Complemento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 24
          Top = 165
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
          Left = 256
          Top = 165
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
          Left = 24
          Top = 213
          Width = 17
          Height = 16
          Caption = 'UF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 80
          Top = 213
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
        object Label10: TLabel
          Left = 256
          Top = 261
          Width = 60
          Height = 16
          Caption = 'Operadora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 24
          Top = 261
          Width = 40
          Height = 16
          Caption = 'Celular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 24
          Top = 309
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
        object Label28: TLabel
          Left = 256
          Top = 309
          Width = 127
          Height = 16
          Caption = 'Autorizado a sair com'
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
          Width = 449
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'nome'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 88
          Width = 449
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'endereco'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 24
          Top = 136
          Width = 449
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'complemento'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 184
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'bairro'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 256
          Top = 184
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cidade'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 24
          Top = 232
          Width = 41
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'uf'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 80
          Top = 232
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cep'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 256
          Top = 280
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'operadora'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 24
          Top = 280
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'celular'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit11: TDBEdit
          Left = 24
          Top = 328
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'email'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBEdit24: TDBEdit
          Left = 256
          Top = 329
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'autrizadoSairCom'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBCheckBox3: TDBCheckBox
          Left = 256
          Top = 232
          Width = 129
          Height = 17
          Caption = 'Ensino Religioso'
          DataField = 'ensinoReligioso'
          DataSource = dsAlunos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Documentos'
        ImageIndex = 1
        object Label12: TLabel
          Left = 24
          Top = 21
          Width = 19
          Height = 16
          Caption = 'RG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 256
          Top = 21
          Width = 26
          Height = 16
          Caption = 'CPF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 24
          Top = 69
          Width = 118
          Height = 16
          Caption = 'Data de Nascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 184
          Top = 69
          Width = 72
          Height = 16
          Caption = 'Naturalidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 408
          Top = 69
          Width = 17
          Height = 16
          Caption = 'UF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 24
          Top = 117
          Width = 81
          Height = 16
          Caption = 'Nacionalidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 24
          Top = 205
          Width = 139
          Height = 16
          Caption = 'Certid'#227'o de Nascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 256
          Top = 205
          Width = 78
          Height = 16
          Caption = 'Livro Certid'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 368
          Top = 205
          Width = 84
          Height = 16
          Caption = 'Folha Certid'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 24
          Top = 253
          Width = 79
          Height = 16
          Caption = 'Data Certid'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 160
          Top = 253
          Width = 97
          Height = 16
          Caption = 'Cart'#243'rio Certid'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 352
          Top = 253
          Width = 97
          Height = 16
          Caption = 'N'#250'mero Certid'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit10: TDBEdit
          Left = 24
          Top = 40
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'rg'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit12: TDBEdit
          Left = 256
          Top = 40
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cpf'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 24
          Top = 88
          Width = 145
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'dataNascimento'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 184
          Top = 88
          Width = 209
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'naturalidade'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit15: TDBEdit
          Left = 408
          Top = 88
          Width = 65
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ufNaturalidade'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 24
          Top = 136
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'nacionalidade'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit17: TDBEdit
          Left = 24
          Top = 224
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'certidaoNasc'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit18: TDBEdit
          Left = 256
          Top = 224
          Width = 97
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'livroCertidaoNasc'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBEdit19: TDBEdit
          Left = 368
          Top = 224
          Width = 105
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'folhaCertidaoNasc'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit20: TDBEdit
          Left = 24
          Top = 272
          Width = 121
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'dataCertidaoNasc'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBEdit21: TDBEdit
          Left = 160
          Top = 272
          Width = 177
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cartorioCertidaoNasc'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBEdit22: TDBEdit
          Left = 352
          Top = 272
          Width = 121
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'numeroCertidaoNasc'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 11
        end
        object Panel3: TPanel
          Left = 24
          Top = 176
          Width = 465
          Height = 9
          TabOrder = 12
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Medicamentos'
        ImageIndex = 2
        object Label25: TLabel
          Left = 24
          Top = 51
          Width = 119
          Height = 16
          Caption = 'Descri'#231#227'o da Alergia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 24
          Top = 179
          Width = 143
          Height = 16
          Caption = 'Descri'#231#227'o da Medica'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 24
          Top = 269
          Width = 126
          Height = 16
          Caption = 'Emerg'#234'ncia ligar para'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBCheckBox1: TDBCheckBox
          Left = 24
          Top = 21
          Width = 73
          Height = 17
          Caption = 'Al'#233'rgico'
          DataField = 'alergico'
          DataSource = dsAlunos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBMemo1: TDBMemo
          Left = 24
          Top = 72
          Width = 457
          Height = 57
          Ctl3D = False
          DataField = 'descricaoAlergia'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBCheckBox2: TDBCheckBox
          Left = 24
          Top = 149
          Width = 209
          Height = 17
          Caption = 'Toma medica'#231#227'o controlada'
          DataField = 'medicacaoControlada'
          DataSource = dsAlunos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBMemo2: TDBMemo
          Left = 24
          Top = 200
          Width = 457
          Height = 57
          Ctl3D = False
          DataField = 'descricaoMedicacaoControlada'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit23: TDBEdit
          Left = 24
          Top = 289
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emergenciaLigarPara'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 4
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Dados do Pai'
        ImageIndex = 3
        object Label29: TLabel
          Left = 24
          Top = 21
          Width = 75
          Height = 16
          Caption = 'Nome do Pai'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 24
          Top = 69
          Width = 100
          Height = 16
          Caption = 'Data Nascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 200
          Top = 69
          Width = 75
          Height = 16
          Caption = 'Escolaridade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 376
          Top = 69
          Width = 54
          Height = 16
          Caption = 'Profiss'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 24
          Top = 117
          Width = 19
          Height = 16
          Caption = 'RG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 200
          Top = 117
          Width = 26
          Height = 16
          Caption = 'CPF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 24
          Top = 165
          Width = 47
          Height = 16
          Caption = 'Telefone'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 200
          Top = 165
          Width = 40
          Height = 16
          Caption = 'Celular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 376
          Top = 165
          Width = 60
          Height = 16
          Caption = 'Operadora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 24
          Top = 213
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
        object DBEdit25: TDBEdit
          Left = 24
          Top = 40
          Width = 513
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'nomePai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit26: TDBEdit
          Left = 24
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'dataNascPai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit27: TDBEdit
          Left = 200
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'escolaridadePai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit28: TDBEdit
          Left = 376
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'profissaoPai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit29: TDBEdit
          Left = 24
          Top = 136
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'rgPai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit30: TDBEdit
          Left = 200
          Top = 136
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cpfPai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit31: TDBEdit
          Left = 24
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'fonePai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit32: TDBEdit
          Left = 200
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'celularPai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBEdit33: TDBEdit
          Left = 376
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'operadoraPai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit34: TDBEdit
          Left = 24
          Top = 232
          Width = 513
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emailPai'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 9
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Dados da M'#227'e'
        ImageIndex = 4
        object Label39: TLabel
          Left = 24
          Top = 21
          Width = 81
          Height = 16
          Caption = 'Nome da M'#227'e'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 24
          Top = 69
          Width = 100
          Height = 16
          Caption = 'Data Nascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 200
          Top = 69
          Width = 75
          Height = 16
          Caption = 'Escolaridade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 376
          Top = 69
          Width = 54
          Height = 16
          Caption = 'Profiss'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 200
          Top = 117
          Width = 26
          Height = 16
          Caption = 'CPF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 24
          Top = 165
          Width = 47
          Height = 16
          Caption = 'Telefone'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 200
          Top = 165
          Width = 40
          Height = 16
          Caption = 'Celular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 376
          Top = 165
          Width = 60
          Height = 16
          Caption = 'Operadora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 24
          Top = 213
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
        object Label48: TLabel
          Left = 24
          Top = 117
          Width = 19
          Height = 16
          Caption = 'RG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit35: TDBEdit
          Left = 24
          Top = 40
          Width = 513
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'nomeMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit36: TDBEdit
          Left = 24
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'dataNascMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit37: TDBEdit
          Left = 200
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'escolaridadeMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit38: TDBEdit
          Left = 376
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'profissaoMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit39: TDBEdit
          Left = 24
          Top = 136
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'rgMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit40: TDBEdit
          Left = 200
          Top = 136
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cpfMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit41: TDBEdit
          Left = 24
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'foneMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit42: TDBEdit
          Left = 200
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'celularMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBEdit43: TDBEdit
          Left = 376
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'operadoraMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit44: TDBEdit
          Left = 24
          Top = 232
          Width = 513
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emailMae'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 9
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Dados do Respons'#225'vel'
        ImageIndex = 5
        object Label49: TLabel
          Left = 24
          Top = 21
          Width = 129
          Height = 16
          Caption = 'Nome do Respons'#225'vel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 24
          Top = 69
          Width = 100
          Height = 16
          Caption = 'Data Nascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 200
          Top = 69
          Width = 75
          Height = 16
          Caption = 'Escolaridade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 376
          Top = 69
          Width = 54
          Height = 16
          Caption = 'Profiss'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label53: TLabel
          Left = 200
          Top = 117
          Width = 26
          Height = 16
          Caption = 'CPF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 24
          Top = 165
          Width = 47
          Height = 16
          Caption = 'Telefone'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 200
          Top = 165
          Width = 40
          Height = 16
          Caption = 'Celular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label56: TLabel
          Left = 376
          Top = 165
          Width = 60
          Height = 16
          Caption = 'Operadora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 24
          Top = 213
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
        object Label58: TLabel
          Left = 24
          Top = 117
          Width = 19
          Height = 16
          Caption = 'RG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit45: TDBEdit
          Left = 24
          Top = 40
          Width = 513
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'nomeResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit46: TDBEdit
          Left = 24
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'dataNascResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit47: TDBEdit
          Left = 200
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'escolaridadeResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit48: TDBEdit
          Left = 376
          Top = 88
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'profissaoResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit49: TDBEdit
          Left = 24
          Top = 136
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'rgResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit50: TDBEdit
          Left = 200
          Top = 136
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'cpfResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit51: TDBEdit
          Left = 24
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'foneResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit52: TDBEdit
          Left = 200
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'celularResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBEdit53: TDBEdit
          Left = 376
          Top = 184
          Width = 161
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'operadoraResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBEdit54: TDBEdit
          Left = 24
          Top = 232
          Width = 513
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'emailResp'
          DataSource = dsAlunos
          ParentCtl3D = False
          TabOrder = 9
        end
      end
    end
  end
  object tbAlunos: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    AfterInsert = tbAlunosAfterInsert
    BeforeDelete = tbAlunosBeforeDelete
    IndexFieldNames = 'nome ASC'
    TableName = 'aluno'
    Left = 520
    Top = 16
    object tbAlunosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbAlunosnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object tbAlunosendereco: TWideStringField
      FieldName = 'endereco'
      Size = 255
    end
    object tbAlunoscomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object tbAlunosbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object tbAlunoscidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object tbAlunosuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object tbAlunoscep: TWideStringField
      FieldName = 'cep'
    end
    object tbAlunoscelular: TWideStringField
      FieldName = 'celular'
      Size = 10
    end
    object tbAlunosoperadora: TWideStringField
      FieldName = 'operadora'
      Size = 30
    end
    object tbAlunosemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object tbAlunosrg: TWideStringField
      FieldName = 'rg'
      Size = 15
    end
    object tbAlunoscpf: TWideStringField
      FieldName = 'cpf'
    end
    object tbAlunosdataNascimento: TDateTimeField
      FieldName = 'dataNascimento'
    end
    object tbAlunossexo: TWideStringField
      FieldName = 'sexo'
      Size = 1
    end
    object tbAlunoscor: TWideStringField
      FieldName = 'cor'
      Size = 30
    end
    object tbAlunosnaturalidade: TWideStringField
      FieldName = 'naturalidade'
      Size = 50
    end
    object tbAlunosufNaturalidade: TWideStringField
      FieldName = 'ufNaturalidade'
      Size = 2
    end
    object tbAlunosnacionalidade: TWideStringField
      FieldName = 'nacionalidade'
    end
    object tbAlunoscertidaoNasc: TWideStringField
      FieldName = 'certidaoNasc'
      Size = 100
    end
    object tbAlunoslivroCertidaoNasc: TWideStringField
      FieldName = 'livroCertidaoNasc'
      Size = 30
    end
    object tbAlunosfolhaCertidaoNasc: TWideStringField
      FieldName = 'folhaCertidaoNasc'
      Size = 30
    end
    object tbAlunosdataCertidaoNasc: TDateTimeField
      FieldName = 'dataCertidaoNasc'
    end
    object tbAlunoscartorioCertidaoNasc: TWideStringField
      FieldName = 'cartorioCertidaoNasc'
      Size = 50
    end
    object tbAlunosnumeroCertidaoNasc: TWideStringField
      FieldName = 'numeroCertidaoNasc'
      Size = 50
    end
    object tbAlunosalergico: TBooleanField
      FieldName = 'alergico'
    end
    object tbAlunosdescricaoAlergia: TMemoField
      FieldName = 'descricaoAlergia'
      BlobType = ftMemo
    end
    object tbAlunosmedicacaoControlada: TBooleanField
      FieldName = 'medicacaoControlada'
    end
    object tbAlunosdescricaoMedicacaoControlada: TMemoField
      FieldName = 'descricaoMedicacaoControlada'
      BlobType = ftMemo
    end
    object tbAlunosemergenciaLigarPara: TWideStringField
      FieldName = 'emergenciaLigarPara'
      Size = 50
    end
    object tbAlunosautrizadoSairCom: TWideStringField
      FieldName = 'autrizadoSairCom'
      Size = 50
    end
    object tbAlunosensinoReligioso: TBooleanField
      FieldName = 'ensinoReligioso'
    end
    object tbAlunosnomePai: TWideStringField
      FieldName = 'nomePai'
      Size = 100
    end
    object tbAlunosdataNascPai: TDateTimeField
      FieldName = 'dataNascPai'
    end
    object tbAlunosescolaridadePai: TWideStringField
      FieldName = 'escolaridadePai'
      Size = 30
    end
    object tbAlunosprofissaoPai: TWideStringField
      FieldName = 'profissaoPai'
      Size = 30
    end
    object tbAlunosrgPai: TWideStringField
      FieldName = 'rgPai'
      Size = 30
    end
    object tbAlunoscpfPai: TWideStringField
      FieldName = 'cpfPai'
    end
    object tbAlunosfonePai: TWideStringField
      FieldName = 'fonePai'
      Size = 255
    end
    object tbAlunoscelularPai: TWideStringField
      FieldName = 'celularPai'
      Size = 30
    end
    object tbAlunosoperadoraPai: TWideStringField
      FieldName = 'operadoraPai'
    end
    object tbAlunosemailPai: TWideStringField
      FieldName = 'emailPai'
      Size = 255
    end
    object tbAlunosnomeMae: TWideStringField
      FieldName = 'nomeMae'
      Size = 100
    end
    object tbAlunosdataNascMae: TDateTimeField
      FieldName = 'dataNascMae'
    end
    object tbAlunosescolaridadeMae: TWideStringField
      FieldName = 'escolaridadeMae'
      Size = 30
    end
    object tbAlunosprofissaoMae: TWideStringField
      FieldName = 'profissaoMae'
      Size = 30
    end
    object tbAlunosrgMae: TWideStringField
      FieldName = 'rgMae'
      Size = 30
    end
    object tbAlunoscpfMae: TWideStringField
      FieldName = 'cpfMae'
    end
    object tbAlunosfoneMae: TWideStringField
      FieldName = 'foneMae'
      Size = 255
    end
    object tbAlunoscelularMae: TWideStringField
      FieldName = 'celularMae'
      Size = 30
    end
    object tbAlunosoperadoraMae: TWideStringField
      FieldName = 'operadoraMae'
    end
    object tbAlunosemailMae: TWideStringField
      FieldName = 'emailMae'
      Size = 255
    end
    object tbAlunosnomeResp: TWideStringField
      FieldName = 'nomeResp'
      Size = 100
    end
    object tbAlunosdataNascResp: TDateTimeField
      FieldName = 'dataNascResp'
    end
    object tbAlunosescolaridadeResp: TWideStringField
      FieldName = 'escolaridadeResp'
      Size = 30
    end
    object tbAlunosprofissaoResp: TWideStringField
      FieldName = 'profissaoResp'
      Size = 30
    end
    object tbAlunosrgResp: TWideStringField
      FieldName = 'rgResp'
      Size = 30
    end
    object tbAlunoscpfResp: TWideStringField
      FieldName = 'cpfResp'
    end
    object tbAlunosfoneResp: TWideStringField
      FieldName = 'foneResp'
      Size = 255
    end
    object tbAlunoscelularResp: TWideStringField
      FieldName = 'celularResp'
      Size = 30
    end
    object tbAlunosoperadoraResp: TWideStringField
      FieldName = 'operadoraResp'
    end
    object tbAlunosemailResp: TWideStringField
      FieldName = 'emailResp'
      Size = 255
    end
  end
  object dsAlunos: TDataSource
    DataSet = tbAlunos
    Left = 552
    Top = 16
  end
  object sql: TADOQuery
    Connection = frmPrincipal.Conexao
    Parameters = <>
    Left = 532
    Top = 132
  end
end

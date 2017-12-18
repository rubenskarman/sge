object frmImprimirCarnes: TfrmImprimirCarnes
  Left = 410
  Top = 77
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir Carn'#234's'
  ClientHeight = 532
  ClientWidth = 374
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
    Width = 374
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 160
      Height = 24
      Caption = 'Imprimir Carn'#234's'
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
    Width = 374
    Height = 459
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 372
      Height = 457
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Por Turma'
        object Label2: TLabel
          Left = 80
          Top = 80
          Width = 103
          Height = 16
          Caption = 'Escolha a S'#233'rie:'
        end
        object Label3: TLabel
          Left = 80
          Top = 144
          Width = 109
          Height = 16
          Caption = 'Escolha a Turma:'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 80
          Top = 99
          Width = 209
          Height = 24
          KeyField = 'id'
          ListField = 'nome'
          ListSource = dsSeries
          TabOrder = 0
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 80
          Top = 163
          Width = 209
          Height = 24
          KeyField = 'id'
          ListField = 'nome'
          ListSource = dsTurmas
          TabOrder = 1
          OnClick = DBLookupComboBox2Click
        end
        object BitBtn1: TBitBtn
          Left = 80
          Top = 212
          Width = 209
          Height = 36
          Caption = 'Imprimir Carn'#234's'
          Enabled = False
          TabOrder = 2
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 80
          Top = 265
          Width = 209
          Height = 36
          Caption = 'Imprimir Capas'
          Enabled = False
          TabOrder = 3
          OnClick = BitBtn2Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Individual'
        ImageIndex = 1
        object Label4: TLabel
          Left = 16
          Top = 16
          Width = 104
          Height = 16
          Caption = 'Localizar Aluno:'
        end
        object Label8: TLabel
          Left = 15
          Top = 300
          Width = 41
          Height = 16
          Caption = 'Aluno:'
        end
        object DBText3: TDBText
          Left = 65
          Top = 300
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
        object DBText1: TDBText
          Left = 65
          Top = 353
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
        object Label5: TLabel
          Left = 31
          Top = 350
          Width = 25
          Height = 16
          Caption = 'Pai:'
        end
        object Label6: TLabel
          Left = 24
          Top = 324
          Width = 31
          Height = 16
          Caption = 'M'#227'e:'
        end
        object DBText2: TDBText
          Left = 65
          Top = 327
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
        object txtLocalizarAluno: TEdit
          Left = 16
          Top = 37
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
          Left = 16
          Top = 72
          Width = 329
          Height = 217
          Ctl3D = False
          DataSource = dsAlunos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Aluno'
              Width = 295
              Visible = True
            end>
        end
        object BitBtn3: TBitBtn
          Left = 16
          Top = 382
          Width = 163
          Height = 29
          Caption = 'Imprimir Carn'#234's'
          Enabled = False
          TabOrder = 2
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 187
          Top = 382
          Width = 163
          Height = 29
          Caption = 'Imprimir Capas'
          Enabled = False
          TabOrder = 3
          OnClick = BitBtn4Click
        end
      end
    end
  end
  object tbSeries: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    TableName = 'serie'
    Left = 245
    Top = 13
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
    Left = 277
    Top = 13
  end
  object dsTurmas: TDataSource
    DataSet = tbTurmas
    Left = 277
    Top = 53
  end
  object dsAlunos: TDataSource
    DataSet = sqlAlunos
    Left = 278
    Top = 98
  end
  object tbTurmas: TADOTable
    Active = True
    Connection = frmPrincipal.Conexao
    CursorType = ctStatic
    IndexFieldNames = 'idSerie'
    MasterFields = 'id'
    MasterSource = dsSeries
    TableName = 'turma'
    Left = 245
    Top = 53
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
  object sqlAlunos: TADOQuery
    Connection = frmPrincipal.Conexao
    AfterOpen = sqlAlunosAfterOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM aluno;')
    Left = 248
    Top = 97
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
end

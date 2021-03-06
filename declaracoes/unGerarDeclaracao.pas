unit unGerarDeclaracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, DB, ADODB,
  ComCtrls;

type
  TfrmGerarDeclaracao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    cboTipo: TComboBox;
    BitBtn1: TBitBtn;
    sqlAluno: TADOQuery;
    dsSqlAluno: TDataSource;
    sqlAlunoalunoid: TAutoIncField;
    sqlAlunoalunonome: TWideStringField;
    sqlAlunoendereco: TWideStringField;
    sqlAlunocomplemento: TWideStringField;
    sqlAlunobairro: TWideStringField;
    sqlAlunocidade: TWideStringField;
    sqlAlunouf: TWideStringField;
    sqlAlunocep: TWideStringField;
    sqlAlunocelular: TWideStringField;
    sqlAlunooperadora: TWideStringField;
    sqlAlunoemail: TWideStringField;
    sqlAlunorg: TWideStringField;
    sqlAlunocpf: TWideStringField;
    sqlAlunodataNascimento: TDateTimeField;
    sqlAlunosexo: TWideStringField;
    sqlAlunocor: TWideStringField;
    sqlAlunonaturalidade: TWideStringField;
    sqlAlunoufNaturalidade: TWideStringField;
    sqlAlunonacionalidade: TWideStringField;
    sqlAlunocertidaoNasc: TWideStringField;
    sqlAlunolivroCertidaoNasc: TWideStringField;
    sqlAlunofolhaCertidaoNasc: TWideStringField;
    sqlAlunodataCertidaoNasc: TDateTimeField;
    sqlAlunocartorioCertidaoNasc: TWideStringField;
    sqlAlunonumeroCertidaoNasc: TWideStringField;
    sqlAlunoalergico: TBooleanField;
    sqlAlunodescricaoAlergia: TMemoField;
    sqlAlunomedicacaoControlada: TBooleanField;
    sqlAlunodescricaoMedicacaoControlada: TMemoField;
    sqlAlunoemergenciaLigarPara: TWideStringField;
    sqlAlunoautrizadoSairCom: TWideStringField;
    sqlAlunoensinoReligioso: TBooleanField;
    sqlAlunonomePai: TWideStringField;
    sqlAlunodataNascPai: TDateTimeField;
    sqlAlunoescolaridadePai: TWideStringField;
    sqlAlunoprofissaoPai: TWideStringField;
    sqlAlunorgPai: TWideStringField;
    sqlAlunocpfPai: TWideStringField;
    sqlAlunofonePai: TWideStringField;
    sqlAlunocelularPai: TWideStringField;
    sqlAlunooperadoraPai: TWideStringField;
    sqlAlunoemailPai: TWideStringField;
    sqlAlunonomeMae: TWideStringField;
    sqlAlunodataNascMae: TDateTimeField;
    sqlAlunoescolaridadeMae: TWideStringField;
    sqlAlunoprofissaoMae: TWideStringField;
    sqlAlunorgMae: TWideStringField;
    sqlAlunocpfMae: TWideStringField;
    sqlAlunofoneMae: TWideStringField;
    sqlAlunocelularMae: TWideStringField;
    sqlAlunooperadoraMae: TWideStringField;
    sqlAlunoemailMae: TWideStringField;
    sqlAlunonomeResp: TWideStringField;
    sqlAlunodataNascResp: TDateTimeField;
    sqlAlunoescolaridadeResp: TWideStringField;
    sqlAlunoprofissaoResp: TWideStringField;
    sqlAlunorgResp: TWideStringField;
    sqlAlunocpfResp: TWideStringField;
    sqlAlunofoneResp: TWideStringField;
    sqlAlunocelularResp: TWideStringField;
    sqlAlunooperadoraResp: TWideStringField;
    sqlAlunoemailResp: TWideStringField;
    sqlAlunoturmanome: TWideStringField;
    sqlAlunoserienome: TWideStringField;
    sqlAlunoalunoid_1: TAutoIncField;
    Label2: TLabel;
    RichEdit1: TRichEdit;
    sqlAlunoano: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerarDeclaracao: TfrmGerarDeclaracao;

implementation

uses unRelDeclaracaoBolsaFamilia, unRelTransferenciaSimples;

{$R *.dfm}

procedure TfrmGerarDeclaracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmGerarDeclaracao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmGerarDeclaracao.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN:
      begin
        sqlAluno.Close;
        sqlAluno.SQL.Clear;
        sqlAluno.SQL.Add('SELECT anoLetivo.ano, aluno.*, turma.nome, serie.nome, aluno.id FROM serie INNER JOIN (turma INNER JOIN (aluno INNER JOIN (matricula INNER JOIN anoLetivo ON matricula.idAnoLetivo = anoLetivo.id) ');
        sqlAluno.SQL.Add(' ON aluno.id = matricula.idAluno) ON turma.id = matricula.idTurma) ON serie.id = turma.idSerie WHERE aluno.nome LIKE "%'+Edit2.Text+'%" AND anoLetivo.vigente=TRUE;');
        sqlAluno.Open;

        DBGrid1.SetFocus;
      end;
  end;
end;

procedure TfrmGerarDeclaracao.BitBtn1Click(Sender: TObject);
var
  aluno, dataNasc, pai, mae, serie, anoLetivo: String;
  dia, mes, ano : Word;
begin
  DecodeDate(Date, ano, mes, dia);

  case cboTipo.ItemIndex of
    0:
      begin
        Application.CreateForm(TrelDeclaracaoBolsaFamilia, relDeclaracaoBolsaFamilia);

        aluno:= sqlAlunoalunonome.AsString;
        dataNasc:= sqlAlunodataNascimento.AsString;
        pai:= sqlAlunonomePai.AsString;
        mae:= sqlAlunonomeMae.AsString;
        serie:= sqlAlunoserienome.AsString;

        RichEdit1.Text:= 'Declaro para os devidos fins de direito que o(a) aluno(a) '+aluno+' nascido(a) em '+dataNasc+', filho(a) de '+pai+' e '+mae+', estuda neste Estabelecimento de Ensino cursando '+serie+', frequantando as aulas diariamente.';

        RichEdit1.SelStart := Pos(aluno, RichEdit1.Text)-1; 
        RichEdit1.SelLength := Length(aluno);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(dataNasc, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(dataNasc);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(pai, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(pai);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(mae, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(mae);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(serie, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(serie);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        relDeclaracaoBolsaFamilia.lblData.Caption:= 'Surubim, '+IntToStr(dia)+' de '+LongMonthNames[mes]+' de '+IntToStr(ano)+'.';

        relDeclaracaoBolsaFamilia.Preview;
        relDeclaracaoBolsaFamilia.Free;
        relDeclaracaoBolsaFamilia:= nil;
      end;
    1:
      begin
        Application.CreateForm(TrelDeclaracaoTransferenciaSimples, relDeclaracaoTransferenciaSimples);

        aluno:= sqlAlunoalunonome.AsString;
        dataNasc:= sqlAlunodataNascimento.AsString;
        pai:= sqlAlunonomePai.AsString;
        mae:= sqlAlunonomeMae.AsString;
        serie:= sqlAlunoserienome.AsString;
        anoLetivo:= sqlAlunoano.AsString;

        RichEdit1.Text:= 'Declaro para os devidos fins de direito que o(a) aluno(a) '+aluno+' nascido(a) em '+dataNasc+', filho(a) de '+pai+' e '+mae+', cursou '+serie+' neste Estabelecimento de Ensino no ano de '+anoLetivo+' , estando APTO a dar continuidade ao curso. Todos os d�bitos referentes �s mensalidades escolares foram quitados.';

        RichEdit1.SelStart := Pos(aluno, RichEdit1.Text)-1; 
        RichEdit1.SelLength := Length(aluno);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(dataNasc, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(dataNasc);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(pai, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(pai);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(mae, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(mae);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(serie, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(serie);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        RichEdit1.SelStart := Pos(anoLetivo, RichEdit1.Text)-1;
        RichEdit1.SelLength := Length(anoLetivo);
        RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];

        relDeclaracaoTransferenciaSimples.lblData.Caption:= 'Surubim, '+IntToStr(dia)+' de '+LongMonthNames[mes]+' de '+IntToStr(ano)+'.';

        relDeclaracaoTransferenciaSimples.Preview;

        relDeclaracaoTransferenciaSimples.Free;
        relDeclaracaoTransferenciaSimples:= nil;
      end;
  end;
end;

end.

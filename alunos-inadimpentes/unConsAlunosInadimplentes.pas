unit unConsAlunosInadimplentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmConsAlunosInadimplentes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    opcTipo: TRadioGroup;
    cboMeses: TComboBox;
    btoListar: TBitBtn;
    lbl1: TLabel;
    cboSerie: TDBLookupComboBox;
    cboTurma: TDBLookupComboBox;
    lbl2: TLabel;
    pnAluno: TPanel;
    txtLocalizarAluno: TEdit;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText1: TDBText;
    sqlAlunos: TADOQuery;
    sqlAlunosid: TAutoIncField;
    sqlAlunosnome: TWideStringField;
    sqlAlunosnomePai: TWideStringField;
    sqlAlunosnomeMae: TWideStringField;
    dsAlunos: TDataSource;
    tbSeries: TADOTable;
    tbSeriesid: TAutoIncField;
    tbSeriesnome: TWideStringField;
    tbSeriesvalorMensalidade: TBCDField;
    dsSeries: TDataSource;
    dsTurmas: TDataSource;
    tbTurmas: TADOTable;
    tbTurmasid: TAutoIncField;
    tbTurmasidSerie: TIntegerField;
    tbTurmasnome: TWideStringField;
    tbTurmasvagas: TWordField;
    tbTurmasturno: TWideStringField;
    procedure opcTipoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtLocalizarAlunoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btoListarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsAlunosInadimplentes: TfrmConsAlunosInadimplentes;

implementation

{$R *.dfm}

uses unPrincipal, unRelAlunosInadGeral;

procedure TfrmConsAlunosInadimplentes.opcTipoClick(Sender: TObject);
begin
  case opcTipo.ItemIndex of
    0:
      begin
        lbl1.Visible:= False;
        cboMeses.Visible:= False;
        cboSerie.Visible:= False;
        lbl2.Visible:= False;
        cboTurma.Visible:= False;
        pnAluno.Visible:= false;
      end;
    1:
      begin
        lbl1.Visible:= true;
        lbl1.Caption:= 'Escolha o mês';
        cboMeses.Visible:= true;
        cboSerie.Visible:= False;
        lbl2.Visible:= False;
        cboTurma.Visible:= False;
        pnAluno.Visible:= false;
      end;
    2:
      begin
        lbl1.Visible:= true;
        lbl1.Caption:= 'Escolha a série';
        cboMeses.Visible:= false;
        cboSerie.Visible:= true;
        lbl2.Visible:= true;
        cboTurma.Visible:= true;
        pnAluno.Visible:= false;
      end;
    3:
      begin
        lbl1.Visible:= false;
        cboMeses.Visible:= false;
        cboSerie.Visible:= false;
        lbl2.Visible:= false;
        cboTurma.Visible:= false;
        pnAluno.Visible:= true;
      end;
  end;
end;

procedure TfrmConsAlunosInadimplentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmConsAlunosInadimplentes.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmConsAlunosInadimplentes.txtLocalizarAlunoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN:
      begin
        sqlAlunos.Close;
        sqlAlunos.SQL.Clear;
        sqlAlunos.SQL.Add('SELECT * FROM aluno WHERE nome LIKE "%'+txtLocalizarAluno.Text+'%"');
        sqlAlunos.Open;

        DBGrid1.SetFocus;
      end;
  end;
end;

procedure TfrmConsAlunosInadimplentes.btoListarClick(Sender: TObject);
begin
  case opcTipo.ItemIndex of
    0:
      begin
        Application.CreateForm(TrelAlunosInadGeral, relAlunosInadGeral);

        relAlunosInadGeral.sqlMaster.Close;
        relAlunosInadGeral.sqlMaster.SQL.Clear;
        relAlunosInadGeral.sqlMaster.SQL.Add('SELECT anoLetivo.ano, aluno.id, aluno.nome, serie.id, serie.nome, turma.id, turma.nome, carneMensalidade.mes, carneMensalidade.pago, carneMensalidade.valor, carneMensalidade.diaPagamento ');
        relAlunosInadGeral.sqlMaster.SQL.Add(' FROM ((serie INNER JOIN (turma INNER JOIN (aluno INNER JOIN (anoLetivo INNER JOIN matricula ON anoLetivo.id = matricula.idAnoLetivo) ON aluno.id = matricula.idAluno) ');
        relAlunosInadGeral.sqlMaster.SQL.Add(' ON turma.id = matricula.idTurma) ON serie.id = turma.idSerie) INNER JOIN carne ON matricula.id = carne.idMatricula) INNER JOIN carneMensalidade ON carne.id = carneMensalidade.idCarne ');
        relAlunosInadGeral.sqlMaster.SQL.Add(' WHERE (((carneMensalidade.pago)=False) AND ((anoLetivo.vigente)=True) AND (Date()>[carneMensalidade].[diaPagamento]) ) ORDER BY serie.nome ASC, turma.nome ASC, aluno.nome ASC, carneMensalidade.mes;');
        relAlunosInadGeral.sqlMaster.Open;

        relAlunosInadGeral.Preview;
        relAlunosInadGeral.Free;
        relAlunosInadGeral:= nil;
      end;
    1:
      begin
        ShowMessage('Este recurso ainda será liberado!');
      end;
    2:
      begin
        ShowMessage('Este recurso ainda será liberado!');
      end;
    3:
      begin
        ShowMessage('Este recurso ainda será liberado!');
      end;
  end;
end;

end.

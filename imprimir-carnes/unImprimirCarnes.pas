unit unImprimirCarnes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, ComCtrls, Buttons, DBCtrls,
  Grids, DBGrids;

type
  TfrmImprimirCarnes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    tbSeries: TADOTable;
    dsSeries: TDataSource;
    tbSeriesid: TAutoIncField;
    tbSeriesnome: TWideStringField;
    tbSeriesvalorMensalidade: TBCDField;
    dsTurmas: TDataSource;
    dsAlunos: TDataSource;
    tbTurmas: TADOTable;
    tbTurmasid: TAutoIncField;
    tbTurmasidSerie: TIntegerField;
    tbTurmasnome: TWideStringField;
    tbTurmasvagas: TWordField;
    tbTurmasturno: TWideStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    txtLocalizarAluno: TEdit;
    Label4: TLabel;
    Label8: TLabel;
    DBText3: TDBText;
    DBText1: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    sqlAlunos: TADOQuery;
    sqlAlunosid: TAutoIncField;
    sqlAlunosnome: TWideStringField;
    sqlAlunosnomePai: TWideStringField;
    sqlAlunosnomeMae: TWideStringField;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtLocalizarAlunoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure sqlAlunosAfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimirCarnes: TfrmImprimirCarnes;

implementation

{$R *.dfm}

uses unPrincipal, unRelImpressaoCarnes, unRelCapasCarnes;

procedure TfrmImprimirCarnes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmImprimirCarnes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmImprimirCarnes.txtLocalizarAlunoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmImprimirCarnes.DBLookupComboBox2Click(Sender: TObject);
begin
  BitBtn1.Enabled:= True;
  BitBtn2.Enabled:= True;
end;

procedure TfrmImprimirCarnes.sqlAlunosAfterOpen(DataSet: TDataSet);
begin
  BitBtn3.Enabled:= True;
  BitBtn4.Enabled:= True;
end;

procedure TfrmImprimirCarnes.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TrelImpressaoCarnes, relImpressaoCarnes);

    relImpressaoCarnes.sqlMaster.Close;
    relImpressaoCarnes.sqlMaster.SQL.Clear;
    relImpressaoCarnes.sqlMaster.SQL.Add('SELECT aluno.nome, serie.nome, turma.nome, turma.turno, carneMensalidade.mes, carneMensalidade.valor, carneMensalidade.diaPagamento, carneMensalidade.id, ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' anoLetivo.ano, turma.id FROM (serie INNER JOIN turma ON serie.id = turma.idSerie) INNER JOIN ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' (anoLetivo INNER JOIN ((aluno INNER JOIN matricula ON aluno.id = matricula.idAluno) INNER JOIN ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' (carne INNER JOIN carneMensalidade ON carne.id = carneMensalidade.idCarne) ON ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' matricula.id = carne.idMatricula) ON anoLetivo.id = matricula.idAnoLetivo) ON ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' turma.id = matricula.idTurma WHERE (((turma.id)='+tbTurmasid.AsString+') AND anoLetivo.vigente=TRUE);');
    relImpressaoCarnes.sqlMaster.Open;

    relImpressaoCarnes.QRImage1.Picture.LoadFromFile('c:\SGE\img\logo-carne-canhoto.jpg');
    relImpressaoCarnes.QRImage2.Picture.LoadFromFile('c:\SGE\img\logo-carne-destro.jpg');

    relImpressaoCarnes.Preview;
    relImpressaoCarnes.Free;
    relImpressaoCarnes:= nil;
end;

procedure TfrmImprimirCarnes.BitBtn3Click(Sender: TObject);
begin
    Application.CreateForm(TrelImpressaoCarnes, relImpressaoCarnes);

    relImpressaoCarnes.sqlMaster.Close;
    relImpressaoCarnes.sqlMaster.SQL.Clear;
    relImpressaoCarnes.sqlMaster.SQL.Add('SELECT aluno.nome, serie.nome, turma.nome, turma.turno, carneMensalidade.mes, carneMensalidade.valor, carneMensalidade.diaPagamento, carneMensalidade.id, ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' anoLetivo.ano, turma.id FROM (serie INNER JOIN turma ON serie.id = turma.idSerie) INNER JOIN ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' (anoLetivo INNER JOIN ((aluno INNER JOIN matricula ON aluno.id = matricula.idAluno) INNER JOIN ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' (carne INNER JOIN carneMensalidade ON carne.id = carneMensalidade.idCarne) ON ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' matricula.id = carne.idMatricula) ON anoLetivo.id = matricula.idAnoLetivo) ON ');
    relImpressaoCarnes.sqlMaster.SQL.Add(' turma.id = matricula.idTurma WHERE (((aluno.id)='+sqlAlunosid.AsString+') AND anoLetivo.vigente=TRUE );');
    relImpressaoCarnes.sqlMaster.Open;

    relImpressaoCarnes.QRImage1.Picture.LoadFromFile('c:\SGE\img\logo-carne-canhoto.jpg');
    relImpressaoCarnes.QRImage2.Picture.LoadFromFile('c:\SGE\img\logo-carne-destro.jpg');

    relImpressaoCarnes.Preview;
    relImpressaoCarnes.Free;
    relImpressaoCarnes:= nil;
end;

procedure TfrmImprimirCarnes.BitBtn2Click(Sender: TObject);
begin
    Application.CreateForm(TrelCapasCarnes, relCapasCarnes);

    relCapasCarnes.sqlMaster.Close;
    relCapasCarnes.sqlMaster.SQL.Clear;
    relCapasCarnes.sqlMaster.SQL.Add('SELECT anoLetivo.ano, anoLetivo.vigente, turma.turno, serie.nome, aluno.nome, aluno.endereco, aluno.bairro, aluno.cidade, turma.id');
    relCapasCarnes.sqlMaster.SQL.Add('FROM (serie INNER JOIN turma ON serie.id = turma.idSerie) INNER JOIN (anoLetivo INNER JOIN (aluno INNER JOIN matricula ON aluno.id = matricula.idAluno) ON anoLetivo.id = matricula.idAnoLetivo) ON turma.id = matricula.idTurma ');
    relCapasCarnes.sqlMaster.SQL.Add(' WHERE (((anoLetivo.vigente)=True) AND ((turma.id)='+tbTurmasid.AsString+'));');
    relCapasCarnes.sqlMaster.Open;

    relCapasCarnes.QRImage2.Picture.LoadFromFile('c:\SGE\img\logo-carne-capa.jpg');
    relCapasCarnes.QRImage1.Picture.LoadFromFile('c:\SGE\img\logo-carne-verso.jpg');

    relCapasCarnes.Preview;
    relCapasCarnes.Free;
    relCapasCarnes:= nil;
end;

procedure TfrmImprimirCarnes.BitBtn4Click(Sender: TObject);
begin
    Application.CreateForm(TrelCapasCarnes, relCapasCarnes);

    relCapasCarnes.sqlMaster.Close;
    relCapasCarnes.sqlMaster.SQL.Clear;
    relCapasCarnes.sqlMaster.SQL.Add('SELECT anoLetivo.ano, anoLetivo.vigente, turma.turno, serie.nome, aluno.nome, aluno.endereco, aluno.bairro, aluno.cidade, turma.id');
    relCapasCarnes.sqlMaster.SQL.Add('FROM (serie INNER JOIN turma ON serie.id = turma.idSerie) INNER JOIN (anoLetivo INNER JOIN (aluno INNER JOIN matricula ON aluno.id = matricula.idAluno) ON anoLetivo.id = matricula.idAnoLetivo) ON turma.id = matricula.idTurma ');
    relCapasCarnes.sqlMaster.SQL.Add(' WHERE (((anoLetivo.vigente)=True) AND ((aluno.id)='+sqlAlunosid.AsString+'));');
    relCapasCarnes.sqlMaster.Open;

    relCapasCarnes.QRImage2.Picture.LoadFromFile('c:\SGE\img\logo-carne-capa.jpg');
    relCapasCarnes.QRImage1.Picture.LoadFromFile('c:\SGE\img\logo-carne-verso.jpg');

    relCapasCarnes.Preview;
    relCapasCarnes.Free;
    relCapasCarnes:= nil;
end;

end.

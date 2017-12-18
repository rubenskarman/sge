unit unPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB, jpeg, ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Sries1: TMenuItem;
    urmas1: TMenuItem;
    Disciplinas1: TMenuItem;
    N1: TMenuItem;
    Alunos1: TMenuItem;
    Acadmico1: TMenuItem;
    Matrculas1: TMenuItem;
    Financeiro1: TMenuItem;
    ImprimirCarns1: TMenuItem;
    Caixa1: TMenuItem;
    AnoLetivo1: TMenuItem;
    Conexao: TADOConnection;
    N2: TMenuItem;
    VincularDisciplinasSrie1: TMenuItem;
    ListadeMatriculados1: TMenuItem;
    Image1: TImage;
    ReceberMensalidade1: TMenuItem;
    ReceberMensalidadecomCodBarras1: TMenuItem;
    sqlGeral: TADOQuery;
    Declaraes1: TMenuItem;
    N3: TMenuItem;
    MovimentodeCaixa1: TMenuItem;
    N4: TMenuItem;
    AlunosInadimplentes1: TMenuItem;
    N5: TMenuItem;
    CadastrodeDespesas1: TMenuItem;
    procedure Sries1Click(Sender: TObject);
    procedure urmas1Click(Sender: TObject);
    procedure Disciplinas1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure AnoLetivo1Click(Sender: TObject);
    procedure VincularDisciplinasSrie1Click(Sender: TObject);
    procedure Matrculas1Click(Sender: TObject);
    procedure ListadeMatriculados1Click(Sender: TObject);
    procedure ImprimirCarns1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReceberMensalidade1Click(Sender: TObject);
    procedure ReceberMensalidadecomCodBarras1Click(Sender: TObject);
    procedure Declaraes1Click(Sender: TObject);
    procedure MovimentodeCaixa1Click(Sender: TObject);
    procedure AlunosInadimplentes1Click(Sender: TObject);
    procedure CadastrodeDespesas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses unCadSeries, unCadTurmas, unCadDisciplinas, unCadAlunos,
  unConfiguracoes, unVincularDisciplinasSeries, unMatriculas,
  unFrmRelMatriculadosTurma, unImprimirCarnes, unReceberMensalidade,
  unAutenticacao, unConfirmarPagamento, DateUtils, unGerarDeclaracao,
  unCaixaMov, unConsAlunosInadimplentes, unCadDespesas;

{$R *.dfm}

procedure TfrmPrincipal.Sries1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadSeries, frmCadSeries);
  frmCadSeries.ShowModal;
end;

procedure TfrmPrincipal.urmas1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadTurmas, frmCadTurmas);
  frmCadTurmas.ShowModal;
end;

procedure TfrmPrincipal.Disciplinas1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmCadDisciplinas, frmCadDisciplinas);
    frmCadDisciplinas.ShowModal;
end;

procedure TfrmPrincipal.Alunos1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmCadAlunos, frmCadAlunos);
    frmCadAlunos.ShowModal;
end;

procedure TfrmPrincipal.AnoLetivo1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmConfiguracoes, frmConfiguracoes);
    frmConfiguracoes.ShowModal;
end;

procedure TfrmPrincipal.VincularDisciplinasSrie1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmVincularDisciplinaSerie, frmVincularDisciplinaSerie);
  frmVincularDisciplinaSerie.ShowModal;
end;

procedure TfrmPrincipal.Matrculas1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmMatricula, frmMatricula);
  frmMatricula.ShowModal;
end;

procedure TfrmPrincipal.ListadeMatriculados1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRelMatriculadosTurma, frmRelMatriculadosTurma);
  frmRelMatriculadosTurma.ShowModal;
end;

procedure TfrmPrincipal.ImprimirCarns1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmImprimirCarnes, frmImprimirCarnes);
  frmImprimirCarnes.ShowModal;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TfrmAutenticacao, frmAutenticacao);
  frmAutenticacao.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.ReceberMensalidade1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmReceberMensalidade, frmReceberMensalidade);
  frmReceberMensalidade.ShowModal;
end;

procedure TfrmPrincipal.ReceberMensalidadecomCodBarras1Click(
  Sender: TObject);
var
  codBarras, codMens: String;
  digitou: Boolean;
begin
  digitou:= InputQuery('Entre com o Código de Barras:','Receber Mensalidade',codBarras);
  codMens:= Copy(codBarras, 7, Length(codBarras));

  if digitou then
    begin
      sqlGeral.Close;
      sqlGeral.SQL.Clear;
      sqlGeral.SQL.Add('SELECT anoLetivo.id AS idAno, anoLetivo.ano, aluno.id AS idAluno, aluno.nome AS nomeAluno, carneMensalidade.id AS idMensalidade, carneMensalidade.mes, carneMensalidade.valor, carneMensalidade.pago, turma.nome AS nomeTurma, serie.nome AS nomeSerie ');
      sqlGeral.SQL.Add(' FROM anoLetivo INNER JOIN ((serie INNER JOIN turma ON serie.id = turma.idSerie) INNER JOIN (((aluno INNER JOIN matricula ON aluno.id = matricula.idAluno) INNER JOIN carne ON matricula.id = carne.idMatricula) INNER JOIN ');
      sqlGeral.SQL.Add(' carneMensalidade ON carne.id = carneMensalidade.idCarne) ON turma.id = matricula.idTurma) ON anoLetivo.id = matricula.idAnoLetivo ');
      sqlGeral.SQL.Add(' WHERE (((carneMensalidade.id)='+codMens+'));');
      sqlGeral.Open;

      //ShowMessage(codMens);

      if sqlGeral.FieldByName('pago').AsBoolean then
        begin
          Application.MessageBox('Essa mensalidade já foi paga anteriormente!','Erro',MB_ICONERROR+MB_OK);
          Abort;
        end;

      Application.CreateForm(TfrmConfirmarPagamento, frmConfirmarPagamento);
      with frmConfirmarPagamento do
        begin
          origem:= 'codBarras';
          idMensalidade:= codMens;
          idAnoLetivo:= sqlGeral.FieldByName('idAno').AsString;
          data:= '#'+DateToStr(Date())+'#';
          hora:= '"'+TimeToStr(Time())+'"';
          valor:= FormatFloat('###,##0.00',sqlGeral.FieldByName('valor').Asfloat);
          descricao:= '"Pagto Mens - '+sqlGeral.FieldByName('nomeAluno').AsString+' - MÊS: '+sqlGeral.FieldByName('mes').AsString+' de '+sqlGeral.FieldByName('ano').AsString+'"';
          idAluno:= sqlGeral.FieldByName('idAluno').AsString;
          nomeAluno:= sqlGeral.FieldByName('nomeAluno').AsString;
          turma:= '"'+sqlGeral.FieldByName('nomeTurma').AsString+'"';
          serie:= '"'+sqlGeral.FieldByName('nomeSerie').AsString+'"';
          mes:= sqlGeral.FieldByName('mes').AsString;

          lblAluno.Caption:= nomeAluno;

          case StrToInt(mes) of
            1: lblMens.Caption:= 'JANEIRO';
            2: lblMens.Caption:= 'FEVEREIRO';
            3: lblMens.Caption:= 'MARÇO';
            4: lblMens.Caption:= 'ABRIL';
            5: lblMens.Caption:= 'MAIO';
            6: lblMens.Caption:= 'JUNHO';
            7: lblMens.Caption:= 'JULHO';
            8: lblMens.Caption:= 'AGOSTO';
            9: lblMens.Caption:= 'SETEMBRO';
            10: lblMens.Caption:= 'OUTUBRO';
            11: lblMens.Caption:= 'NOVEMBRO';
            12: lblMens.Caption:= 'DEZEMBRO';
          end;

          txtValor.Text:= valor;

          ShowModal;
        end;
    end;
end;

procedure TfrmPrincipal.Declaraes1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmGerarDeclaracao, frmGerarDeclaracao);
  frmGerarDeclaracao.ShowModal;
end;

procedure TfrmPrincipal.MovimentodeCaixa1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmCaixaMov, frmCaixaMov);
    frmCaixaMov.ShowModal;
end;

procedure TfrmPrincipal.AlunosInadimplentes1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmConsAlunosInadimplentes, frmConsAlunosInadimplentes);
  frmConsAlunosInadimplentes.ShowModal;
end;

procedure TfrmPrincipal.CadastrodeDespesas1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmCadDespesas, frmCadDespesas);
    frmCadDespesas.ShowModal;
end;

end.

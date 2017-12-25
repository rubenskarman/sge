unit unConfirmarPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ADODB, DB;

type
  TfrmConfirmarPagamento = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lblAluno: TLabel;
    Label4: TLabel;
    lblMens: TLabel;
    Label6: TLabel;
    txtValor: TEdit;
    BitBtn1: TBitBtn;
    cmd: TADOCommand;
    sql: TADOQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      origem, idMensalidade, idAnoLetivo, data, hora, valor, descricao, idAluno, nomeAluno, turma, serie, mes: String;
  end;

var
  frmConfirmarPagamento: TfrmConfirmarPagamento;

implementation

{$R *.dfm}

uses unPrincipal, unReceberMensalidade;

procedure TfrmConfirmarPagamento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmConfirmarPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmConfirmarPagamento.BitBtn1Click(Sender: TObject);
begin
  if (origem = 'codBarras') then
    begin
      cmd.CommandText:= '';
      cmd.CommandText:= 'UPDATE carneMensalidade SET pago=TRUE, dataPagamento=#'+data+'# WHERE id='+idMensalidade;
      cmd.Execute;

      cmd.CommandText:= '';
      cmd.CommandText:= 'INSERT INTO caixa (idAnoLetivo, data, hora, valor, descricao, idAluno, nomeAluno, turma, serie, mes, tipo) ';
      cmd.CommandText:= cmd.CommandText + 'VALUES ('+idAnoLetivo+','+data+','+hora+',"'+valor+'",'+descricao+','+idAluno+',"'+nomeAluno+'",'+turma+','+serie+',"'+mes+'","C")';
      cmd.Execute;

      Application.MessageBox('Pagamento realizado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
      Close;
    end
  else
    begin
      idMensalidade:= frmReceberMensalidade.sqlMensid.AsString;
      idAluno:= frmReceberMensalidade.sqlAlunoid.AsString;
      nomeAluno:= '"'+frmReceberMensalidade.sqlAlunonome.AsString+'"';

      sql.Close;
      sql.SQL.Clear;
      sql.SQL.Add('SELECT vigente, id, ano FROM anoLetivo WHERE (((vigente)=True));');
      sql.Open;

      idAnoLetivo:= sql.FieldByName('id').AsString;
      data:= '"'+DateToStr(Date())+'"';
      hora:= '"'+TimeToStr(Time())+'"';
      valor:= '"'+txtValor.Text+'"';
      descricao:= '"Pagto Mens - '+lblAluno.Caption+' - MÊS: '+frmReceberMensalidade.sqlMensmes.AsString+' de '+sql.FieldByName('ano').AsString+'"';

      sql.Close;
      sql.SQL.Clear;
      sql.SQL.Add('SELECT aluno.id, turma.nome AS nomeTurma, serie.nome AS nomeSerie FROM serie INNER JOIN (turma INNER JOIN (aluno INNER JOIN matricula ON aluno.id = matricula.idAluno) ON turma.id = matricula.idTurma) ');
      sql.SQL.Add(' ON serie.id = turma.idSerie WHERE (((aluno.id)='+idAluno+'));');
      sql.Open;

      turma:= '"'+sql.FieldByName('nomeTurma').AsString+'"';
      serie:= '"'+sql.FieldByName('nomeSerie').AsString+'"';
      mes:= frmReceberMensalidade.sqlMensmes.AsString;

      cmd.CommandText:= '';
      cmd.CommandText:= 'UPDATE carneMensalidade SET pago=TRUE, dataPagamento='+data+' WHERE id='+idMensalidade;
      cmd.Execute;

      cmd.CommandText:= '';
      cmd.CommandText:= 'INSERT INTO caixa (idAnoLetivo, data, hora, valor, descricao, idAluno, nomeAluno, turma, serie, mes, tipo) ';
      cmd.CommandText:= cmd.CommandText + 'VALUES ('+idAnoLetivo+','+data+','+hora+','+valor+','+descricao+','+idAluno+','+nomeAluno+','+turma+','+serie+',"'+mes+'","C")';
      cmd.Execute;

      Application.MessageBox('Pagamento realizado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
      frmReceberMensalidade.sqlMens.Close;
      frmReceberMensalidade.sqlMens.Open;
      Close;
    end;
end;

end.

unit unMatriculas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DBCtrls, DB, ADODB;

type
  TfrmMatricula = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    txtLocalizarAluno: TEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    sqlAluno: TADOQuery;
    sqlAlunoid: TAutoIncField;
    sqlAlunonome: TWideStringField;
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
    DBText1: TDBText;
    DBText2: TDBText;
    dsAlunos: TDataSource;
    lblVagas: TLabel;
    tbSeries: TADOTable;
    tbSeriesid: TAutoIncField;
    tbSeriesnome: TWideStringField;
    tbSeriesvalorMensalidade: TBCDField;
    dsSeries: TDataSource;
    tbTurma: TADOTable;
    tbTurmaid: TAutoIncField;
    tbTurmaidSerie: TIntegerField;
    tbTurmanome: TWideStringField;
    tbTurmavagas: TWordField;
    tbTurmaturno: TWideStringField;
    dsTurma: TDataSource;
    cmd: TADOCommand;
    sql: TADOQuery;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    DBText3: TDBText;
    procedure txtLocalizarAlunoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbTurmaAfterScroll(DataSet: TDataSet);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GerarMatricula;
    procedure GerarCarne;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatricula: TfrmMatricula;
  anoLetivo: String;

implementation

{$R *.dfm}

uses unPrincipal, unCadAlunos;

procedure TfrmMatricula.txtLocalizarAlunoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN:
      begin
        sqlAluno.Close;
        sqlAluno.SQL.Clear;
        sqlAluno.SQL.Add('SELECT * FROM aluno WHERE nome LIKE "%'+txtLocalizarAluno.Text+'%";');
        sqlAluno.Open;

        DBGrid1.SetFocus;
      end;
  end;
end;

procedure TfrmMatricula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmMatricula.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      begin
        Close;
      end;
  end;
end;

procedure TfrmMatricula.FormShow(Sender: TObject);
begin
  txtLocalizarAluno.SetFocus;
end;

procedure TfrmMatricula.BitBtn1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmCadAlunos, frmCadAlunos);
    frmCadAlunos.ShowModal;
end;

procedure TfrmMatricula.tbTurmaAfterScroll(DataSet: TDataSet);
begin
  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT vagas FROM turma WHERE id='+tbTurmaid.AsString);
  sql.Open;

  lblVagas.Caption:= sql.FieldByName('vagas').AsString;
end;

procedure TfrmMatricula.DBLookupComboBox2Click(Sender: TObject);
begin
  lblVagas.Visible:= True;
end;

procedure TfrmMatricula.BitBtn2Click(Sender: TObject);
begin
  if (sqlAluno.State in [dsBrowse]) and (sqlAlunoid.Value > 0) then
    begin
      if DBLookupComboBox1.Text <> '' then
        begin
          if DBLookupComboBox2.Text <> '' then
            begin
              GerarMatricula;
            end
          else
            Application.MessageBox('Escolha a TURMA!','Atenção',MB_ICONWARNING+MB_OK);
        end
      else
        Application.MessageBox('Escolha a SÉRIE!','Atenção',MB_ICONWARNING+MB_OK);
    end
  else
    Application.MessageBox('Escolha o Aluno!','Atenção',MB_ICONWARNING+MB_OK);
end;

procedure TfrmMatricula.GerarMatricula;
begin
  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT * FROM anoLetivo WHERE vigente = TRUE');
  sql.Open;
  anoLetivo:= IntToStr(sql.FieldByName('id').AsInteger);

  if (sql.RecordCount > 0) then
    begin
      sql.Close;
      sql.SQL.Clear;
      sql.SQL.Add('SELECT * FROM matricula WHERE (idAluno = '+sqlAlunoid.AsString+') AND (idAnoLetivo = '+anoLetivo+')');
      sql.Open;

      if sql.RecordCount <= 0 then
        begin
          cmd.CommandText:= '';
          cmd.CommandText:= 'INSERT INTO matricula (idAnoLetivo, idTurma, idAluno, dataMatricula) VALUES ('+anoLetivo+','+tbTurmaid.AsString+','+sqlAlunoid.AsString+',#'+FormatDateTime('mm/dd/YYYY',Date())+'#);';
          cmd.Execute;

          cmd.CommandText:= '';
          cmd.CommandText:= 'UPDATE turma SET vagas = vagas - 1 WHERE id = '+tbTurmaid.AsString;
          cmd.Execute;

          GerarCarne;

          tbTurma.Close;
          tbTurma.Open;

          txtLocalizarAluno.Clear;
          txtLocalizarAluno.SetFocus;
          sqlAluno.Close;

          Application.MessageBox('Matrícula realizada com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
        end
      else
        begin
          Application.MessageBox('Aluno já Matriculado!','Confirmação',MB_ICONERROR+MB_OK);  
        end;
    end
  else
    Application.MessageBox(PChar('Nenhum ano letivo configurado!'+#13+'Configure o ano letivo antes de realizar matrículas.'),'Atenção',MB_ICONERROR+MB_OK);
end;

procedure TfrmMatricula.GerarCarne;
var
  diaPagamento, anoLetivoValor: String;
  i, idCarne: Integer;
begin
  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT * FROM anoLetivo WHERE vigente = TRUE');
  sql.Open;
  anoLetivoValor:= IntToStr(sql.FieldByName('ano').AsInteger);

  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT * FROM matricula WHERE (idAluno = '+sqlAlunoid.AsString+') AND (idAnoLetivo = '+anoLetivo+')');
  sql.Open;

  cmd.CommandText:= '';
  cmd.CommandText:= 'INSERT INTO carne (idMatricula, descritivo) VALUES ('+sql.FieldByName('id').AsString+',"CARNÊ DE MENSALIDADE");';
  cmd.Execute;

  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT valor FROM configuracao WHERE (nome = "diaPagamento")');
  sql.Open;
  diaPagamento:= sql.FieldByName('valor').AsString;

  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT MAX(id) AS ultimoCarne FROM carne;');
  sql.Open;
  idCarne:= sql.FieldByName('ultimoCarne').AsInteger;

  for i:=2 to 12 do
    begin
      cmd.CommandText:= '';
      cmd.CommandText:= 'INSERT INTO carneMensalidade (idCarne, valor, mes, diaPagamento) VALUES ('+IntToStr(idCarne)+',"'+tbSeriesvalorMensalidade.AsString+'",'+IntToStr(i)+',#'+IntToStr(i)+'/'+diaPagamento+'/'+anoLetivoValor+'#);';
      cmd.Execute;
    end;
end;

end.

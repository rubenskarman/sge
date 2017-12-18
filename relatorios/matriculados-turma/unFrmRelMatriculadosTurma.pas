unit unFrmRelMatriculadosTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, DBCtrls, Grids, DBGrids, Buttons,
  Menus;

type
  TfrmRelMatriculadosTurma = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    tbSeries: TADOTable;
    tbSeriesid: TAutoIncField;
    tbSeriesnome: TWideStringField;
    tbSeriesvalorMensalidade: TBCDField;
    dsSeries: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    tbTurmas: TADOTable;
    dsTurmas: TDataSource;
    tbTurmasid: TAutoIncField;
    tbTurmasidSerie: TIntegerField;
    tbTurmasnome: TWideStringField;
    tbTurmasvagas: TWordField;
    tbTurmasturno: TWideStringField;
    DBGrid1: TDBGrid;
    tbMatriculas: TADOTable;
    tbMatriculasid: TAutoIncField;
    tbMatriculasidAnoLetivo: TIntegerField;
    tbMatriculasidTurma: TIntegerField;
    tbMatriculasidAluno: TIntegerField;
    tbMatriculasdataMatricula: TDateTimeField;
    dsMatriculas: TDataSource;
    tbAlunos: TADOTable;
    tbAlunosid: TAutoIncField;
    tbAlunosnome: TWideStringField;
    dsAlunos: TDataSource;
    tbMatriculasnomeAluno: TStringField;
    DBText1: TDBText;
    PopupMenu1: TPopupMenu;
    CancelarMatrculadestealuno1: TMenuItem;
    Label4: TLabel;
    tbMatriculasnomeAluno2: TStringField;
    sqlMatricula: TADOQuery;
    sqlMatriculamatriculaid: TAutoIncField;
    sqlMatriculaidAnoLetivo: TIntegerField;
    sqlMatriculaidTurma: TIntegerField;
    sqlMatriculaidAluno: TIntegerField;
    sqlMatriculadataMatricula: TDateTimeField;
    sqlMatriculaanoLetivoid: TAutoIncField;
    sqlMatriculaidEscola: TIntegerField;
    sqlMatriculaano: TWideStringField;
    sqlMatriculavigente: TBooleanField;
    sqlMatriculamediaAprovacao: TWideStringField;
    sqlMatriculanomeAluno: TStringField;
    sql: TADOCommand;
    btoImprimirAniversarios: TBitBtn;
    tbAlunosdataNascimento: TDateTimeField;
    sqlMatriculadataNasc: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure CancelarMatrculadestealuno1Click(Sender: TObject);
    procedure tbTurmasAfterScroll(DataSet: TDataSet);
    procedure btoImprimirAniversariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMatriculadosTurma: TfrmRelMatriculadosTurma;

implementation

{$R *.dfm}

uses unPrincipal, unRelAniversarios;

procedure TfrmRelMatriculadosTurma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmRelMatriculadosTurma.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmRelMatriculadosTurma.DBLookupComboBox2Click(Sender: TObject);
begin
  DBText1.Visible:= True;
end;

procedure TfrmRelMatriculadosTurma.CancelarMatrculadestealuno1Click(
  Sender: TObject);
begin
  if Application.MessageBox(PChar('Deseja realmente cancelar a matrícula de: '+sqlMatriculanomeAluno.AsString+' ?'+#13+'Todos os dados relacionados serão perdidos, tais como carnês, notas, avaliações, etc.'),'Confirmação',MB_ICONQUESTION+MB_YESNO) = idYes then
    begin
      if Application.MessageBox(PChar('Esta operação é irreversível.'+#13+'Todos os dados relacionados serão perdidos, tais como carnês, notas, avaliações, etc.!'),'Atenção',MB_ICONWARNING+MB_YESNO+MB_DEFBUTTON2) = idYes then
        begin
//          tbMatriculas.Delete;
          sql.CommandText:= '';
          sql.CommandText:='DELETE FROM matricula WHERE id='+sqlMatriculamatriculaid.AsString;
          sql.Execute();

          tbTurmas.Close;
          tbMatriculas.Close;
          tbTurmas.Open;
          tbMatriculas.Open;
        end;
    end;
end;

procedure TfrmRelMatriculadosTurma.tbTurmasAfterScroll(DataSet: TDataSet);
begin
  sqlMatricula.Close;
  sqlMatricula.SQL.Clear;
  sqlMatricula.SQL.Add('SELECT * FROM matricula INNER JOIN anoLetivo ON matricula.idAnoLetivo = anoLetivo.id WHERE anoLetivo.vigente = TRUE AND idTurma = '+tbTurmasid.AsString);
  sqlMatricula.Open;

  Label4.Caption:= 'TOTAL: '+IntToStr(sqlMatricula.RecordCount)+' alunos';
end;

procedure TfrmRelMatriculadosTurma.btoImprimirAniversariosClick(
  Sender: TObject);
begin
  Application.CreateForm(TrelAniversarios, relAniversarios);

  relAniversarios.lblSerie.Caption:= 'SÉRIE: '+tbSeriesnome.AsString;
  relAniversarios.lblTurma.Caption:= 'TURMA: '+tbTurmasnome.AsString;

  relAniversarios.Preview;
  relAniversarios.Free;
  relAniversarios:= nil;
end;

end.

unit unCadAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls, ComCtrls,
  Mask;

type
  TfrmCadAlunos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    tbAlunos: TADOTable;
    dsAlunos: TDataSource;
    DBNavigator1: TDBNavigator;
    txtBuscaAluno: TEdit;
    Label3: TLabel;
    PageControl1: TPageControl;
    tbAlunosid: TAutoIncField;
    tbAlunosnome: TWideStringField;
    tbAlunosendereco: TWideStringField;
    tbAlunoscomplemento: TWideStringField;
    tbAlunosbairro: TWideStringField;
    tbAlunoscidade: TWideStringField;
    tbAlunosuf: TWideStringField;
    tbAlunoscep: TWideStringField;
    tbAlunoscelular: TWideStringField;
    tbAlunosoperadora: TWideStringField;
    tbAlunosemail: TWideStringField;
    tbAlunosrg: TWideStringField;
    tbAlunoscpf: TWideStringField;
    tbAlunosdataNascimento: TDateTimeField;
    tbAlunossexo: TWideStringField;
    tbAlunoscor: TWideStringField;
    tbAlunosnaturalidade: TWideStringField;
    tbAlunosufNaturalidade: TWideStringField;
    tbAlunosnacionalidade: TWideStringField;
    tbAlunoscertidaoNasc: TWideStringField;
    tbAlunoslivroCertidaoNasc: TWideStringField;
    tbAlunosfolhaCertidaoNasc: TWideStringField;
    tbAlunosdataCertidaoNasc: TDateTimeField;
    tbAlunoscartorioCertidaoNasc: TWideStringField;
    tbAlunosnumeroCertidaoNasc: TWideStringField;
    tbAlunosalergico: TBooleanField;
    tbAlunosdescricaoAlergia: TMemoField;
    tbAlunosmedicacaoControlada: TBooleanField;
    tbAlunosdescricaoMedicacaoControlada: TMemoField;
    tbAlunosemergenciaLigarPara: TWideStringField;
    tbAlunosautrizadoSairCom: TWideStringField;
    tbAlunosensinoReligioso: TBooleanField;
    tbAlunosnomePai: TWideStringField;
    tbAlunosdataNascPai: TDateTimeField;
    tbAlunosescolaridadePai: TWideStringField;
    tbAlunosprofissaoPai: TWideStringField;
    tbAlunosrgPai: TWideStringField;
    tbAlunoscpfPai: TWideStringField;
    tbAlunosfonePai: TWideStringField;
    tbAlunoscelularPai: TWideStringField;
    tbAlunosoperadoraPai: TWideStringField;
    tbAlunosemailPai: TWideStringField;
    tbAlunosnomeMae: TWideStringField;
    tbAlunosdataNascMae: TDateTimeField;
    tbAlunosescolaridadeMae: TWideStringField;
    tbAlunosprofissaoMae: TWideStringField;
    tbAlunosrgMae: TWideStringField;
    tbAlunoscpfMae: TWideStringField;
    tbAlunosfoneMae: TWideStringField;
    tbAlunoscelularMae: TWideStringField;
    tbAlunosoperadoraMae: TWideStringField;
    tbAlunosemailMae: TWideStringField;
    tbAlunosnomeResp: TWideStringField;
    tbAlunosdataNascResp: TDateTimeField;
    tbAlunosescolaridadeResp: TWideStringField;
    tbAlunosprofissaoResp: TWideStringField;
    tbAlunosrgResp: TWideStringField;
    tbAlunoscpfResp: TWideStringField;
    tbAlunosfoneResp: TWideStringField;
    tbAlunoscelularResp: TWideStringField;
    tbAlunosoperadoraResp: TWideStringField;
    tbAlunosemailResp: TWideStringField;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label25: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox2: TDBCheckBox;
    DBMemo2: TDBMemo;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit24: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    Label29: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit27: TDBEdit;
    Label32: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    Label34: TLabel;
    DBEdit31: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit32: TDBEdit;
    Label37: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit37: TDBEdit;
    Label42: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    Label43: TLabel;
    DBEdit41: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit42: TDBEdit;
    Label46: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit47: TDBEdit;
    Label52: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label53: TLabel;
    DBEdit51: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit52: TDBEdit;
    Label56: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    Label57: TLabel;
    Label58: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Panel3: TPanel;
    sql: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbAlunosAfterInsert(DataSet: TDataSet);
    procedure txtBuscaAlunoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbAlunosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAlunos: TfrmCadAlunos;

implementation

{$R *.dfm}

uses unPrincipal;

procedure TfrmCadAlunos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmCadAlunos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmCadAlunos.tbAlunosAfterInsert(DataSet: TDataSet);
begin
  PageControl1.ActivePageIndex:= 0;
  DBEdit1.SetFocus;
end;

procedure TfrmCadAlunos.txtBuscaAlunoChange(Sender: TObject);
begin
  tbAlunos.Locate('nome',txtBuscaAluno.Text,[loPartialKey]);
end;

procedure TfrmCadAlunos.FormShow(Sender: TObject);
begin
  txtBuscaAluno.SetFocus;
end;

procedure TfrmCadAlunos.tbAlunosBeforeDelete(DataSet: TDataSet);
begin
{  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT aluno.id, anoLetivo.vigente FROM anoLetivo INNER JOIN (aluno INNER JOIN matricula ON aluno.id = matricula.idAluno) ON anoLetivo.id = matricula.idAnoLetivo');
  sql.SQL.Add('WHERE (((anoLetivo.vigente)=True));');
  sql.Open;

  if sql.RecordCount > 0 then
    begin
      Application.MessageBox('Existe uma matrícula vigente para este Aluno. Impossível Excluir. Cancele a matrícula primeiro!','Atenção',MB_ICONWARNING+MB_OK);
      Abort;
    end;
}
end;

end.

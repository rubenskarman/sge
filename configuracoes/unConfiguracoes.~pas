unit unConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Mask, DBCtrls, DB, ADODB,
  Grids, DBGrids, Menus;

type
  TfrmConfiguracoes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    tbEscola: TADOTable;
    dsEscola: TDataSource;
    tbEscolaid: TAutoIncField;
    tbEscolanome: TWideStringField;
    tbEscolarazaoSocial: TWideStringField;
    tbEscolacnpj: TWideStringField;
    tbEscolaendereco: TWideStringField;
    tbEscolabairro: TWideStringField;
    tbEscolacidade: TWideStringField;
    tbEscolacep: TWideStringField;
    tbEscolafone: TWideStringField;
    tbEscolaemail: TWideStringField;
    tbEscolasite: TWideStringField;
    TabSheet2: TTabSheet;
    tbAnoLetivo: TADOTable;
    tbAnoLetivoid: TAutoIncField;
    tbAnoLetivoidEscola: TIntegerField;
    tbAnoLetivoano: TWideStringField;
    tbAnoLetivomediaAprovacao: TWideStringField;
    dsAnoLetivo: TDataSource;
    DBGrid1: TDBGrid;
    cmd: TADOCommand;
    lblAnoVigente: TLabel;
    tbAnoLetivovigente: TBooleanField;
    sql: TADOQuery;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    PopupMenu1: TPopupMenu;
    Definircomoanovigente1: TMenuItem;
    DBGrid2: TDBGrid;
    Label13: TLabel;
    tbUnidades: TADOTable;
    Label14: TLabel;
    DBGrid3: TDBGrid;
    tbUnidadesid: TAutoIncField;
    tbUnidadesidAnoLetivo: TIntegerField;
    tbUnidadesnome: TWideStringField;
    dsUnidades: TDataSource;
    PopupMenu2: TPopupMenu;
    ExcluirUnidade1: TMenuItem;
    tbAvaliacoes: TADOTable;
    dsAvaliacoes: TDataSource;
    PopupMenu3: TPopupMenu;
    tbAvaliacoesid: TAutoIncField;
    tbAvaliacoesidUnidade: TIntegerField;
    tbAvaliacoesnome: TWideStringField;
    ExcluirAvaliao1: TMenuItem;
    TabSheet3: TTabSheet;
    txtDiaPagamentoMensalidade: TEdit;
    Label15: TLabel;
    TabSheet4: TTabSheet;
    Label16: TLabel;
    DBGrid4: TDBGrid;
    dsUsuario: TDataSource;
    tbUsuario: TADOTable;
    tbUsuarioid: TAutoIncField;
    tbUsuariousuario: TWideStringField;
    tbUsuariosenha: TWideStringField;
    tbUsuariotipo: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure tbAnoLetivoAfterScroll(DataSet: TDataSet);
    procedure Definircomoanovigente1Click(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExcluirUnidade1Click(Sender: TObject);
    procedure ExcluirAvaliao1Click(Sender: TObject);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet3Show(Sender: TObject);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation

{$R *.dfm}

uses unPrincipal;

procedure TfrmConfiguracoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmConfiguracoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmConfiguracoes.BitBtn1Click(Sender: TObject);
begin
  if tbEscola.State in [dsEdit, dsInsert] then
    tbEscola.Post;
    
  if tbAnoLetivo.State in [dsEdit, dsInsert] then
    tbAnoLetivo.Post;

  cmd.CommandText:= '';
  cmd.CommandText:= 'UPDATE configuracao SET valor = "'+txtDiaPagamentoMensalidade.Text+'" WHERE nome = "diaPagamento"';
  cmd.Execute;

  Application.MessageBox('Configurações salvas com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
end;

procedure TfrmConfiguracoes.TabSheet2Show(Sender: TObject);
begin
  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT * FROM anoLetivo WHERE vigente = true');
  sql.Open;

  if sql.RecordCount > 0 then
    begin
      lblAnoVigente.Caption:= 'Ano Vigente: '+sql.FieldByName('ano').AsString;
      tbAnoLetivo.Locate('id',sql.FieldByName('id').AsInteger,[loPartialKey]);

      Label12.Visible:= True;
      DBEdit11.Visible:= True;
    end;
end;

procedure TfrmConfiguracoes.tbAnoLetivoAfterScroll(DataSet: TDataSet);
begin
  if tbAnoLetivovigente.Value then
    begin
      Label12.Visible:= True;
      DBEdit11.Visible:= True;
    end
  else
    begin
      Label12.Visible:= False;
      DBEdit11.Visible:= False;
    end;
end;

procedure TfrmConfiguracoes.Definircomoanovigente1Click(Sender: TObject);
var
  id: Integer;
begin
  id:= tbAnoLetivoid.AsInteger;
  cmd.CommandText:= '';
  cmd.CommandText:= 'UPDATE anoLetivo SET vigente = false WHERE id <> '+tbAnoLetivoid.AsString;
  cmd.Execute;

  tbAnoLetivo.Edit;
  tbAnoLetivovigente.Value:= True;
  tbAnoLetivo.Post;

  tbAnoLetivo.Close;
  tbAnoLetivo.Open;
  tbAnoLetivo.Locate('id',id,[loPartialKey]);

  Label12.Visible:= True;
  DBEdit11.Visible:= True;

  lblAnoVigente.Caption:= 'Ano Vigente: '+tbAnoLetivoano.AsString;
end;

procedure TfrmConfiguracoes.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN:
      begin
        if tbUnidades.State in [dsEdit, dsInsert] then
          tbUnidades.Post;
      end;
  end;
end;

procedure TfrmConfiguracoes.ExcluirUnidade1Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Deseja realmente excluir a Unidade?'+#13+'Todos os dados de avaliações relacionadas serão perdidos.'),'Confirmação',MB_ICONQUESTION+MB_YESNO) = idYes then
    begin
      if Application.MessageBox(PChar('Esta operação é irreversível.'+#13+'Todos os dados de avaliações relacionadas à esta unidade serão perdidos!'),'Atenção',MB_ICONWARNING+MB_YESNO+MB_DEFBUTTON2) = idYes then
        begin
          tbUnidades.Delete;
          tbUnidades.Close;
          tbUnidades.Open;
        end;
    end;
end;

procedure TfrmConfiguracoes.ExcluirAvaliao1Click(Sender: TObject);
begin
  if Application.MessageBox(PChar('Deseja realmente excluir a Avaliação?'+#13+'Todos os dados de notas relacionadas serão perdidos.'),'Confirmação',MB_ICONQUESTION+MB_YESNO) = idYes then
    begin
      if Application.MessageBox(PChar('Esta operação é irreversível.'+#13+'Todos os dados de notas relacionadas à esta avaliação serão perdidos!'),'Atenção',MB_ICONWARNING+MB_YESNO+MB_DEFBUTTON2) = idYes then
        begin
          tbAvaliacoes.Delete;
          tbAvaliacoes.Close;
          tbAvaliacoes.Open;
        end;
    end;
end;

procedure TfrmConfiguracoes.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN:
      begin
        if tbAvaliacoes.State in [dsEdit, dsInsert] then
          tbAvaliacoes.Post;
      end;
  end;
end;

procedure TfrmConfiguracoes.TabSheet3Show(Sender: TObject);
begin
  sql.Close;
  sql.SQL.Clear;
  sql.SQL.Add('SELECT * FROM configuracao WHERE nome = "diaPagamento"');
  sql.Open;

  txtDiaPagamentoMensalidade.Text:= sql.FieldByName('valor').AsString;
end;

procedure TfrmConfiguracoes.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN:
      tbUsuario.Post;
  end;
end;

end.

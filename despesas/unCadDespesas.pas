unit unCadDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, Mask;

type
  TfrmCadDespesas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    tbDespesas: TADOTable;
    dsDespesas: TDataSource;
    tbDespesasid: TAutoIncField;
    tbDespesasidAnoLetivo: TIntegerField;
    tbDespesasdata: TDateTimeField;
    tbDespesashora: TWideStringField;
    tbDespesasvalor: TBCDField;
    tbDespesasdescricao: TWideStringField;
    tbDespesasidAluno: TWideStringField;
    tbDespesasnomeAluno: TWideStringField;
    tbDespesasturma: TWideStringField;
    tbDespesasserie: TWideStringField;
    tbDespesasmes: TWideStringField;
    tbDespesastipo: TWideStringField;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtBusca: TEdit;
    DBGrid1: TDBGrid;
    procedure txtBuscaChange(Sender: TObject);
    procedure tbDespesasBeforePost(DataSet: TDataSet);
    procedure tbDespesasAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadDespesas: TfrmCadDespesas;

implementation

{$R *.dfm}

procedure TfrmCadDespesas.txtBuscaChange(Sender: TObject);
begin
  tbDespesas.Locate('descricao',txtBusca.Text,[loPartialKey]);
end;

procedure TfrmCadDespesas.tbDespesasBeforePost(DataSet: TDataSet);
begin
  tbDespesashora.Value:= TimeToStr(Time);
  tbDespesasmes.Value:= '0';
  tbDespesastipo.Value:= 'D';
end;

procedure TfrmCadDespesas.tbDespesasAfterInsert(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

procedure TfrmCadDespesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmCadDespesas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

end.

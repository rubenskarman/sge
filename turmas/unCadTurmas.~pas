unit unCadTurmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TfrmCadTurmas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    tbTurmas: TADOTable;
    dsTurma: TDataSource;
    DBNavigator1: TDBNavigator;
    tbTurmasid: TAutoIncField;
    tbTurmasidSerie: TIntegerField;
    tbTurmasnome: TWideStringField;
    tbTurmasvagas: TWordField;
    tbTurmasturno: TWideStringField;
    tbSeries: TADOTable;
    tbSeriesid: TAutoIncField;
    tbSeriesnome: TWideStringField;
    tbSeriesvalorMensalidade: TBCDField;
    dsSeries: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    tbTurmasnomeSerie: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbTurmasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTurmas: TfrmCadTurmas;

implementation

{$R *.dfm}

uses unPrincipal;

procedure TfrmCadTurmas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmCadTurmas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmCadTurmas.tbTurmasAfterInsert(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

end.

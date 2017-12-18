unit unCadDisciplinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TfrmCadDisciplinas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    tbDisciplinas: TADOTable;
    dsDisciplinas: TDataSource;
    tbDisciplinasid: TAutoIncField;
    tbDisciplinasnome: TWideStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbDisciplinasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadDisciplinas: TfrmCadDisciplinas;

implementation

{$R *.dfm}

procedure TfrmCadDisciplinas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmCadDisciplinas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmCadDisciplinas.tbDisciplinasAfterInsert(DataSet: TDataSet);
begin
  DBEdit1.SetFocus;
end;

end.

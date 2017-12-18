unit unCadSeries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, Mask, DB, ADODB;

type
  TfrmCadSeries = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    tbSeries: TADOTable;
    dsSerie: TDataSource;
    tbSeriesid: TAutoIncField;
    tbSeriesnome: TWideStringField;
    tbSeriesvalorMensalidade: TBCDField;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure tbSeriesAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSeries: TfrmCadSeries;

implementation

{$R *.dfm}

uses unPrincipal;

procedure TfrmCadSeries.tbSeriesAfterInsert(DataSet: TDataSet);
begin
  //DBEdit1.SetFocus;
end;

procedure TfrmCadSeries.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmCadSeries.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

end.

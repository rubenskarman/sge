unit unVincularDisciplinasSeries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  Menus;

type
  TfrmVincularDisciplinaSerie = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    tbSeries: TADOTable;
    tbDisciplinasSeries: TADOTable;
    tbDisciplinas: TADOTable;
    dsSeries: TDataSource;
    dsDisciplinasSeries: TDataSource;
    dsDisciplinas: TDataSource;
    tbSeriesid: TAutoIncField;
    tbSeriesnome: TWideStringField;
    tbSeriesvalorMensalidade: TBCDField;
    tbDisciplinasSeriesid: TAutoIncField;
    tbDisciplinasSeriesidDisciplina: TIntegerField;
    tbDisciplinasSeriesidSerie: TIntegerField;
    tbDisciplinasid: TAutoIncField;
    tbDisciplinasnome: TWideStringField;
    tbDisciplinasSeriesnomeDisciplina: TStringField;
    PopupMenu1: TPopupMenu;
    Desvincularestadisciplina1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Desvincularestadisciplina1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVincularDisciplinaSerie: TfrmVincularDisciplinaSerie;

implementation

{$R *.dfm}

uses unPrincipal;

procedure TfrmVincularDisciplinaSerie.BitBtn1Click(Sender: TObject);
begin
  tbDisciplinasSeries.Append;
  tbDisciplinasSeriesidDisciplina.Value:= tbDisciplinasid.Value;
  tbDisciplinasSeriesidSerie.Value:= tbSeriesid.Value;
  tbDisciplinasSeries.Post;

  tbDisciplinasSeries.Close;
  tbDisciplinasSeries.Open;
end;

procedure TfrmVincularDisciplinaSerie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmVincularDisciplinaSerie.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      begin
        Close;
      end;
  end;
end;

procedure TfrmVincularDisciplinaSerie.Desvincularestadisciplina1Click(
  Sender: TObject);
begin
  tbDisciplinasSeries.Delete;
  tbDisciplinasSeries.Close;
  tbDisciplinasSeries.Open;
end;

end.

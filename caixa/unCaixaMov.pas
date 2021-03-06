unit unCaixaMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids, DB, ADODB, Buttons;

type
  TfrmCaixaMov = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    txtDataInicial: TDateTimePicker;
    txtDataFinal: TDateTimePicker;
    Label2: TLabel;
    opcTipo: TRadioGroup;
    sqlCaixa: TADOQuery;
    DSsqlCaixa: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    sqlCaixaid: TAutoIncField;
    sqlCaixaidAnoLetivo: TIntegerField;
    sqlCaixadata: TDateTimeField;
    sqlCaixahora: TWideStringField;
    sqlCaixavalor: TBCDField;
    sqlCaixadescricao: TWideStringField;
    sqlCaixaidAluno: TWideStringField;
    sqlCaixanomeAluno: TWideStringField;
    sqlCaixaturma: TWideStringField;
    sqlCaixaserie: TWideStringField;
    sqlCaixames: TWideStringField;
    sqlCaixatipo: TWideStringField;
    btoListar: TBitBtn;
    Label3: TLabel;
    lblTotalEntrada: TLabel;
    Label5: TLabel;
    lblTotalSaida: TLabel;
    lblSaldo: TLabel;
    Label6: TLabel;
    sqlCaixamesExtenso: TStringField;
    sqlTotais: TADOQuery;
    sqlCaixavalorVariado: TCurrencyField;
    procedure btoListarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sqlCaixaCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
      procedure CalcularTotais;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixaMov: TfrmCaixaMov;

implementation

{$R *.dfm}

uses unPrincipal, unRelCaixaMov;

procedure TfrmCaixaMov.btoListarClick(Sender: TObject);
var
  dia1, mes1, ano1, dia2, mes2, ano2: Word;
begin
if opcTipo.ItemIndex = -1 then
  begin
    ShowMessage('Preencha a data e escolha o tipo de movimento!');
    Abort;
  end
else
  begin
    DecodeDate(txtDataInicial.Date, ano1, mes1, dia1);
    DecodeDate(txtDataFinal.Date, ano2, mes2, dia2);

    sqlCaixa.Close;
    sqlCaixa.SQL.Clear;

    if opcTipo.ItemIndex = 0 then
      sqlCaixa.SQL.Add('SELECT * FROM caixa WHERE (tipo="C") AND (data BETWEEN #'+IntToStr(mes1)+'/'+IntToStr(dia1)+'/'+IntToStr(ano1)+'# AND #'+IntToStr(mes2)+'/'+IntToStr(dia2)+'/'+IntToStr(ano2)+'#) ORDER BY data DESC, hora DESC');

    if opcTipo.ItemIndex = 1 then
      sqlCaixa.SQL.Add('SELECT * FROM caixa WHERE (tipo="D") AND (data BETWEEN #'+IntToStr(mes1)+'/'+IntToStr(dia1)+'/'+IntToStr(ano1)+'# AND #'+IntToStr(mes2)+'/'+IntToStr(dia2)+'/'+IntToStr(ano2)+'#) ORDER BY data DESC, hora DESC');

    if opcTipo.ItemIndex = 2 then
      sqlCaixa.SQL.Add('SELECT * FROM caixa WHERE (data BETWEEN #'+IntToStr(mes1)+'/'+IntToStr(dia1)+'/'+IntToStr(ano1)+'# AND #'+IntToStr(mes2)+'/'+IntToStr(mes2)+'/'+IntToStr(dia2)+'#) ORDER BY data DESC, hora DESC');

    sqlCaixa.Open;

    DBGrid1.SetFocus;

    CalcularTotais;
  end;
end;

procedure TfrmCaixaMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TfrmCaixaMov.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TfrmCaixaMov.sqlCaixaCalcFields(DataSet: TDataSet);
begin
  case StrToInt(sqlCaixames.Value) of
      1: sqlCaixamesExtenso.Value:= 'JANEIRO';
      2: sqlCaixamesExtenso.Value:= 'FEVEREIRO';
      3: sqlCaixamesExtenso.Value:= 'MAR�O';
      4: sqlCaixamesExtenso.Value:= 'ABRIL';
      5: sqlCaixamesExtenso.Value:= 'MAIO';
      6: sqlCaixamesExtenso.Value:= 'JUNHO';
      7: sqlCaixamesExtenso.Value:= 'JULHO';
      8: sqlCaixamesExtenso.Value:= 'AGOSTO';
      9: sqlCaixamesExtenso.Value:= 'SETEMBRO';
      10: sqlCaixamesExtenso.Value:= 'OUTUBRO';
      11: sqlCaixamesExtenso.Value:= 'NOVEMBRO';
      12: sqlCaixamesExtenso.Value:= 'DEZEMBRO';
    end;

  if sqlCaixatipo.Value = 'D' then
    sqlCaixavalorVariado.Value:= sqlCaixavalor.Value * -1
  else
    sqlCaixavalorVariado.Value:= sqlCaixavalor.Value;
end;

procedure TfrmCaixaMov.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (sqlCaixatipo.Value = 'C') then
    DBGrid1.Canvas.Brush.Color:= $00CEFFC6
  else
    DBGrid1.Canvas.Brush.Color:= $00D5D5FF;

  TDbGrid(Sender).Canvas.font.Color:= clBlack;
    if gdSelected in State then
      with (Sender as TDBGrid).Canvas do
        begin
          Brush.Color := $00FF8000;
          Font.Color:= clWhite;
          FillRect(Rect);
          Font.Style := [fsbold]
        end;
  
  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TfrmCaixaMov.CalcularTotais;
var
  entradas, saidas, saldo: Real;
  dia1, mes1, ano1, dia2, mes2, ano2: Word;
begin
  DecodeDate(txtDataInicial.Date, ano1, mes1, dia1);
  DecodeDate(txtDataFinal.Date, ano2, mes2, dia2);

  sqlTotais.Close;
  sqlTotais.SQL.Clear;
  sqlTotais.SQL.Add('SELECT SUM(valor) AS totalEntradas FROM caixa WHERE (tipo="C") AND (data BETWEEN #'+IntToStr(mes1)+'/'+IntToStr(dia1)+'/'+IntToStr(ano1)+'# AND #'+IntToStr(mes2)+'/'+IntToStr(dia2)+'/'+IntToStr(ano2)+'#)');
  sqlTotais.Open;

  entradas:= sqlTotais.FieldByName('totalEntradas').AsFloat;

  sqlTotais.Close;
  sqlTotais.SQL.Clear;
  sqlTotais.SQL.Add('SELECT SUM(valor) AS totalSaidas FROM caixa WHERE (tipo="D") AND (data BETWEEN #'+IntToStr(mes1)+'/'+IntToStr(dia1)+'/'+IntToStr(ano1)+'# AND #'+IntToStr(mes2)+'/'+IntToStr(dia2)+'/'+IntToStr(ano2)+'#)');
  sqlTotais.Open;

  saidas:= sqlTotais.FieldByName('totalSaidas').AsFloat;

  saldo:= entradas - saidas;

  lblTotalEntrada.Caption:= FormatFloat('R$ ###,##0.00',entradas);
  lblTotalSaida.Caption:= '-'+FormatFloat('R$ ###,##0.00',saidas);
  lblSaldo.Caption:= FormatFloat('R$ ###,##0.00',saldo);
end;

procedure TfrmCaixaMov.BitBtn1Click(Sender: TObject);
begin
    Application.CreateForm(TrelCaixaMov, relCaixaMov);

    relCaixaMov.lblData1.Caption:= DateToStr(txtDataInicial.Date);
    relCaixaMov.lblData2.Caption:= DateToStr(txtDataFinal.Date);

    relCaixaMov.lblEntradas.Caption:= lblTotalEntrada.Caption;
    relCaixaMov.lblSaidas.Caption:= lblTotalSaida.Caption;
    relCaixaMov.lblSaldo.Caption:= lblSaldo.Caption;

    relCaixaMov.sqlCaixa.Close;
    relCaixaMov.sqlCaixa.SQL.Clear;
    relCaixaMov.sqlCaixa.SQL.Add(sqlCaixa.SQL.Text);
    relCaixaMov.sqlCaixa.Open;

    relCaixaMov.Preview;
    relCaixaMov.Free;
    relCaixaMov:= nil;
end;

procedure TfrmCaixaMov.FormShow(Sender: TObject);
begin
  txtDataInicial.Date:= Date;
  txtDataFinal.Date:= Date;
end;

end.

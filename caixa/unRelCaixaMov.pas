unit unRelCaixaMov;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg, DB, ADODB;

type
  TrelCaixaMov = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    lblData1: TQRLabel;
    QRLabel3: TQRLabel;
    lblData2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    lblEntradas: TQRLabel;
    QRLabel7: TQRLabel;
    lblSaidas: TQRLabel;
    QRLabel9: TQRLabel;
    lblSaldo: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText5: TQRDBText;
    sqlCaixa: TADOQuery;
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
    sqlCaixamesExtenso: TStringField;
    sqlCaixavalorVariado: TCurrencyField;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sqlCaixaCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  relCaixaMov: TrelCaixaMov;

implementation

{$R *.DFM}

uses unCaixaMov, unPrincipal;

procedure TrelCaixaMov.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if sqlCaixavalorVariado.Value < 0 then
    QRDBText3.Font.Color:= clRed
  else
    QRDBText3.Font.Color:= clBlack;
end;

procedure TrelCaixaMov.sqlCaixaCalcFields(DataSet: TDataSet);
begin
  case StrToInt(sqlCaixames.Value) of
      1: sqlCaixamesExtenso.Value:= 'JANEIRO';
      2: sqlCaixamesExtenso.Value:= 'FEVEREIRO';
      3: sqlCaixamesExtenso.Value:= 'MARÇO';
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

end.

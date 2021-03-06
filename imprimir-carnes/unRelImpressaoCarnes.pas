unit unRelImpressaoCarnes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, jpeg,
  CJVQRBarCode;

type
  TrelImpressaoCarnes = class(TQuickRep)
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    sqlMaster: TADOQuery;
    sqlMasteralunonome: TWideStringField;
    sqlMasterserienome: TWideStringField;
    sqlMasterturmanome: TWideStringField;
    sqlMasterturno: TWideStringField;
    sqlMastermes: TWordField;
    sqlMastervalor: TBCDField;
    sqlMasterano: TWideStringField;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    barcode: TCJVQRBarCode;
    sqlMasterturmaid: TAutoIncField;
    sqlMastercarneMensalidadeid: TAutoIncField;
    sqlMasterdiaPagamento: TDateTimeField;
    QRLabel19: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  relImpressaoCarnes: TrelImpressaoCarnes;

implementation

{$R *.DFM}

procedure TrelImpressaoCarnes.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  mesExtenso: String;
begin
  case sqlMastermes.AsInteger of
    2: mesExtenso:= 'Fevereiro';
    3: mesExtenso:= 'Mar�o';
    4: mesExtenso:= 'Abril';
    5: mesExtenso:= 'Maio';
    6: mesExtenso:= 'Junho';
    7: mesExtenso:= 'Julho';
    8: mesExtenso:= 'Agosto';
    9: mesExtenso:= 'Setembro';
    10: mesExtenso:= 'Outubro';
    11: mesExtenso:= 'Novembro';
    12: mesExtenso:= 'Dezembro';
  end;

  QRLabel9.Caption:= mesExtenso + ' de ' + sqlMasterano.AsString;
  QRLabel18.Caption:= mesExtenso + ' de ' + sqlMasterano.AsString;

  QRLabel8.Caption:= sqlMasterdiaPagamento.AsString+'/'+sqlMastermes.AsString+'/'+sqlMasterano.AsString;
  QRLabel17.Caption:= sqlMasterdiaPagamento.AsString+'/'+sqlMastermes.AsString+'/'+sqlMasterano.AsString;

  barcode.Texto:= '789123'+sqlMastercarneMensalidadeid.AsString;
end;

end.

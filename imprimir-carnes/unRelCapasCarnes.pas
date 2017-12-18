unit unRelCapasCarnes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, jpeg;

type
  TrelCapasCarnes = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage2: TQRImage;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    sqlMaster: TADOQuery;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape2: TQRShape;
    QRImage1: TQRImage;
    sqlMasterano: TWideStringField;
    sqlMastervigente: TBooleanField;
    sqlMasterturno: TWideStringField;
    sqlMasterserienome: TWideStringField;
    sqlMasteralunonome: TWideStringField;
    sqlMasterendereco: TWideStringField;
    sqlMasterbairro: TWideStringField;
    sqlMastercidade: TWideStringField;
    sqlMasterid: TAutoIncField;
  private

  public

  end;

var
  relCapasCarnes: TrelCapasCarnes;

implementation

{$R *.DFM}

end.

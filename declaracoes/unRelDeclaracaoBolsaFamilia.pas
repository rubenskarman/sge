unit unRelDeclaracaoBolsaFamilia;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TrelDeclaracaoBolsaFamilia = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    lblData: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRRichText1: TQRRichText;
  private

  public

  end;

var
  relDeclaracaoBolsaFamilia: TrelDeclaracaoBolsaFamilia;

implementation

{$R *.DFM}

uses unGerarDeclaracao;

end.

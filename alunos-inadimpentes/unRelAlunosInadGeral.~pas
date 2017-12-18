unit unRelAlunosInadGeral;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg, DB, ADODB;

type
  TrelAlunosInadGeral = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    headerSerie: TQRGroup;
    headerTurma: TQRGroup;
    headerAluno: TQRGroup;
    sqlMaster: TADOQuery;
    sqlMasterano: TWideStringField;
    sqlMasteralunonome: TWideStringField;
    sqlMasterserienome: TWideStringField;
    sqlMasterturmanome: TWideStringField;
    sqlMastermes: TWordField;
    sqlMasterpago: TBooleanField;
    sqlMastervalor: TBCDField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    sqlMastermesExtenso: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    lbTotalSerie: TQRLabel;
    sqlTotal: TADOQuery;
    QRLabel7: TQRLabel;
    lbTotalTurma: TQRLabel;
    sqlMasterserieid: TAutoIncField;
    sqlMasterturmaid: TAutoIncField;
    sqlMasteralunoid: TAutoIncField;
    lbTotalAluno: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    lbTotalGeral: TQRLabel;
    sqlMasterdiaPagamento: TDateTimeField;
    procedure sqlMasterCalcFields(DataSet: TDataSet);
    procedure headerSerieBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure headerTurmaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure headerAlunoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  relAlunosInadGeral: TrelAlunosInadGeral;

implementation

{$R *.DFM}

uses unPrincipal;

procedure TrelAlunosInadGeral.sqlMasterCalcFields(DataSet: TDataSet);
begin
  case sqlMastermes.Value of
      1: sqlMastermesExtenso.Value:= 'JANEIRO';
      2: sqlMastermesExtenso.Value:= 'FEVEREIRO';
      3: sqlMastermesExtenso.Value:= 'MARÇO';
      4: sqlMastermesExtenso.Value:= 'ABRIL';
      5: sqlMastermesExtenso.Value:= 'MAIO';
      6: sqlMastermesExtenso.Value:= 'JUNHO';
      7: sqlMastermesExtenso.Value:= 'JULHO';
      8: sqlMastermesExtenso.Value:= 'AGOSTO';
      9: sqlMastermesExtenso.Value:= 'SETEMBRO';
      10: sqlMastermesExtenso.Value:= 'OUTUBRO';
      11: sqlMastermesExtenso.Value:= 'NOVEMBRO';
      12: sqlMastermesExtenso.Value:= 'DEZEMBRO';
  end;
end;

procedure TrelAlunosInadGeral.headerSerieBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  sqlTotal.Close;
  sqlTotal.SQL.Clear;
  sqlTotal.SQL.Add('SELECT SUM(carneMensalidade.valor) AS totalSerie FROM ((serie INNER JOIN (turma INNER JOIN (aluno INNER JOIN (anoLetivo INNER JOIN matricula ON anoLetivo.id = matricula.idAnoLetivo) ON aluno.id = matricula.idAluno) ');
  sqlTotal.SQL.Add(' ON turma.id = matricula.idTurma) ON serie.id = turma.idSerie) INNER JOIN carne ON matricula.id = carne.idMatricula) INNER JOIN carneMensalidade ON carne.id = carneMensalidade.idCarne ');
  //sqlTotal.SQL.Add(' WHERE ((serie.id = '+sqlMasterserieid.ASString+') AND ((anoLetivo.vigente)=True) AND ((carneMensalidade.pago)=False) AND (Day(Date())>[carneMensalidade].[diaPagamento]));');
  sqlTotal.SQL.Add(' WHERE ((serie.id = '+sqlMasterserieid.ASString+') AND ((carneMensalidade.pago)=False) AND ((anoLetivo.vigente)=True) AND (Date()>[carneMensalidade].[diaPagamento]) ) ');
  sqlTotal.Open;

  lbTotalSerie.Caption:= FormatFloat('R$ ###,##0.00',sqlTotal.FieldByName('totalSerie').Asfloat);
end;

procedure TrelAlunosInadGeral.headerTurmaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  sqlTotal.Close;
  sqlTotal.SQL.Clear;
  sqlTotal.SQL.Add('SELECT SUM(carneMensalidade.valor) AS totalTurma FROM ((serie INNER JOIN (turma INNER JOIN (aluno INNER JOIN (anoLetivo INNER JOIN matricula ON anoLetivo.id = matricula.idAnoLetivo) ON aluno.id = matricula.idAluno) ');
  sqlTotal.SQL.Add(' ON turma.id = matricula.idTurma) ON serie.id = turma.idSerie) INNER JOIN carne ON matricula.id = carne.idMatricula) INNER JOIN carneMensalidade ON carne.id = carneMensalidade.idCarne ');
  //sqlTotal.SQL.Add(' WHERE ((turma.id = '+sqlMasterturmaid.ASString+') AND ((anoLetivo.vigente)=True) AND ((carneMensalidade.pago)=False) AND (Day(Date())>[carneMensalidade].[diaPagamento]));');
  sqlTotal.SQL.Add(' WHERE ((turma.id = '+sqlMasterturmaid.ASString+')  AND ((carneMensalidade.pago)=False) AND ((anoLetivo.vigente)=True) AND (Date()>[carneMensalidade].[diaPagamento]) ) ');
  sqlTotal.Open;

  lbTotalTurma.Caption:= FormatFloat('R$ ###,##0.00',sqlTotal.FieldByName('totalTurma').Asfloat);
end;

procedure TrelAlunosInadGeral.headerAlunoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  sqlTotal.Close;
  sqlTotal.SQL.Clear;
  sqlTotal.SQL.Add('SELECT SUM(carneMensalidade.valor) AS totalAluno FROM ((serie INNER JOIN (turma INNER JOIN (aluno INNER JOIN (anoLetivo INNER JOIN matricula ON anoLetivo.id = matricula.idAnoLetivo) ON aluno.id = matricula.idAluno) ');
  sqlTotal.SQL.Add(' ON turma.id = matricula.idTurma) ON serie.id = turma.idSerie) INNER JOIN carne ON matricula.id = carne.idMatricula) INNER JOIN carneMensalidade ON carne.id = carneMensalidade.idCarne ');
  //sqlTotal.SQL.Add(' WHERE ((aluno.id = '+sqlMasteralunoid.ASString+') AND ((anoLetivo.vigente)=True) AND ((carneMensalidade.pago)=False) AND (Day(Date())>[carneMensalidade].[diaPagamento]));');
  sqlTotal.SQL.Add(' WHERE ((aluno.id = '+sqlMasteralunoid.ASString+')  AND ((carneMensalidade.pago)=False) AND ((anoLetivo.vigente)=True) AND (Date()>[carneMensalidade].[diaPagamento]) ) ');
  sqlTotal.Open;

  lbTotalAluno.Caption:= FormatFloat('R$ ###,##0.00',sqlTotal.FieldByName('totalAluno').Asfloat);
end;

procedure TrelAlunosInadGeral.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  sqlTotal.Close;
  sqlTotal.SQL.Clear;
  sqlTotal.SQL.Add('SELECT SUM(carneMensalidade.valor) AS totalGeral FROM ((serie INNER JOIN (turma INNER JOIN (aluno INNER JOIN (anoLetivo INNER JOIN matricula ON anoLetivo.id = matricula.idAnoLetivo) ON aluno.id = matricula.idAluno) ');
  sqlTotal.SQL.Add(' ON turma.id = matricula.idTurma) ON serie.id = turma.idSerie) INNER JOIN carne ON matricula.id = carne.idMatricula) INNER JOIN carneMensalidade ON carne.id = carneMensalidade.idCarne ');
  //sqlTotal.SQL.Add(' WHERE (((anoLetivo.vigente)=True) AND ((carneMensalidade.pago)=False) AND (Day(Date())>[carneMensalidade].[diaPagamento]));');
  sqlTotal.SQL.Add(' WHERE (((carneMensalidade.pago)=False) AND ((anoLetivo.vigente)=True) AND ( Date()>[carneMensalidade].[diaPagamento] ))');
  sqlTotal.Open;

  lbTotalGeral.Caption:= FormatFloat('R$ ###,##0.00',sqlTotal.FieldByName('totalGeral').Asfloat);
end;

end.

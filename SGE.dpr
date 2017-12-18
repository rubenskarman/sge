program SGE;

uses
  Forms,
  unPrincipal in 'principal\unPrincipal.pas' {frmPrincipal},
  unCadSeries in 'series\unCadSeries.pas' {frmCadSeries},
  unCadTurmas in 'turmas\unCadTurmas.pas' {frmCadTurmas},
  unCadDisciplinas in 'disciplinas\unCadDisciplinas.pas' {frmCadDisciplinas},
  unCadAlunos in 'alunos\unCadAlunos.pas' {frmCadAlunos},
  unConfiguracoes in 'configuracoes\unConfiguracoes.pas' {frmConfiguracoes},
  unVincularDisciplinasSeries in 'disciplinas-series\unVincularDisciplinasSeries.pas' {frmVincularDisciplinaSerie},
  unMatriculas in 'matriculas\unMatriculas.pas' {frmMatricula},
  unFrmRelMatriculadosTurma in 'relatorios\matriculados-turma\unFrmRelMatriculadosTurma.pas' {frmRelMatriculadosTurma},
  unImprimirCarnes in 'imprimir-carnes\unImprimirCarnes.pas' {frmImprimirCarnes},
  unRelImpressaoCarnes in 'imprimir-carnes\unRelImpressaoCarnes.pas' {relImpressaoCarnes: TQuickRep},
  unReceberMensalidade in 'receber-mensalidade\unReceberMensalidade.pas' {frmReceberMensalidade},
  unAutenticacao in 'autenticacao\unAutenticacao.pas' {frmAutenticacao},
  unRelCapasCarnes in 'imprimir-carnes\unRelCapasCarnes.pas' {relCapasCarnes: TQuickRep},
  unConfirmarPagamento in 'receber-mensalidade\unConfirmarPagamento.pas' {frmConfirmarPagamento},
  unGerarDeclaracao in 'declaracoes\unGerarDeclaracao.pas' {frmGerarDeclaracao},
  unRelDeclaracaoBolsaFamilia in 'declaracoes\unRelDeclaracaoBolsaFamilia.pas' {relDeclaracaoBolsaFamilia: TQuickRep},
  unRelTransferenciaSimples in 'declaracoes\unRelTransferenciaSimples.pas' {relDeclaracaoTransferenciaSimples: TQuickRep},
  unCaixaMov in 'caixa\unCaixaMov.pas' {frmCaixaMov},
  unRelCaixaMov in 'caixa\unRelCaixaMov.pas' {relCaixaMov: TQuickRep},
  unConsAlunosInadimplentes in 'alunos-inadimpentes\unConsAlunosInadimplentes.pas' {frmConsAlunosInadimplentes},
  unRelAlunosInadGeral in 'alunos-inadimpentes\unRelAlunosInadGeral.pas' {relAlunosInadGeral: TQuickRep},
  unCadDespesas in 'despesas\unCadDespesas.pas' {frmCadDespesas},
  unRelAniversarios in 'relatorios\aniversarios\unRelAniversarios.pas' {relAniversarios: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

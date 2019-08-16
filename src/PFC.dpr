program PFC;

uses
  Forms,
  Dialogs,
  SysUtils,
  UntDtMdlConexao in 'UntDtMdlConexao.pas' {DtMdlConexao: TDataModule},
  UntDtMdlAncestral in 'UntDtMdlAncestral.pas' {DtMdlAncestral: TDataModule},
  UntDtMdlAncestralCadastro in 'UntDtMdlAncestralCadastro.pas' {DtMdlAncestralCadastro: TDataModule},
  UntDtMdlCadastroAssociacaoRayleigh in 'UntDtMdlCadastroAssociacaoRayleigh.pas' {DtMdlCadastroAssociacaoRayleigh: TDataModule},
  UntDtMdlCadastroAtributosPF in 'UntDtMdlCadastroAtributosPF.pas' {DtMdlCadastroAtributosPF: TDataModule},
  UntDtMdlCadastroCaracteristicasCOCOMO in 'UntDtMdlCadastroCaracteristicasCOCOMO.pas' {DtMdlCadastroCaracteristicasCOCOMO: TDataModule},
  UntDtMdlCadastroCaracteristicasPF in 'UntDtMdlCadastroCaracteristicasPF.pas' {DtMdlCadastroCaracteristicasPF: TDataModule},
  UntDtMdlCadastroComplexidadesPF in 'UntDtMdlCadastroComplexidadesPF.pas' {DtMdlCadastroComplexidadesPF: TDataModule},
  UntDtMdlCadastroEscalaCaracteristicaCOCOMO in 'UntDtMdlCadastroEscalaCaracteristicaCOCOMO.pas' {DtMdlCadastroEscalaCaracteristicaCOCOMO: TDataModule},
  UntDtMdlCadastroEscalasCOCOMO in 'UntDtMdlCadastroEscalasCOCOMO.pas' {DtMdlCadastroEscalasCOCOMO: TDataModule},
  UntDtMdlCadastroEsforco in 'UntDtMdlCadastroEsforco.pas' {DtMdlCadastroEsforco: TDataModule},
  UntDtMdlCadastroFase in 'UntDtMdlCadastroFase.pas' {DtMdlCadastroFase: TDataModule},
  UntDtMdlCadastroLinguagem in 'UntDtMdlCadastroLinguagem.pas' {DtMdlCadastroLinguagem: TDataModule},
  UntDtMdlCadastroModelosCOCOMO in 'UntDtMdlCadastroModelosCOCOMO.pas' {DtMdlCadastrosModeloCOCOMO: TDataModule},
  UntDtMdlCadastroNivelInfluenciaPF in 'UntDtMdlCadastroNivelInfluenciaPF.pas' {DtMdlCadastroNivelInfluenciaPF: TDataModule},
  UntDtMdlCadastroTamanho in 'UntDtMdlCadastroTamanho.pas' {DtMdlCadastroTamanho: TDataModule},
  UntDtMdlCadastroTipoDistribuicao in 'UntDtMdlCadastroTipoDistribuicao.pas' {DtMdlCadastroTipoDistribuicao: TDataModule},
  UntDtMdlCadastroTiposFundamentaisCOCOMO in 'UntDtMdlCadastroTiposFundamentaisCOCOMO.pas' {DtMdlCadastroTiposFundamentaisCOCOMO: TDataModule},
  UntFrmAncestral in 'UntFrmAncestral.pas' {FrmAncestral},
  UntFrmAncestralCadastro in 'UntFrmAncestralCadastro.pas' {FrmAncestralCadastro},
  UntFrmCadastroAssociacaoRayleigh in 'UntFrmCadastroAssociacaoRayleigh.pas' {FrmCadastroAssociacaoRayleigh},
  UntFrmCadastroAtributosPF in 'UntFrmCadastroAtributosPF.pas' {FrmCadastroAtributosPF},
  UntFrmCadastroCaracteristicasCOCOMO in 'UntFrmCadastroCaracteristicasCOCOMO.pas' {FrmCadastroCaracteristicasCOCOMO},
  UntFrmCadastroCaracteristicasPF in 'UntFrmCadastroCaracteristicasPF.pas' {FrmCadastroCaracteristicasPF},
  UntFrmCadastroComplexidadesPF in 'UntFrmCadastroComplexidadesPF.pas' {FrmCadastroComplexidadesPF},
  UntFrmCadastroEscalasCOCOMO in 'UntFrmCadastroEscalasCOCOMO.pas' {FrmCadastroEscalasCOCOMO},
  UntFrmCadastroEscalaCaracteristicaCOCOMO in 'UntFrmCadastroEscalaCaracteristicaCOCOMO.pas' {FrmCadastroEscalaCaracteristicaCOCOMO},
  UntFrmCadastroEsforco in 'UntFrmCadastroEsforco.pas' {FrmCadastroEsforco},
  UntFrmCadastroFase in 'UntFrmCadastroFase.pas' {FrmCadastroFase},
  UntFrmCadastroLinguagem in 'UntFrmCadastroLinguagem.pas' {FrmCadastroLinguagem},
  UntFrmCadastroModelosCOCOMO in 'UntFrmCadastroModelosCOCOMO.pas' {FrmCadastrosModelosCOCOMO},
  UntFrmCadastroNivelInfluenciaPF in 'UntFrmCadastroNivelInfluenciaPF.pas' {FrmCadastroNivelInfluenciaPF},
  UntFrmCadastroTamanho in 'UntFrmCadastroTamanho.pas' {FrmCadastroTamanho},
  UntFrmCadastroTipoDistribuicao in 'UntFrmCadastroTipoDistribuicao.pas' {FrmCadastroTipoDistribuicao},
  UntFrmCadastroTiposFundamentaisCOCOMO in 'UntFrmCadastroTiposFundamentaisCOCOMO.pas' {FrmCadastroTiposFundamentaisCOCOMO},
  UntFrmPrincipal in 'UntFrmPrincipal.pas' {FrmPrincipal},
  UntDtMdlSequencial in 'UntDtMdlSequencial.pas' {DtMdlSequencial: TDataModule},
  UntFrmCadastroProjeto in 'UntFrmCadastroProjeto.pas' {FrmCadastroProjeto},
  UntDtMdlCadastroProjeto in 'UntDtMdlCadastroProjeto.pas' {DtMdlCadastroProjeto: TDataModule},
  UntDtMdlAncestralCalculo in 'UntDtMdlAncestralCalculo.pas' {DtMdlAncestralCalculo: TDataModule},
  UntDtMdlCalculoComplexidade in 'UntDtMdlCalculoComplexidade.pas' {DtMdlCalculoComplexidade: TDataModule},
  UntDtMdlCalculoPontosFuncao in 'UntDtMdlCalculoPontosFuncao.pas' {DtMdlCalculoPontosFuncao: TDataModule},
  UntFrmCalculo in 'UntFrmCalculo.pas' {FrmCalculo},
  UntDtMdlCalculoCOCOMO in 'UntDtMdlCalculoCOCOMO.pas' {DtMdlCalculoCOCOMO: TDataModule},
  UntDtMdlCalculoDistribuicao in 'UntDtMdlCalculoDistribuicao.pas' {DtMdlCalculoDistribuicao: TDataModule},
  UntDtMdlCalculo in 'UntDtMdlCalculo.pas' {DtMdlCalculo: TDataModule};

{$R *.res}

begin
   try
      Application.Initialize;
      Application.Title := 'Gerenciamento de projetos baseado em métricas';
      Application.CreateForm(TFrmPrincipal, FrmPrincipal);
      Application.CreateForm(TDtMdlConexao, DtMdlConexao);
      Application.Run;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end.

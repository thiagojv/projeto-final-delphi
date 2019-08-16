unit UntFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ComCtrls, UntFrmAncestral;

type
  TFrmPrincipal = class(TForm)
    mnmnPrincipal: TMainMenu;
    imglstPrincipal: TImageList;
    stsbrPrincipal: TStatusBar;
    mntmCadastros: TMenuItem;
    mntmCadastrosRayleighTipoDistribuicao: TMenuItem;
    mntmJanela: TMenuItem;
    mntmJanelaSeparador1: TMenuItem;
    mntmJanelaCascata: TMenuItem;
    mntmCadastrosPF: TMenuItem;
    mntmCadastrosPFCaracteristicas: TMenuItem;
    mntmCadastrosRayleigh: TMenuItem;
    mntmCadastroPFComplexidades: TMenuItem;
    mntmCadastrosPFNiveisInfluencia: TMenuItem;
    mntmCadastrosPFAtributos: TMenuItem;
    mntmCadastrosRayleighTamanho: TMenuItem;
    mntmCadastrosRayleighFases: TMenuItem;
    mntmCadastrosRayleighAssociacao: TMenuItem;
    mntmCadastrosCOCOMO: TMenuItem;
    mntmCadastrosCOCOMOLinguagem: TMenuItem;
    mntmCadastrosCOCOMOModelos: TMenuItem;
    mntmCadastrosCOCOMOEscalas: TMenuItem;
    mntmCadastrosCOCOMOTiposFundamentais: TMenuItem;
    mntmCadastrosCOCOMOCaracteristicas: TMenuItem;
    mntmCadastrosCOCOMOCalculoEsforco: TMenuItem;
    mntmCadastrosCOCOMOAssociacao: TMenuItem;
    mntmManutencao: TMenuItem;
    mntmManutencaoProjeto: TMenuItem;
    N1: TMenuItem;
    mntmManutencaoCalculos: TMenuItem;
    procedure mntmCadastrosRayleighTipoDistribuicaoClick(Sender: TObject);
    procedure mntmCadastrosPFCaracteristicasClick(Sender: TObject);
    procedure mntmCadastroPFComplexidadesClick(Sender: TObject);
    procedure mntmCadastrosPFNiveisInfluenciaClick(Sender: TObject);
    procedure mntmCadastrosRayleighTamanhoClick(Sender: TObject);
    procedure mntmCadastrosPFAtributosClick(Sender: TObject);
    procedure mntmCadastrosRayleighAssociacaoClick(Sender: TObject);
    procedure mntmCadastrosCOCOMOLinguagemClick(Sender: TObject);
    procedure mntmCadastrosCOCOMOModelosClick(Sender: TObject);
    procedure mntmCadastrosCOCOMOAssociacaoClick(Sender: TObject);
    procedure mntmCadastrosCOCOMOCaracteristicasClick(Sender: TObject);
    procedure mntmCadastrosCOCOMOCalculoEsforcoClick(Sender: TObject);
    procedure mntmCadastrosCOCOMOEscalasClick(Sender: TObject);
    procedure mntmCadastrosCOCOMOTiposFundamentaisClick(Sender: TObject);
    procedure mntmCadastrosRayleighFasesClick(Sender: TObject);
    procedure mntmManutencaoProjetoClick(Sender: TObject);
    procedure mntmManutencaoCalculosClick(Sender: TObject);
  private
      procedure AbrirFormulario(Formulario: TFrmAncestral);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
   UntFrmCadastroTipoDistribuicao,
   UntFrmCadastroCaracteristicasPF,
   UntFrmCadastroComplexidadesPF,
   UntFrmCadastroNivelInfluenciaPF,
   UntFrmCadastroAtributosPF,
   UntFrmCadastroTamanho,
   UntFrmCadastroAssociacaoRayleigh,
   UntFrmCadastroLinguagem, UntFrmCadastroModelosCOCOMO,
  UntFrmCadastroCaracteristicasCOCOMO,
  UntFrmCadastroEscalaCaracteristicaCOCOMO, UntFrmCadastroEscalasCOCOMO,
  UntFrmCadastroEsforco, UntFrmCadastroFase,
  UntFrmCadastroTiposFundamentaisCOCOMO, UntFrmCadastroProjeto,
  UntFrmCalculo;

{$R *.dfm}

procedure TFrmPrincipal.AbrirFormulario(Formulario: TFrmAncestral);
begin
   Formulario.Show
end;

procedure TFrmPrincipal.mntmCadastrosRayleighAssociacaoClick(
  Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroAssociacaoRayleigh.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosRayleighTamanhoClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroTamanho.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosRayleighTipoDistribuicaoClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroTipoDistribuicao.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosPFCaracteristicasClick(
  Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroCaracteristicasPF.Create(self));
end;

procedure TFrmPrincipal.mntmCadastroPFComplexidadesClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroComplexidadesPF.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosPFNiveisInfluenciaClick(
  Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroNivelInfluenciaPF.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosPFAtributosClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroAtributosPF.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosCOCOMOLinguagemClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroLinguagem.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosCOCOMOModelosClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastrosModelosCOCOMO.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosCOCOMOAssociacaoClick(
  Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroEscalaCaracteristicaCOCOMO.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosCOCOMOCaracteristicasClick(
  Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroCaracteristicasCOCOMO.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosCOCOMOCalculoEsforcoClick(
  Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroEsforco.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosCOCOMOEscalasClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroEscalasCOCOMO.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosCOCOMOTiposFundamentaisClick(
  Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroTiposFundamentaisCOCOMO.Create(self));
end;

procedure TFrmPrincipal.mntmCadastrosRayleighFasesClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroFase.Create(self));
end;

procedure TFrmPrincipal.mntmManutencaoProjetoClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCadastroProjeto.Create(self));
end;

procedure TFrmPrincipal.mntmManutencaoCalculosClick(Sender: TObject);
begin
   AbrirFormulario(TFrmCalculo.Create(self));
end;

end.

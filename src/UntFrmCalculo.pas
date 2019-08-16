unit UntFrmCalculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestral, StdCtrls, DB, Grids, DBGrids, DBCtrls,
  UntDtMdlCalculo, UntDtMdlCalculoPontosFuncao, UntDtMdlCalculoCOCOMO,
  UntDtMdlCalculoDistribuicao;

type
  TFrmCalculo = class(TFrmAncestral)
    btnCalcular: TButton;
    grpbxPontosFuncao: TGroupBox;
    lblQuantidadeBruta: TLabel;
    lblSPFNA: TLabel;
    lblSomatoriaNiveisInfluencia: TLabel;
    lblSNI: TLabel;
    Label1: TLabel;
    lblPF: TLabel;
    grpbxCOCOMO: TGroupBox;
    lblDSI: TLabel;
    lblQuantidadeDSI: TLabel;
    lblCalculoEsforco: TLabel;
    lblCalculoPrazo: TLabel;
    lblEsforco: TLabel;
    lblPrazo: TLabel;
    dtsrcEsforco: TDataSource;
    dbgrdEsforco: TDBGrid;
    dbgrdPrazo: TDBGrid;
    dtsrcPrazo: TDataSource;
    lblDistribuicaoEsforco: TLabel;
    lblDistribuicaoPrazo: TLabel;
    lblProjeto: TLabel;
    dblkpcmbxProjeto: TDBLookupComboBox;
    dtsrcProjeto: TDataSource;
    procedure btnCalcularClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fDtMdlCalculo: TDtMdlCalculo;
    fCalculoPF: TDtMdlCalculoPontosFuncao;
    fCalculoCOCOMO: TDtMdlCalculoCOCOMO;
    fCalculoDistribuicao: TDtMdlCalculoDistribuicao;
  public
    { Public declarations }
  end;

var
  FrmCalculo: TFrmCalculo;

implementation

{$R *.dfm}

procedure TFrmCalculo.btnCalcularClick(Sender: TObject);
begin
  inherited;
   fCalculoPF := TDtMdlCalculoPontosFuncao.Create(self);
   fCalculoPF.CalcularPF(dblkpcmbxProjeto.KeyValue);
   lblSPFNA.Caption := IntToStr(fCalculoPF.SPFNA) + ' PF';
   lblSNI.Caption := IntToStr(fCalculoPF.SNI);
   lblPF.Caption := FormatFloat('#.##', fCalculoPF.PF) + ' PF';

   fCalculoCOCOMO := TDtMdlCalculoCOCOMO.Create(self);
   fCalculoCOCOMO.PF := fCalculoPF.PF;
   fCalculoCOCOMO.CalcularCOCOMO(dblkpcmbxProjeto.KeyValue);
   lblDSI.Caption := FormatFloat('#.##', fCalculoCOCOMO.DSI / 1000);
   lblEsforco.Caption := FormatFloat('#.##', fCalculoCOCOMO.Esforco) + ' H/mês';
   lblPrazo.Caption := FormatFloat('#.##', fCalculoCOCOMO.Prazo) + ' mês';

   fCalculoDistribuicao := TDtMdlCalculoDistribuicao.Create(self);
   fCalculoDistribuicao.CalcularDistribuicao(fCalculoCOCOMO.DSI / 1000, fCalculoCOCOMO.Esforco, fCalculoCOCOMO.Prazo);
end;

procedure TFrmCalculo.FormShow(Sender: TObject);
begin
  inherited;
   fDtMdlCalculo := TDtMdlCalculo.Create(nil);
   dtsrcProjeto.DataSet.Open;
end;

procedure TFrmCalculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    fCalculoPF.Destroy;
    fCalculoCOCOMO.Destroy;
    fCalculoDistribuicao.Destroy;
end;

end.

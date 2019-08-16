unit UntFrmCadastroAssociacaoRayleigh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroAssociacaoRayleigh = class(TFrmAncestralCadastro)
    lblTipoFundamental: TLabel;
    lblFase: TLabel;
    lblTamanho: TLabel;
    lblTipoDistribuicao: TLabel;
    lblPercentual: TLabel;
    dblkpcmbxTipoFundamental: TDBLookupComboBox;
    dblkpcmbxFase: TDBLookupComboBox;
    dblkpcmbxTamanho: TDBLookupComboBox;
    dblkpcmbxTipoDistribuicao: TDBLookupComboBox;
    dbdtPercentual: TDBEdit;
    dtsrcTipoFundamental: TDataSource;
    dtsrcFase: TDataSource;
    dtsrcTamanho: TDataSource;
    dtsrcTipoDistribuicao: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
  protected
    procedure Carregar; override;
  public
  end;

var
  FrmCadastroAssociacaoRayleigh: TFrmCadastroAssociacaoRayleigh;

implementation

uses UntDtMdlCadastroAssociacaoRayleigh;

{$R *.dfm}

procedure TFrmCadastroAssociacaoRayleigh.Carregar;
begin
  inherited;
   PrepararDataSource(dtsrcTipoFundamental, TDtMdlCadastroAssociacaoRayleigh(DtMdlDados).DataSetTipoFundamental);
   PrepararDataSource(dtsrcFase, TDtMdlCadastroAssociacaoRayleigh(DtMdlDados).DataSetFase);
   PrepararDataSource(dtsrcTamanho, TDtMdlCadastroAssociacaoRayleigh(DtMdlDados).DataSetTamanho);
   PrepararDataSource(dtsrcTipoDistribuicao, TDtMdlCadastroAssociacaoRayleigh(DtMdlDados).DataSetTipoDistribuicao);
end;

procedure TFrmCadastroAssociacaoRayleigh.FormCreate(Sender: TObject);
begin
   inherited;
   try
      DtMdlDados := TDtMdlCadastroAssociacaoRayleigh.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

unit UntDtMdlCadastroAssociacaoRayleigh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroAssociacaoRayleigh = class(TDtMdlAncestralCadastro)
    clntdtstCadastroTipo_Fundamental: TIntegerField;
    clntdtstCadastroFase: TIntegerField;
    clntdtstCadastroTamanho_Projeto: TIntegerField;
    clntdtstCadastroTipo_Distribuicao: TIntegerField;
    clntdtstCadastroPercentual: TFloatField;
    sqldtstTipoFundamental: TSQLDataSet;
    dtstprvdrTipoFundamental: TDataSetProvider;
    clntdtstTipoFundamental: TClientDataSet;
    sqldtstFase: TSQLDataSet;
    dtstprvdrFase: TDataSetProvider;
    clntdtstFase: TClientDataSet;
    sqldtstTamanho: TSQLDataSet;
    dtstprvdrTamanho: TDataSetProvider;
    clntdtstTamanho: TClientDataSet;
    sqldtstTipoDistribuicao: TSQLDataSet;
    dtstprvdrTipoDistribuicao: TDataSetProvider;
    clntdtstTipoDistribuicao: TClientDataSet;
    clntdtstFaseCodigo: TIntegerField;
    clntdtstFaseDescricao: TStringField;
    clntdtstTamanhoCodigo: TIntegerField;
    clntdtstTamanhoDescricao: TStringField;
    clntdtstTipoDistribuicaoCodigo: TIntegerField;
    clntdtstTipoDistribuicaoDescricao: TStringField;
    clntdtstTipoFundamentalCodigo: TIntegerField;
    clntdtstTipoFundamentalNome: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
      property DataSetTipoFundamental: TClientDataSet read clntdtstTipoFundamental write clntdtstTipoFundamental;
      property DataSetFase: TClientDataSet read clntdtstFase write clntdtstFase;
      property DataSetTamanho: TClientDataSet read clntdtstTamanho write clntdtstTamanho;
      property DataSetTipoDistribuicao: TClientDataSet read clntdtstTipoDistribuicao write clntdtstTipoDistribuicao;
  end;

var
  DtMdlCadastroAssociacaoRayleigh: TDtMdlCadastroAssociacaoRayleigh;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroAssociacaoRayleigh.DataModuleCreate(
  Sender: TObject);
begin
  inherited;
//
end;

end.

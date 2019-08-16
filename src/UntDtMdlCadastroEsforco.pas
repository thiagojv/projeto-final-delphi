unit UntDtMdlCadastroEsforco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroEsforco = class(TDtMdlAncestralCadastro)
    clntdtstCadastroModelo: TIntegerField;
    clntdtstCadastroTipo_Fundamental: TIntegerField;
    clntdtstCadastroEsforco_Fator_Multiplicacao: TFloatField;
    clntdtstCadastroEsforco_Exponencial: TFloatField;
    sqldtstModelo: TSQLDataSet;
    dtstprvdrModelo: TDataSetProvider;
    clntdtstModelo: TClientDataSet;
    sqldtstTipoFundamental: TSQLDataSet;
    dtstprvdrTipoFundamental: TDataSetProvider;
    clntdtstTipoFundamental: TClientDataSet;
    clntdtstModeloCodigo: TIntegerField;
    clntdtstModeloNome: TStringField;
    clntdtstTipoFundamentalCodigo: TIntegerField;
    clntdtstTipoFundamentalNome: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
      property DataSetModelo: TClientDataSet read clntdtstModelo write clntdtstModelo;
      property DataSetTipoFundamental: TClientDataSet read clntdtstTipoFundamental write clntdtstTipoFundamental;
  end;

var
  DtMdlCadastroEsforco: TDtMdlCadastroEsforco;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroEsforco.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

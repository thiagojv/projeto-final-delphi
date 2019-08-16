unit UntDtMdlCadastroTiposFundamentaisCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroTiposFundamentaisCOCOMO = class(TDtMdlAncestralCadastro)
    clntdtstCadastroCodigo: TIntegerField;
    clntdtstCadastroNome: TStringField;
    clntdtstCadastroPrazo_Fator_Multiplicacao: TFloatField;
    clntdtstCadastroPrazo_Exponencial: TFloatField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastroTiposFundamentaisCOCOMO: TDtMdlCadastroTiposFundamentaisCOCOMO;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroTiposFundamentaisCOCOMO.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Tipo_Fundamental');
end;

procedure TDtMdlCadastroTiposFundamentaisCOCOMO.DataModuleCreate(
  Sender: TObject);
begin
  inherited;
//
end;

end.

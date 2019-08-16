unit UntDtMdlCadastroTipoDistribuicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TDtMdlCadastroTipoDistribuicao = class(TDtMdlAncestralCadastro)
    clntdtstCadastroDescricao: TStringField;
    clntdtstCadastroCodigo: TIntegerField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastroTipoDistribuicao: TDtMdlCadastroTipoDistribuicao;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroTipoDistribuicao.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Tipo_Distribuicao')
end;

procedure TDtMdlCadastroTipoDistribuicao.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

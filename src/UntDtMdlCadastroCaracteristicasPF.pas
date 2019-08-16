unit UntDtMdlCadastroCaracteristicasPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroCaracteristicasPF = class(TDtMdlAncestralCadastro)
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
  DtMdlCadastroCaracteristicasPF: TDtMdlCadastroCaracteristicasPF;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroCaracteristicasPF.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'PF_Caracteristicas')
end;

procedure TDtMdlCadastroCaracteristicasPF.DataModuleCreate(
  Sender: TObject);
begin
  inherited;
//
end;

end.

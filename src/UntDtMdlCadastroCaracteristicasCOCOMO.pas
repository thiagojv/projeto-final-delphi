unit UntDtMdlCadastroCaracteristicasCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroCaracteristicasCOCOMO = class(TDtMdlAncestralCadastro)
    clntdtstCadastroDescricao: TStringField;
    clntdtstCadastroSigla: TStringField;
    clntdtstCadastroAncestral: TIntegerField;
    sqldtstCaracteristicas: TSQLDataSet;
    dtstprvdrCaracteristicas: TDataSetProvider;
    clntdtstCaracteristicas: TClientDataSet;
    clntdtstCaracteristicasCodigo: TIntegerField;
    clntdtstCadastroCodigo: TIntegerField;
    clntdtstCaracteristicasDescricao: TStringField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure clntdtstCadastroAfterPost(DataSet: TDataSet);
  private
  public
      property DataSetCaracteristicas: TClientDataSet read clntdtstCaracteristicas write clntdtstCaracteristicas;
  end;

var
  DtMdlCadastroCaracteristicasCOCOMO: TDtMdlCadastroCaracteristicasCOCOMO;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroCaracteristicasCOCOMO.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'COCOMO_Caracteristicas');
end;

procedure TDtMdlCadastroCaracteristicasCOCOMO.DataModuleCreate(
  Sender: TObject);
begin
  inherited;
//
end;

procedure TDtMdlCadastroCaracteristicasCOCOMO.clntdtstCadastroAfterPost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCaracteristicas.Close;
   clntdtstCaracteristicas.Open;
end;

end.

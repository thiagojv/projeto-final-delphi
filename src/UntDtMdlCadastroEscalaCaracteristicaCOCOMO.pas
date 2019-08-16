unit UntDtMdlCadastroEscalaCaracteristicaCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroEscalaCaracteristicaCOCOMO = class(TDtMdlAncestralCadastro)
    clntdtstCadastroCOCOMO_Caracteristica: TIntegerField;
    clntdtstCadastroCOCOMO_Escala: TIntegerField;
    clntdtstCadastroFator_Ajuste: TFloatField;
    clntdtstCadastroClassificacao: TStringField;
    sqldtstEscala: TSQLDataSet;
    dtstprvdrEscala: TDataSetProvider;
    clntdtstEscala: TClientDataSet;
    sqldtstCaracteristica: TSQLDataSet;
    dtstprvdrCaracteristica: TDataSetProvider;
    clntdtstCaracteristica: TClientDataSet;
    clntdtstEscalaCodigo: TIntegerField;
    clntdtstEscalaDescricao: TStringField;
    clntdtstCaracteristicaCodigo: TIntegerField;
    clntdtstCaracteristicaSigla: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
      property DataSetEscala: TClientDataSet read clntdtstEscala write clntdtstEscala;
      property DataSetCaracteristica: TClientDataSet read clntdtstCaracteristica write clntdtstCaracteristica;
  end;

var
  DtMdlCadastroEscalaCaracteristicaCOCOMO: TDtMdlCadastroEscalaCaracteristicaCOCOMO;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroEscalaCaracteristicaCOCOMO.DataModuleCreate(
  Sender: TObject);
begin
  inherited;
//
end;

end.

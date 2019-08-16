unit UntDtMdlCadastroFase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroFase = class(TDtMdlAncestralCadastro)
    clntdtstCadastroDescricao: TStringField;
    clntdtstCadastroAncestral: TIntegerField;
    sqldtstFase: TSQLDataSet;
    dtstprvdrFase: TDataSetProvider;
    clntdtstFase: TClientDataSet;
    clntdtstFaseCodigo: TIntegerField;
    clntdtstCadastroCodigo: TIntegerField;
    clntdtstFaseDescricao: TStringField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
  public
      property DataSetFase: TClientDataSet read clntdtstFase write clntdtstFase;
  end;

var
  DtMdlCadastroFase: TDtMdlCadastroFase;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroFase.clntdtstCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Fases')
end;

procedure TDtMdlCadastroFase.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

unit UntDtMdlCadastroTamanho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroTamanho = class(TDtMdlAncestralCadastro)
    clntdtstCadastroDescricao: TStringField;
    clntdtstCadastroTamanho_Min: TFloatField;
    clntdtstCadastroTamanho_Max: TFloatField;
    clntdtstCadastroCodigo: TIntegerField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastroTamanho: TDtMdlCadastroTamanho;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroTamanho.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Tamanho_Projeto');
end;

procedure TDtMdlCadastroTamanho.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

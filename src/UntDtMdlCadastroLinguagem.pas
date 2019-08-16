unit UntDtMdlCadastroLinguagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroLinguagem = class(TDtMdlAncestralCadastro)
    clntdtstCadastroEquivalente_PF: TFloatField;
    clntdtstCadastroNome: TStringField;
    clntdtstCadastroCodigo: TIntegerField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastroLinguagem: TDtMdlCadastroLinguagem;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroLinguagem.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Linguagem')
end;

procedure TDtMdlCadastroLinguagem.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

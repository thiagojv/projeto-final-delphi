unit UntDtMdlAncestralCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestral, FMTBcd, DB, SqlExpr, DBClient, Provider, UntDtMdlSequencial;

type
  TDtMdlAncestralCadastro = class(TDtMdlAncestral)
    sqldtstCadastro: TSQLDataSet;
    dtstprvdrCadastro: TDataSetProvider;
    clntdtstCadastro: TClientDataSet;
    procedure clntdtstCadastroAfterPost(DataSet: TDataSet);
    procedure clntdtstCadastroAfterDelete(DataSet: TDataSet);
  private
      FSequencial: TDtMdlSequencial;
  protected
    procedure DataModuleCreate(Sender: TObject);
    property Sequencial: TDtMdlSequencial read FSequencial write FSequencial;
  public
    { Public declarations }
    property DataSet: TClientDataSet read clntdtstCadastro write clntdtstCadastro;
  end;

var
  DtMdlAncestralCadastro: TDtMdlAncestralCadastro;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlAncestralCadastro.DataModuleCreate(Sender: TObject);
begin
   inherited;
   sqldtstCadastro.SQLConnection := Conexao;
   FSequencial := TDtMdlSequencial.Create(self);
end;

procedure TDtMdlAncestralCadastro.clntdtstCadastroAfterPost(
  DataSet: TDataSet);
begin
  inherited;
   try
      clntdtstCadastro.ApplyUpdates(0);
   except
      on Ex: Exception do
         ShowMessage('Erro ao gravar o registro!' + Chr(13) + 'Mensagem: ' + Ex.Message);
   end;
end;

procedure TDtMdlAncestralCadastro.clntdtstCadastroAfterDelete(
  DataSet: TDataSet);
begin
   inherited;
   try
      clntdtstCadastro.ApplyUpdates(0);
   except
      on Ex: Exception do
         ShowMessage('Erro ao gravar o registro!' + Chr(13) + 'Mensagem: ' + Ex.Message);
   end;
end;

end.

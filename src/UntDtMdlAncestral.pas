unit UntDtMdlAncestral;

interface

uses
  SysUtils, Classes, UntDtMdlConexao, SqlExpr;

type
  TDtMdlAncestral = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
      FConexao: TSQLConnection;
      FDtMdlConexao: TDtMdlConexao;
  protected
      property Conexao: TSQLConnection read FConexao write FConexao;
  public
  end;

var
  DtMdlAncestral: TDtMdlAncestral;

implementation

{$R *.dfm}

procedure TDtMdlAncestral.DataModuleCreate(Sender: TObject);
begin
   FDtMdlConexao := TDtMdlConexao.Create(self);
   Conexao := FDtMdlConexao.Conexao;
end;

end.

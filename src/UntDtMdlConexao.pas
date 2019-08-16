unit UntDtMdlConexao;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr;

type
  TDtMdlConexao = class(TDataModule)
    sqlcnctnPFC: TSQLConnection;
  private
  public
    property Conexao: TSQLConnection read sqlcnctnPFC write sqlcnctnPFC;
  end;

var
  DtMdlConexao: TDtMdlConexao;

implementation

{$R *.dfm}

end.

unit UntDtMdlCalculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCalculo = class(TDtMdlAncestralCadastro)
    clntdtstCadastroCodigo: TIntegerField;
    clntdtstCadastroNome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCalculo: TDtMdlCalculo;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

end.

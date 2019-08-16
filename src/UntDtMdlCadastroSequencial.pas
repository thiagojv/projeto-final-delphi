unit UntDtMdlCadastroSequencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroSequencial = class(TDtMdlAncestralCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastroSequencial: TDtMdlCadastroSequencial;

implementation

{$R *.dfm}

end.

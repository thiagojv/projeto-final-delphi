unit UntDtMdlAncestralCalculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestral, FMTBcd, DB, SqlExpr;

type
  TDtMdlAncestralCalculo = class(TDtMdlAncestral)
    sqldtstCalculo: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlAncestralCalculo: TDtMdlAncestralCalculo;

implementation

{$R *.dfm}

procedure TDtMdlAncestralCalculo.DataModuleCreate(Sender: TObject);
begin
  inherited;
   sqldtstCalculo.SQLConnection := Conexao;
end;

end.

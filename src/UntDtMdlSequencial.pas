unit UntDtMdlSequencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestral, FMTBcd, DB, SqlExpr;

type
  TDtMdlSequencial = class(TDtMdlAncestral)
    sqldtstSequencial: TSQLDataSet;
    sqlqrySequencial: TSQLQuery;
  private
  public
      function GerarSequencial(Campo: String; Tabela: String): Integer;
  end;

var
  DtMdlSequencial: TDtMdlSequencial;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

function TDtMdlSequencial.GerarSequencial(Campo, Tabela: String): Integer;
begin
   try
      try
         sqldtstSequencial.CommandText := Format('SELECT MAX(%s) AS Ultimo FROM %s', [Campo, Tabela]);
         sqldtstSequencial.Open;
         Result := sqldtstSequencial.FieldByName('Ultimo').AsInteger + 1;
      except
         Result := 1;
      end;
   finally
         sqldtstSequencial.Close;
   end;
end;

end.

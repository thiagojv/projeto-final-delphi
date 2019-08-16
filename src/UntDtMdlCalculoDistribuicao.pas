unit UntDtMdlCalculoDistribuicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCalculo, FMTBcd, DB, SqlExpr, DBClient,
  Provider;

type
  TDtMdlCalculoDistribuicao = class(TDtMdlAncestralCalculo)
    dtstprvdrEsforco: TDataSetProvider;
    clntdtstEsforco: TClientDataSet;
    sqldtstPrazo: TSQLDataSet;
    dtstprvdrPrazo: TDataSetProvider;
    clntdtstPrazo: TClientDataSet;
    clntdtstEsforcoFase: TStringField;
    clntdtstEsforcoValor: TFloatField;
    clntdtstPrazoFase: TStringField;
    clntdtstPrazoValor: TFloatField;
  private
      function FormatarNumero(Numero: Double): String;
      procedure CalcularEsforco(Tamanho_DSI: Double; Esforco: Double); virtual;
      procedure CalcularPrazo(Tamanho_DSI: Double; Prazo: Double); virtual;
  public
      procedure CalcularDistribuicao(Tamanho_DSI: Double; Esforco: Double; Prazo: Double); virtual;
  end;

var
  DtMdlCalculoDistribuicao: TDtMdlCalculoDistribuicao;

implementation

uses UntDtMdlConexao, StrUtils;

{$R *.dfm}

{ TDtMdlCalculoDistribuicao }

procedure TDtMdlCalculoDistribuicao.CalcularDistribuicao(Tamanho_DSI,
  Esforco, Prazo: Double);
begin
   CalcularEsforco(Tamanho_DSI, Esforco);
   CalcularPrazo(Tamanho_DSI, Prazo);
end;

procedure TDtMdlCalculoDistribuicao.CalcularEsforco(Tamanho_DSI,
  Esforco: Double);
begin
   sqldtstCalculo.Close;
   sqldtstCalculo.CommandText := Format(sqldtstCalculo.CommandText, [FormatarNumero(Esforco)]);
   clntdtstEsforco.Params.ParamByName('Tamanho_DSI').AsFloat := Tamanho_DSI;
   clntdtstEsforco.Open;
end;

procedure TDtMdlCalculoDistribuicao.CalcularPrazo(Tamanho_DSI,
  Prazo: Double);
begin
   sqldtstPrazo.Close;
   sqldtstPrazo.CommandText := Format(sqldtstPrazo.CommandText, [FormatarNumero(Prazo)]);
   clntdtstPrazo.Params.ParamByName('Tamanho_DSI').AsFloat := Tamanho_DSI;
   clntdtstPrazo.Open;
end;

function TDtMdlCalculoDistribuicao.FormatarNumero(Numero: Double): String;
var
   StringNumero: String;
begin
   StringNumero := FormatFloat('#.###', Numero);

   Result := MidStr(StringNumero, 0, (PosEx(',', StringNumero) - 1)) + '.' + MidStr(StringNumero, (PosEx(',', StringNumero) + 1), Length(StringNumero))
end;

end.

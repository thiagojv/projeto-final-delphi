unit UntDtMdlCalculoCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCalculo, FMTBcd, DB, SqlExpr, Math, DBClient,
  Provider;

type
  TDtMdlCalculoCOCOMO = class(TDtMdlAncestralCalculo)
    sqldtstEsforco: TSQLDataSet;
    sqldtstPrazo: TSQLDataSet;
    sqldtstCOCOMOAjusteAncestrais: TSQLDataSet;
    sqldtstCOCOMOAjusteHerdeiros: TSQLDataSet;
  private
      FDSI: Double;
      FPF: Double;
    FEquivalencia: Double;
    FEsforco: Double;
    FCOCOMOAjuste: Double;
    FPrazo: Double;
      procedure CalcularConversaoPF2DSI(Projeto: Integer);
      procedure CalcularConversaoEquivalencia(Projeto: Integer);
      procedure CalcularEsforco(Projeto: Integer);
      procedure CalcularCOCOMOAjuste(Projeto: Integer);
      procedure CalcularPrazo(Projeto: Integer);
      procedure CalcularCOCOMOAjusteAncestrais(Projeto: Integer);
      procedure CalcularCOCOMOAjusteHerdeiros(Projeto: Integer);
  public
      property DSI: Double read FDSI;
      property PF: Double read FPF write FPF;
      property Equivalencia: Double read FEquivalencia;
      property Esforco: Double read FEsforco;
      property COCOMOAjuste: Double read FCOCOMOAjuste;
      property Prazo: Double read FPrazo;
      procedure CalcularCOCOMO(Projeto: Integer);
  end;

var
  DtMdlCalculoCOCOMO: TDtMdlCalculoCOCOMO;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCalculoCOCOMO.CalcularCOCOMO(Projeto: Integer);
begin
   if (PF > 0) then
   begin
      CalcularConversaoPF2DSI(Projeto);
      CalcularEsforco(Projeto);
      CalcularPrazo(Projeto);
   end
   else
      MessageDlg('O tamanho do projeto em Pontos de Função deve ter sido calculado', mtError, mbOKCancel, 0);
end;

procedure TDtMdlCalculoCOCOMO.CalcularCOCOMOAjuste(Projeto: Integer);
begin
   FCOCOMOAjuste := 1;
   CalcularCOCOMOAjusteAncestrais(Projeto);
   CalcularCOCOMOAjusteHerdeiros(Projeto);
end;

procedure TDtMdlCalculoCOCOMO.CalcularCOCOMOAjusteAncestrais(
  Projeto: Integer);
begin
   try
       sqldtstCOCOMOAjusteAncestrais.Close;
       sqldtstCOCOMOAjusteAncestrais.ParamByName('Projeto').AsInteger := Projeto;
       sqldtstCOCOMOAjusteAncestrais.Open;

       while not sqldtstCOCOMOAjusteAncestrais.Eof do
       begin
          FCOCOMOAjuste := FCOCOMOAjuste * sqldtstCOCOMOAjusteAncestrais.FieldByName('Fator_Ajuste').AsFloat;
          sqldtstCOCOMOAjusteAncestrais.Next;
       end;

       sqldtstCOCOMOAjusteAncestrais.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end;

procedure TDtMdlCalculoCOCOMO.CalcularCOCOMOAjusteHerdeiros(
  Projeto: Integer);
var
   Maior: Integer;
   MaiorFatorAjuste: Double;
begin
   try
       sqldtstCOCOMOAjusteHerdeiros.Close;
       sqldtstCOCOMOAjusteHerdeiros.ParamByName('Projeto').AsInteger := Projeto;
       sqldtstCOCOMOAjusteHerdeiros.Open;

       Maior := 0;
       while not sqldtstCOCOMOAjusteHerdeiros.Eof do
       begin
          if (sqldtstCOCOMOAjusteHerdeiros.FieldByName('Quantidade').AsInteger > Maior) then
          begin
             Maior := sqldtstCOCOMOAjusteHerdeiros.FieldByName('Quantidade').AsInteger;
             MaiorFatorAjuste := sqldtstCOCOMOAjusteHerdeiros.FieldByName('Fator_Ajuste').AsFloat;
          end;

          sqldtstCOCOMOAjusteHerdeiros.Next;
       end;

       FCOCOMOAjuste := FCOCOMOAjuste * MaiorFatorAjuste;

       sqldtstCOCOMOAjusteHerdeiros.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end;

procedure TDtMdlCalculoCOCOMO.CalcularConversaoEquivalencia(
  Projeto: Integer);
begin
   try
      sqldtstCalculo.Close;
      sqldtstCalculo.ParamByName('Projeto').AsInteger := Projeto;
      sqldtstCalculo.Open;

      FEquivalencia := sqldtstCalculo.FieldByName('Equivalencia').AsFloat;

      sqldtstCalculo.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;

end;

procedure TDtMdlCalculoCOCOMO.CalcularConversaoPF2DSI(Projeto: Integer);
begin
   CalcularConversaoEquivalencia(Projeto);
   FDSI := PF * Equivalencia;
end;

procedure TDtMdlCalculoCOCOMO.CalcularEsforco(Projeto: Integer);
begin
   try
       sqldtstEsforco.Close;
       sqldtstEsforco.ParamByName('Projeto').AsInteger := Projeto;
       sqldtstEsforco.Open;

       FEsforco := sqldtstEsforco.FieldByName('Esforco_Fator_Multiplicacao').AsFloat * Power((DSI / 1000), sqldtstEsforco.FieldByName('Esforco_Exponencial').AsFloat);

       CalcularCOCOMOAjuste(Projeto);
       FEsforco := FEsforco * COCOMOAjuste;

       sqldtstEsforco.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end;

procedure TDtMdlCalculoCOCOMO.CalcularPrazo(Projeto: Integer);
begin
   try
       sqldtstPrazo.Close;
       sqldtstPrazo.ParamByName('Projeto').AsInteger := Projeto;
       sqldtstPrazo.Open;

       FPrazo := sqldtstPrazo.FieldByName('Prazo_Fator_Multiplicacao').AsFloat * Power(Esforco, sqldtstPrazo.FieldByName('Prazo_Exponencial').AsFloat);

       sqldtstPrazo.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end;

end.

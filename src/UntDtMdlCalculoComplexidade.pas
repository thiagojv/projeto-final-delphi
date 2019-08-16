unit UntDtMdlCalculoComplexidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCalculo, FMTBcd, DB, SqlExpr;

type
  TDtMdlCalculoComplexidade = class(TDtMdlAncestralCalculo)
    sqldtstCalculoExtendido: TSQLDataSet;
  private
    FCodigo: Integer;
    FPeso: Integer;
    FNivel: String;
  protected
      procedure SetarResultados(DataSet: TSQLDataSet); virtual;
      procedure Setar2Parametros(Atributo: Integer; Parametro1, Parametro2: Integer); virtual;
      procedure Setar4Parametros(Atributo: Integer; Parametro1, Parametro2, Parametro3, Parametro4: Integer); virtual;
      procedure CalculoComplexidade2Parametros(Atributo: Integer; Parametro1, Parametro2: Integer); virtual;
      procedure CalculoComplexidade4Parametros(Atributo: Integer; Parametro1, Parametro2, Parametro3, Parametro4: Integer); virtual;
  public
    property Codigo: Integer read FCodigo;
    property Nivel: String read FNivel;
    property Peso: Integer read FPeso;
    procedure Calcular(Atributo: Integer; Parametro1: Integer; Parametro2: Integer; Parametro3: Integer = -1; Parametro4: Integer = -1); virtual;
  end;

var
  DtMdlCalculoComplexidade: TDtMdlCalculoComplexidade;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCalculoComplexidade.Calcular(Atributo: Integer;
   Parametro1: Integer; Parametro2: Integer; Parametro3: Integer = -1;
   Parametro4: Integer = -1);
begin
   if (Parametro3 >= 0) and (Parametro4 >= 0) then
   begin
      CalculoComplexidade4Parametros(Atributo, Parametro1, Parametro2, Parametro3, Parametro4);      
   end
   else
   begin
      CalculoComplexidade2Parametros(Atributo, Parametro1, Parametro2);      
   end;
end;

procedure TDtMdlCalculoComplexidade.CalculoComplexidade2Parametros(
  Atributo, Parametro1, Parametro2: Integer);
begin
   try
      sqldtstCalculo.Close;
      Setar2Parametros(Atributo, Parametro1, Parametro2);
      sqldtstCalculo.Open;

      SetarResultados(sqldtstCalculo);

      sqldtstCalculo.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end;

procedure TDtMdlCalculoComplexidade.CalculoComplexidade4Parametros(
  Atributo, Parametro1, Parametro2, Parametro3, Parametro4: Integer);
begin
   try
      sqldtstCalculoExtendido.Close;
      Setar4Parametros(Atributo, Parametro1, Parametro2, Parametro3, Parametro4);
      sqldtstCalculoExtendido.Open;

      SetarResultados(sqldtstCalculoExtendido);

      sqldtstCalculoExtendido.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end;

procedure TDtMdlCalculoComplexidade.Setar2Parametros(Atributo,
  Parametro1, Parametro2: Integer);
begin
   sqldtstCalculo.ParamByName('Atributo').AsInteger := Atributo;
   sqldtstCalculo.ParamByName('Parametro_1').AsInteger := Parametro1;
   sqldtstCalculo.ParamByName('Parametro_2').AsInteger := Parametro2;
end;

procedure TDtMdlCalculoComplexidade.Setar4Parametros(Atributo,
  Parametro1, Parametro2, Parametro3, Parametro4: Integer);
begin
   sqldtstCalculoExtendido.ParamByName('Atributo').AsInteger := Atributo;
   sqldtstCalculoExtendido.ParamByName('Parametro_1').AsInteger := Parametro1;
   sqldtstCalculoExtendido.ParamByName('Parametro_2').AsInteger := Parametro2;
   sqldtstCalculoExtendido.ParamByName('Parametro_3').AsInteger := Parametro3;
   sqldtstCalculoExtendido.ParamByName('Parametro_4').AsInteger := Parametro4;
end;

procedure TDtMdlCalculoComplexidade.SetarResultados(DataSet: TSQLDataSet);
begin
   FCodigo := DataSet.FieldByName('Codigo').AsInteger;
   FNivel := DataSet.FieldByName('Nivel').AsString;
   FPeso := DataSet.FieldByName('Peso').AsInteger;
end;

end.

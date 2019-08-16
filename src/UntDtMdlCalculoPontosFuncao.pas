unit UntDtMdlCalculoPontosFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCalculo, FMTBcd, DB, SqlExpr, DBClient,
  Provider;

type
  TDtMdlCalculoPontosFuncao = class(TDtMdlAncestralCalculo)
    sqldtstSNI: TSQLDataSet;
    sqldtstProjeto_Historico: TSQLDataSet;
    dtstprvdrProjeto_Historico: TDataSetProvider;
    clntdtstProjeto_Historico: TClientDataSet;
    clntdtstProjeto_HistoricoCodigo: TIntegerField;
    clntdtstProjeto_HistoricoProjeto: TIntegerField;
    clntdtstProjeto_HistoricoData: TSQLTimeStampField;
    clntdtstProjeto_HistoricoTamanho_PF: TFloatField;
  private
      FSPFNA: Integer;
      FSNI: Integer;
      FPF: Double;
      procedure CalcularSPFNA(Projeto: Integer);
      procedure CalcularSNI(Projeto: Integer);
      procedure GravarHistorico(Projeto: Integer; Tamanho: Double);
  public
      property SPFNA: Integer read FSPFNA;
      property SNI: Integer read FSNI;
      property PF: Double read FPF;
      procedure CalcularPF(Projeto: Integer);
  end;

var
  DtMdlCalculoPontosFuncao: TDtMdlCalculoPontosFuncao;

implementation

uses UntDtMdlConexao, UntDtMdlSequencial;

{$R *.dfm}

procedure TDtMdlCalculoPontosFuncao.CalcularPF(Projeto: Integer);
begin
   CalcularSPFNA(Projeto);
   CalcularSNI(Projeto);

   FPF := SPFNA * (0.65 + (0.01 * SNI));

   GravarHistorico(Projeto, FPF);
end;

procedure TDtMdlCalculoPontosFuncao.CalcularSNI(Projeto: Integer);
begin
   try
     sqldtstSNI.Close;
     sqldtstSNI.ParamByName('Projeto').AsInteger := Projeto;
     sqldtstSNI.Open;

     FSNI := sqldtstSNI.FieldByName('SNI').AsInteger;

     sqldtstSNI.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end;

procedure TDtMdlCalculoPontosFuncao.CalcularSPFNA(Projeto: Integer);
begin
   try
     sqldtstCalculo.Close;
     sqldtstCalculo.ParamByName('Projeto').AsInteger := Projeto;
     sqldtstCalculo.Open;

     FSPFNA := 0;
     while not sqldtstCalculo.Eof do
     begin
         FSPFNA := FSPFNA + (sqldtstCalculo.FieldByName('Quantidade').AsInteger * sqldtstCalculo.FieldByName('Peso').AsInteger);
         sqldtstCalculo.Next;
     end;

     sqldtstCalculo.Close;
   except
      on Ex: Exception do
         MessageDlg(Ex.Message, mtError, mbOKCancel, 0);
   end;
end;

procedure TDtMdlCalculoPontosFuncao.GravarHistorico(Projeto: Integer; Tamanho: Double);
var
   Sequencial: TDtMdlSequencial;
begin
   try
      Sequencial := TDtMdlSequencial.Create(nil);

      clntdtstProjeto_Historico.Open;
      clntdtstProjeto_Historico.Insert;
      clntdtstProjeto_Historico.FieldValues['Projeto'] := Projeto;
      clntdtstProjeto_Historico.FieldValues['Codigo'] := Sequencial.GerarSequencial('Codigo', 'Projeto_Historico');
      clntdtstProjeto_Historico.FieldValues['Data'] := Now;
      clntdtstProjeto_Historico.FieldValues['Tamanho_PF'] := Tamanho;
      clntdtstProjeto_Historico.Post;

      clntdtstProjeto_Historico.ApplyUpdates(-1);

      clntdtstProjeto_Historico.Close;
   except
      on Ex: Exception do
         ShowMessage(Ex.Message);
   end;
end;

end.

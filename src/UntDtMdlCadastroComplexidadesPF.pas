unit UntDtMdlCadastroComplexidadesPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroComplexidadesPF = class(TDtMdlAncestralCadastro)
    clntdtstCadastroAtributo: TIntegerField;
    clntdtstCadastroParametro_1_Minimo: TFloatField;
    clntdtstCadastroParametro_1_Maximo: TFloatField;
    clntdtstCadastroParametro_2_Minimo: TFloatField;
    clntdtstCadastroParametro_2_Maximo: TFloatField;
    clntdtstCadastroParametro_3_Minimo: TFloatField;
    clntdtstCadastroParametro_3_Maximo: TFloatField;
    clntdtstCadastroParametro_4_Minimo: TFloatField;
    clntdtstCadastroParametro_4_Maximo: TFloatField;
    clntdtstCadastroNivel: TStringField;
    clntdtstCadastroPeso: TFloatField;
    sqldtstAtributo: TSQLDataSet;
    dtstprvdrAtributo: TDataSetProvider;
    clntdtstAtributo: TClientDataSet;
    clntdtstAtributoCodigo: TIntegerField;
    clntdtstAtributoNome: TStringField;
    clntdtstCadastroCodigo: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    property DataSetAtributos: TClientDataSet read clntdtstAtributo write clntdtstAtributo;
  end;

var
  DtMdlCadastroComplexidadesPF: TDtMdlCadastroComplexidadesPF;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroComplexidadesPF.DataModuleCreate(Sender: TObject);
begin
   inherited;
//
end;

procedure TDtMdlCadastroComplexidadesPF.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Complexidade')
end;

end.

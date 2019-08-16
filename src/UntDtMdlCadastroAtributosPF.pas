unit UntDtMdlCadastroAtributosPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TDtMdlCadastroAtributosPF = class(TDtMdlAncestralCadastro)
    clntdtstCadastroNome: TStringField;
    clntdtstCadastroNome_Parametro_1: TStringField;
    clntdtstCadastroNome_Parametro_2: TStringField;
    clntdtstCadastroNome_Parametro_3: TStringField;
    clntdtstCadastroNome_Parametro_4: TStringField;
    clntdtstCadastroExtendido: TBooleanField;
    clntdtstCadastroCodigo: TIntegerField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastroAtributosPF: TDtMdlCadastroAtributosPF;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroAtributosPF.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Atributo');
end;

procedure TDtMdlCadastroAtributosPF.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

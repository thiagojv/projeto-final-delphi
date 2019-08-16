unit UntDtMdlCadastroNivelInfluenciaPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroNivelInfluenciaPF = class(TDtMdlAncestralCadastro)
    clntdtstCadastroNota: TIntegerField;
    clntdtstCadastroDescricao: TStringField;
    clntdtstCadastroCodigo: TIntegerField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastroNivelInfluenciaPF: TDtMdlCadastroNivelInfluenciaPF;

implementation

uses UntDtMdlConexao, UntDtMdlAncestral;

{$R *.dfm}

procedure TDtMdlCadastroNivelInfluenciaPF.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'PF_Nivel_Influencia')
end;

procedure TDtMdlCadastroNivelInfluenciaPF.DataModuleCreate(
  Sender: TObject);
begin
   inherited;
//
end;

end.

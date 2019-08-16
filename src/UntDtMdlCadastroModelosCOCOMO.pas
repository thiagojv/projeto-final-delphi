unit UntDtMdlCadastroModelosCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastrosModeloCOCOMO = class(TDtMdlAncestralCadastro)
    clntdtstCadastroCodigo: TIntegerField;
    clntdtstCadastroNome: TStringField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastrosModeloCOCOMO: TDtMdlCadastrosModeloCOCOMO;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastrosModeloCOCOMO.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Modelo')
end;

procedure TDtMdlCadastrosModeloCOCOMO.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

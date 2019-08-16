unit UntDtMdlCadastroEscalasCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroEscalasCOCOMO = class(TDtMdlAncestralCadastro)
    clntdtstCadastroCodigo: TIntegerField;
    clntdtstCadastroDescricao: TStringField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtMdlCadastroEscalasCOCOMO: TDtMdlCadastroEscalasCOCOMO;

implementation

uses UntDtMdlConexao;

{$R *.dfm}

procedure TDtMdlCadastroEscalasCOCOMO.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'COCOMO_Escala')
end;

procedure TDtMdlCadastroEscalasCOCOMO.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

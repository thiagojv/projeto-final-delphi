unit UntFrmCadastroTipoDistribuicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, ImgList, ComCtrls, ToolWin,
  DB, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TFrmCadastroTipoDistribuicao = class(TFrmAncestralCadastro)
    dbdtDescricao: TDBEdit;
    lblDescricao: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroTipoDistribuicao: TFrmCadastroTipoDistribuicao;

implementation

uses UntDtMdlCadastroTipoDistribuicao, UntFrmAncestral;

{$R *.dfm}

procedure TFrmCadastroTipoDistribuicao.FormCreate(Sender: TObject);
begin
   inherited;
   try
      DtMdlDados := TDtMdlCadastroTipoDistribuicao.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

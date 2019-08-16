unit UntFrmCadastroNivelInfluenciaPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroNivelInfluenciaPF = class(TFrmAncestralCadastro)
    lblDescricao: TLabel;
    lblNota: TLabel;
    dbdtDescricao: TDBEdit;
    dbdtNota: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroNivelInfluenciaPF: TFrmCadastroNivelInfluenciaPF;

implementation

uses UntDtMdlCadastroNivelInfluenciaPF;

{$R *.dfm}

procedure TFrmCadastroNivelInfluenciaPF.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastroNivelInfluenciaPF.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

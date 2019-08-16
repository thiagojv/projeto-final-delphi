unit UntFrmCadastroLinguagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroLinguagem = class(TFrmAncestralCadastro)
    lblNome: TLabel;
    lblEquivalentePF: TLabel;
    dbdtNome: TDBEdit;
    dbdtEquivalentePF: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroLinguagem: TFrmCadastroLinguagem;

implementation

uses UntDtMdlCadastroLinguagem;

{$R *.dfm}

procedure TFrmCadastroLinguagem.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastroLinguagem.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

unit UntFrmCadastroAtributosPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroAtributosPF = class(TFrmAncestralCadastro)
    lblNome: TLabel;
    lblNomeParametro1: TLabel;
    lblNomeParametro2: TLabel;
    lblNomeParametro3: TLabel;
    lblNomeParametro4: TLabel;
    dbdtNome: TDBEdit;
    dbdtNomeParametro1: TDBEdit;
    dbdtNomeParametro2: TDBEdit;
    dbdtNomeParametro3: TDBEdit;
    dbdtNomeParametro4: TDBEdit;
    dbchckbxExtendido: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroAtributosPF: TFrmCadastroAtributosPF;

implementation

uses UntDtMdlCadastroAtributosPF;

{$R *.dfm}

procedure TFrmCadastroAtributosPF.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastroAtributosPF.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

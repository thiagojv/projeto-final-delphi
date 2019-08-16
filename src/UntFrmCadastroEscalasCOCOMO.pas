unit UntFrmCadastroEscalasCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroEscalasCOCOMO = class(TFrmAncestralCadastro)
    lblDescricao: TLabel;
    dbdtDescricao: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroEscalasCOCOMO: TFrmCadastroEscalasCOCOMO;

implementation

uses UntDtMdlCadastroEscalasCOCOMO;

{$R *.dfm}

procedure TFrmCadastroEscalasCOCOMO.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastroEscalasCOCOMO.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

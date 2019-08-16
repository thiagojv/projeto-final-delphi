unit UntFrmCadastroModelosCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastrosModelosCOCOMO = class(TFrmAncestralCadastro)
    lblDescricao: TLabel;
    dbdtDescricao: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrosModelosCOCOMO: TFrmCadastrosModelosCOCOMO;

implementation

uses UntDtMdlCadastroModelosCOCOMO;

{$R *.dfm}

procedure TFrmCadastrosModelosCOCOMO.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastrosModeloCOCOMO.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

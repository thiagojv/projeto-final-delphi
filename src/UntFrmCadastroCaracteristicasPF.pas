unit UntFrmCadastroCaracteristicasPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroCaracteristicasPF = class(TFrmAncestralCadastro)
    lblDescricao: TLabel;
    dbdtDescricao: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  FrmCadastroCaracteristicasPF: TFrmCadastroCaracteristicasPF;

implementation

uses UntDtMdlCadastroCaracteristicasPF, UntDtMdlAncestralCadastro;

{$R *.dfm}

procedure TFrmCadastroCaracteristicasPF.FormCreate(Sender: TObject);
begin
   inherited;
   try
      DtMdlDados := TDtMdlCadastroCaracteristicasPF.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

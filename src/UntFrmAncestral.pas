unit UntFrmAncestral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFrmAncestral = class(TForm)
  private
    { Private declarations }
  protected
      function TratarErro(Mensagem: String): Integer; virtual;
  public
    { Public declarations }
  end;

var
  FrmAncestral: TFrmAncestral;

implementation

{$R *.dfm}

function TFrmAncestral.TratarErro(Mensagem: String): Integer;
begin
   Result := MessageDlg(Mensagem, mtError, mbOKCancel, 0);
end;

end.

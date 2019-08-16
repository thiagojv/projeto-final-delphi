unit UntFrmCadastroTiposFundamentaisCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroTiposFundamentaisCOCOMO = class(TFrmAncestralCadastro)
    lblNome: TLabel;
    dbdtNome: TDBEdit;
    Label1: TLabel;
    dbdtPrazoFatorMultiplicacao: TDBEdit;
    Label2: TLabel;
    dbdtPrazoExponencial: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroTiposFundamentaisCOCOMO: TFrmCadastroTiposFundamentaisCOCOMO;

implementation

uses UntDtMdlCadastroTiposFundamentaisCOCOMO;

{$R *.dfm}

procedure TFrmCadastroTiposFundamentaisCOCOMO.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastroTiposFundamentaisCOCOMO.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

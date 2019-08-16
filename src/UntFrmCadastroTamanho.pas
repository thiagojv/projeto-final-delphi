unit UntFrmCadastroTamanho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroTamanho = class(TFrmAncestralCadastro)
    lblDescricao: TLabel;
    lblTamanho: TLabel;
    lblTamanhoA: TLabel;
    dbdtDescricao: TDBEdit;
    dbdtTamanhoMinimo: TDBEdit;
    dbdtTamanhoMaximo: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroTamanho: TFrmCadastroTamanho;

implementation

uses UntDtMdlCadastroTamanho, UntFrmAncestral;

{$R *.dfm}

procedure TFrmCadastroTamanho.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastroTamanho.Create(self);
   except
      on Ex: Exception do
         TratarErro(Ex.Message);
   end;
end;

end.

unit UntFrmCadastroFase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroFase = class(TFrmAncestralCadastro)
    dtsrcFase: TDataSource;
    lblDescricao: TLabel;
    lblAncestral: TLabel;
    dbdtDescricao: TDBEdit;
    dblkpcmbxAncestral: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
  protected
    procedure Carregar; override;
  public
  end;

var
  FrmCadastroFase: TFrmCadastroFase;

implementation

uses UntDtMdlCadastroFase;

{$R *.dfm}

procedure TFrmCadastroFase.Carregar;
begin
  inherited;
   PrepararDataSource(dtsrcFase, TDtMdlCadastroFase(DtMdlDados).DataSetFase);
end;

procedure TFrmCadastroFase.FormCreate(Sender: TObject);
begin
   inherited;
   try
      DtMdlDados := TDtMdlCadastroFase.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

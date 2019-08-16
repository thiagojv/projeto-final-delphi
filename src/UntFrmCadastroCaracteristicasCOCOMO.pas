unit UntFrmCadastroCaracteristicasCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroCaracteristicasCOCOMO = class(TFrmAncestralCadastro)
    dtsrcCaracteristicas: TDataSource;
    lblDescricao: TLabel;
    lblSigla: TLabel;
    lblAncestral: TLabel;
    dbdtDescricao: TDBEdit;
    dbdtSigla: TDBEdit;
    dblkpcmbxAncestral: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
  protected
    procedure Carregar; override;
  public
  end;

var
  FrmCadastroCaracteristicasCOCOMO: TFrmCadastroCaracteristicasCOCOMO;

implementation

uses UntDtMdlCadastroCaracteristicasCOCOMO;

{$R *.dfm}

procedure TFrmCadastroCaracteristicasCOCOMO.Carregar;
begin
   inherited;
   PrepararDataSource(dtsrcCaracteristicas, TDtMdlCadastroCaracteristicasCOCOMO(DtMdlDados).DataSetCaracteristicas);
end;

procedure TFrmCadastroCaracteristicasCOCOMO.FormCreate(Sender: TObject);
begin
   inherited;
   try
      DtMdlDados := TDtMdlCadastroCaracteristicasCOCOMO.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

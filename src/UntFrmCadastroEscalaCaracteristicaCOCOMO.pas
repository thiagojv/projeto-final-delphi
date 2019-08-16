unit UntFrmCadastroEscalaCaracteristicaCOCOMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroEscalaCaracteristicaCOCOMO = class(TFrmAncestralCadastro)
    dtsrcCaracteristicas: TDataSource;
    dtsrcEscala: TDataSource;
    lblCaracteristica: TLabel;
    lblEscala: TLabel;
    lblFatorAjuste: TLabel;
    lblClassificacao: TLabel;
    dblkpcmbxCaracteristica: TDBLookupComboBox;
    dblkpcmbxEscala: TDBLookupComboBox;
    dbdtFatorAjuste: TDBEdit;
    dbdtClassificacao: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
  protected
    procedure Carregar; override;
  public
  end;

var
  FrmCadastroEscalaCaracteristicaCOCOMO: TFrmCadastroEscalaCaracteristicaCOCOMO;

implementation

uses UntDtMdlCadastroEscalaCaracteristicaCOCOMO;

{$R *.dfm}

procedure TFrmCadastroEscalaCaracteristicaCOCOMO.Carregar;
begin
   inherited;
   PrepararDataSource(dtsrcEscala, TDtMdlCadastroEscalaCaracteristicaCOCOMO(DtMdlDados).DataSetEscala);
   PrepararDataSource(dtsrcCaracteristicas, TDtMdlCadastroEscalaCaracteristicaCOCOMO(DtMdlDados).DataSetCaracteristica);
end;

procedure TFrmCadastroEscalaCaracteristicaCOCOMO.FormCreate(Sender: TObject);
begin
   inherited;
   try
      DtMdlDados := TDtMdlCadastroEscalaCaracteristicaCOCOMO.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

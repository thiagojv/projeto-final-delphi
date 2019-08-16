unit UntFrmCadastroEsforco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroEsforco = class(TFrmAncestralCadastro)
    dtsrcModelo: TDataSource;
    dtsrcTipoFundamental: TDataSource;
    lblModelo: TLabel;
    lblTipoFundamental: TLabel;
    lblFatorMultiplicacao: TLabel;
    lblExponencial: TLabel;
    dblkpcmbxModelo: TDBLookupComboBox;
    dblkpcmbxTipoFundamental: TDBLookupComboBox;
    dbdtFatorMultiplicacao: TDBEdit;
    dbdtExponencial: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
  protected
    procedure Carregar; override;
  public
  end;

var
  FrmCadastroEsforco: TFrmCadastroEsforco;

implementation

uses UntDtMdlCadastroEsforco;

{$R *.dfm}

procedure TFrmCadastroEsforco.Carregar;
begin
   inherited;
   PrepararDataSource(dtsrcModelo, TDtMdlCadastroEsforco(DtMdlDados).DataSetModelo);
   PrepararDataSource(dtsrcTipoFundamental, TDtMdlCadastroEsforco(DtMdlDados).DataSetTipoFundamental);
end;

procedure TFrmCadastroEsforco.FormCreate(Sender: TObject);
begin
   inherited;
   try
      DtMdlDados := TDtMdlCadastroEsforco.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

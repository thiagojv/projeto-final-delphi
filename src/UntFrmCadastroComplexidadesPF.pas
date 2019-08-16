unit UntFrmCadastroComplexidadesPF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  StdCtrls, Mask;

type
  TFrmCadastroComplexidadesPF = class(TFrmAncestralCadastro)
    dtsrcAtributo: TDataSource;
    lblAtributo: TLabel;
    lblParametro1: TLabel;
    lblParametro2: TLabel;
    lblParametro3: TLabel;
    lblParametro4: TLabel;
    lblNivel: TLabel;
    lblPeso: TLabel;
    dbdtParametro1Minimo: TDBEdit;
    dbdtParametro1Maximo: TDBEdit;
    dbdtParametro2Minimo: TDBEdit;
    dbdtParametro2Maximo: TDBEdit;
    dbdtParametro3Minimo: TDBEdit;
    dbdtParametro3Maximo: TDBEdit;
    dbdtParametro4Minimo: TDBEdit;
    dbdtParametro4Maximo: TDBEdit;
    dbdtNivel: TDBEdit;
    dblkpcmbxAtributo: TDBLookupComboBox;
    dbdtPeso: TDBEdit;
    lblParametro1A: TLabel;
    lblParametro2A: TLabel;
    lblParametro3A: TLabel;
    lblParametro4A: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
      procedure Carregar; override;
  public
    { Public declarations }
  end;

var
  FrmCadastroComplexidadesPF: TFrmCadastroComplexidadesPF;

implementation

uses UntDtMdlCadastroComplexidadesPF;

{$R *.dfm}

procedure TFrmCadastroComplexidadesPF.Carregar;
begin
   inherited;
   PrepararDataSource(dtsrcAtributo, TDtMdlCadastroComplexidadesPF(DtMdlDados).DataSetAtributos);
end;

procedure TFrmCadastroComplexidadesPF.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastroComplexidadesPF.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

end.

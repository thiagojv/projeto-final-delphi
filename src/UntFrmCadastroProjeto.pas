unit UntFrmCadastroProjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestralCadastro, DB, ImgList, ExtCtrls, DBCtrls,
  ComCtrls, StdCtrls, Mask, Grids, DBGrids;

type
  TFrmCadastroProjeto = class(TFrmAncestralCadastro)
    dtsrcLinguagem: TDataSource;
    dtsrcModelo: TDataSource;
    dtsrcTipo_Fundamental: TDataSource;
    dtsrcProjeto_Atributo: TDataSource;
    dtsrcProjeto_COCOMO_Caracteristicas: TDataSource;
    dtsrcProjeto_Linguagem: TDataSource;
    dtsrcProjeto_PF_Caracteristicas: TDataSource;
    pgcntrlCadastro: TPageControl;
    tbshtProjeto: TTabSheet;
    tbshtLinguagens: TTabSheet;
    tbshtAtributos: TTabSheet;
    tbshtCaracteristicas: TTabSheet;
    lblNome: TLabel;
    lblPeriodo: TLabel;
    lblPeriodoA: TLabel;
    lblModelo: TLabel;
    lblTipoFundamental: TLabel;
    dbdtNome: TDBEdit;
    dblkpcmbxModelo: TDBLookupComboBox;
    dblkpcmbxTipo_Fundamental: TDBLookupComboBox;
    dtmpckrPeriodoFinal: TDateTimePicker;
    dtmpckrPeriodoInicial: TDateTimePicker;
    dbchkbxStatus: TDBCheckBox;
    dbgrdLinguagens: TDBGrid;
    lblAtributo: TLabel;
    lblDescricao: TLabel;
    lblQuantidadeParametro1: TLabel;
    lblQuantidadeParametro2: TLabel;
    lblQuantidadeParametro3: TLabel;
    lblQuantidadeParametro4: TLabel;
    dblkpcmbxAtributo: TDBLookupComboBox;
    dbdtDescricao: TDBEdit;
    dbdtQuantidadeParametro1: TDBEdit;
    dbdtQuantidadeParametro2: TDBEdit;
    dbdtQuantidadeParametro3: TDBEdit;
    dbdtQuantidadeParametro4: TDBEdit;
    dtsrcAtributo: TDataSource;
    dbnvgtrProjeto_Atributo: TDBNavigator;
    pgcntrlCaracteristicas: TPageControl;
    tbshtPontosFuncao: TTabSheet;
    tbshtCOCOMO: TTabSheet;
    dbgrdCaracteristicasPF: TDBGrid;
    dbgrdCaracteristicasCOCOMO: TDBGrid;
    tbshtHistorico: TTabSheet;
    dbgrdHistorico: TDBGrid;
    dtsrcProjeto_Historico: TDataSource;
    procedure dblkpcmbxAtributoCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtsrcCadastroUpdateData(Sender: TObject);
  private
  protected
    procedure Carregar; override;
  public
  end;

var
  FrmCadastroProjeto: TFrmCadastroProjeto;

implementation

uses UntDtMdlCadastroProjeto;

{$R *.dfm}

procedure TFrmCadastroProjeto.Carregar;
begin
  inherited;
   PrepararDataSource(dtsrcLinguagem, TDtMdlCadastroProjeto(DtMdlDados).DataSetLinguagem);
   PrepararDataSource(dtsrcModelo, TDtMdlCadastroProjeto(DtMdlDados).DataSetModelo);
   PrepararDataSource(dtsrcTipo_Fundamental, TDtMdlCadastroProjeto(DtMdlDados).DataSetTipo_Fundamental);
   PrepararDataSource(dtsrcAtributo, TDtMdlCadastroProjeto(DtMdlDados).DataSetAtributo);

   pgcntrlCadastro.TabIndex := 0;
   pgcntrlCaracteristicas.TabIndex := 0;
end;

procedure TFrmCadastroProjeto.dblkpcmbxAtributoCloseUp(Sender: TObject);
begin
  inherited;
   if (dblkpcmbxAtributo.ListSource.DataSet.FieldByName('Extendido').AsBoolean) then
   begin
      dbdtQuantidadeParametro3.Enabled := True;
      dbdtQuantidadeParametro4.Enabled := True;
      dbdtQuantidadeParametro3.Color := clWindow;
      dbdtQuantidadeParametro4.Color := clWindow;
   end
   else
   begin
      dbdtQuantidadeParametro3.Enabled := False;
      dbdtQuantidadeParametro4.Enabled := False;
      dbdtQuantidadeParametro3.Color := clBtnFace;
      dbdtQuantidadeParametro4.Color := clBtnFace;
   end;
end;

procedure TFrmCadastroProjeto.FormCreate(Sender: TObject);
begin
  inherited;
   try
      DtMdlDados := TDtMdlCadastroProjeto.Create(self);
   except
      on E: Exception do
         TratarErro(E.Message);
   end;
end;

procedure TFrmCadastroProjeto.dtsrcCadastroUpdateData(Sender: TObject);
begin
  inherited;
   dtsrcCadastro.DataSet.FieldValues['Data_Inicio'] := dtmpckrPeriodoInicial.Date;
   dtsrcCadastro.DataSet.FieldValues['Data_Termino'] := dtmpckrPeriodoFinal.Date;
end;

end.

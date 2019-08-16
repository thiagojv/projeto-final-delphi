unit UntDtMdlCadastroProjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntDtMdlAncestralCadastro, FMTBcd, DBClient, Provider, DB,
  SqlExpr;

type
  TDtMdlCadastroProjeto = class(TDtMdlAncestralCadastro)
    dtsrcCadastro: TDataSource;
    clntdtstCadastroCodigo: TIntegerField;
    clntdtstCadastroNome: TStringField;
    clntdtstCadastroData_Inicio: TSQLTimeStampField;
    clntdtstCadastroData_Termino: TSQLTimeStampField;
    clntdtstCadastroModelo: TIntegerField;
    clntdtstCadastroTipo_Fundamental: TIntegerField;
    clntdtstCadastroStatus: TBooleanField;
    clntdtstCadastrosqldtstProjeto_Linguagem: TDataSetField;
    clntdtstProjeto_Linguagem: TClientDataSet;
    clntdtstProjeto_LinguagemProjeto: TIntegerField;
    clntdtstProjeto_LinguagemDescricaoLinguagem: TStringField;
    clntdtstProjeto_LinguagemLinguagem: TIntegerField;
    clntdtstProjeto_PF_Caracteristicas: TClientDataSet;
    clntdtstProjeto_PF_CaracteristicasCaracteristica: TIntegerField;
    clntdtstProjeto_PF_CaracteristicasProjeto: TIntegerField;
    clntdtstProjeto_PF_CaracteristicasNivel_Influencia: TIntegerField;
    clntdtstProjeto_COCOMO_Caracteristicas: TClientDataSet;
    clntdtstProjeto_COCOMO_CaracteristicasProjeto: TIntegerField;
    clntdtstProjeto_COCOMO_CaracteristicasCOCOMO_Caracteristica: TIntegerField;
    clntdtstProjeto_COCOMO_CaracteristicasCOCOMO_Escala: TIntegerField;
    clntdtstLinguagem: TClientDataSet;
    clntdtstLinguagemCodigo: TIntegerField;
    clntdtstLinguagemNome: TStringField;
    clntdtstModelo: TClientDataSet;
    clntdtstModeloCodigo: TIntegerField;
    clntdtstModeloNome: TStringField;
    clntdtstTipo_Fundamental: TClientDataSet;
    clntdtstTipo_FundamentalCodigo: TIntegerField;
    clntdtstTipo_FundamentalNome: TStringField;
    clntdtstAtributo: TClientDataSet;
    clntdtstAtributoCodigo: TIntegerField;
    clntdtstAtributoNome: TStringField;
    clntdtstAtributoExtendido: TBooleanField;
    sqldtstAtributo: TSQLDataSet;
    sqldtstProjeto_COCOMO_Caract: TSQLDataSet;
    sqldtstProjeto_PF_Caract: TSQLDataSet;
    sqldtstLinguagem: TSQLDataSet;
    sqldtstModelo: TSQLDataSet;
    sqldtstProjeto_Linguagem: TSQLDataSet;
    sqldtstTipo_Fundamental: TSQLDataSet;
    dtstprvdrAtributo: TDataSetProvider;
    dtstprvdrLinguagem: TDataSetProvider;
    dtstprvdrModelo: TDataSetProvider;
    dtstprvdrTipo_Fundamental: TDataSetProvider;
    sqldtstProjeto_Atributo: TSQLDataSet;
    clntdtstProjeto_Atributo: TClientDataSet;
    clntdtstProjeto_AtributoProjeto: TIntegerField;
    clntdtstProjeto_AtributoAtributo: TIntegerField;
    clntdtstProjeto_AtributoDescricao: TStringField;
    clntdtstProjeto_AtributoComplexidade: TIntegerField;
    clntdtstProjeto_AtributoQuantidade_Parametro_1: TFloatField;
    clntdtstProjeto_AtributoQuantidade_Parametro_2: TFloatField;
    clntdtstProjeto_AtributoQuantidade_Parametro_3: TFloatField;
    clntdtstProjeto_AtributoQuantidade_Parametro_4: TFloatField;
    sqldtstPF_Caracteristicas: TSQLDataSet;
    dtstprvdrPF_Caracteristicas: TDataSetProvider;
    clntdtstPF_Caracteristicas: TClientDataSet;
    sqldtstPF_Nivel_Influencia: TSQLDataSet;
    dtstprvdrPF_Nivel_Influencia: TDataSetProvider;
    clntdtstPF_Nivel_Influencia: TClientDataSet;
    clntdtstPF_Nivel_InfluenciaCodigo: TIntegerField;
    clntdtstPF_Nivel_InfluenciaDescricao: TStringField;
    clntdtstPF_CaracteristicasCodigo: TIntegerField;
    clntdtstPF_CaracteristicasDescricao: TStringField;
    clntdtstProjeto_PF_CaracteristicasDescricaoCaracteristica: TStringField;
    clntdtstProjeto_PF_CaracteristicasDescricaoNivelInfluencia: TStringField;
    clntdtstCadastrosqldtstProjeto_PF_Caract: TDataSetField;
    clntdtstCadastrosqldtstProjeto_COCOMO_Caract: TDataSetField;
    sqldtstCOCOMO_Caracteristicas: TSQLDataSet;
    dtstprvdrCOCOMO_Caracteristicas: TDataSetProvider;
    clntdtstCOCOMO_Caracteristicas: TClientDataSet;
    sqldtstCOCOMO_Escala: TSQLDataSet;
    dtstprvdrCOCOMO_Escala: TDataSetProvider;
    clntdtstCOCOMO_Escala: TClientDataSet;
    clntdtstCOCOMO_CaracteristicasCodigo: TIntegerField;
    clntdtstCOCOMO_CaracteristicasDescricao: TStringField;
    clntdtstCOCOMO_EscalaCodigo: TIntegerField;
    clntdtstCOCOMO_EscalaDescricao: TStringField;
    clntdtstProjeto_COCOMO_CaracteristicasDescricaoCaracteristica: TStringField;
    clntdtstProjeto_COCOMO_CaracteristicasDescricaoEscala: TStringField;
    clntdtstCadastrosqldtstProjeto_Atributo: TDataSetField;
    clntdtstProjeto_AtributoID: TIntegerField;
    sqldtstProjeto_Historico: TSQLDataSet;
    clntdtstProjeto_Historico: TClientDataSet;
    clntdtstCadastrosqldtstProjeto_Historico: TDataSetField;
    clntdtstProjeto_HistoricoCodigo: TIntegerField;
    clntdtstProjeto_HistoricoProjeto: TIntegerField;
    clntdtstProjeto_HistoricoData: TSQLTimeStampField;
    clntdtstProjeto_HistoricoTamanho_PF: TFloatField;
    procedure clntdtstCadastroBeforePost(DataSet: TDataSet);
    procedure clntdtstProjeto_AtributoBeforePost(DataSet: TDataSet);
    procedure clntdtstProjeto_LinguagemBeforePost(DataSet: TDataSet);
    procedure clntdtstProjeto_PF_CaracteristicasBeforePost(
      DataSet: TDataSet);
    procedure clntdtstProjeto_COCOMO_CaracteristicasBeforePost(
      DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
  public
      property DataSetLinguagem: TClientDataSet read clntdtstLinguagem write clntdtstLinguagem;
      property DataSetModelo: TClientDataSet read clntdtstModelo write clntdtstModelo;
      property DataSetTipo_Fundamental: TClientDataSet read clntdtstTipo_Fundamental write clntdtstTipo_Fundamental;
      property DataSetAtributo: TClientDataSet read clntdtstAtributo write clntdtstAtributo;
      property DataSetPF_Caracteristicas: TClientDataSet read clntdtstPF_Caracteristicas write clntdtstPF_Caracteristicas;
      property DataSetPF_Nivel_Influencia: TClientDataSet read clntdtstPF_Nivel_Influencia write clntdtstPF_Nivel_Influencia;
  end;

var
  DtMdlCadastroProjeto: TDtMdlCadastroProjeto;

implementation

uses UntDtMdlConexao, UntDtMdlCalculoComplexidade;

{$R *.dfm}

procedure TDtMdlCadastroProjeto.clntdtstCadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   if clntdtstCadastro.State = dsInsert then
      clntdtstCadastroCodigo.Value := Sequencial.GerarSequencial('Codigo', 'Projeto')
end;

procedure TDtMdlCadastroProjeto.clntdtstProjeto_AtributoBeforePost(
  DataSet: TDataSet);
var
   Calculo: TDtMdlCalculoComplexidade;
begin
  inherited;
   if clntdtstProjeto_Atributo.State = dsInsert then
   begin
      Calculo := TDtMdlCalculoComplexidade.Create(self);

      if (clntdtstAtributoExtendido.AsBoolean) then
         Calculo.Calcular(clntdtstProjeto_AtributoAtributo.Value, clntdtstProjeto_AtributoQuantidade_Parametro_1.AsInteger, clntdtstProjeto_AtributoQuantidade_Parametro_2.AsInteger, clntdtstProjeto_AtributoQuantidade_Parametro_3.AsInteger, clntdtstProjeto_AtributoQuantidade_Parametro_4.AsInteger)
      else
         Calculo.Calcular(clntdtstProjeto_AtributoAtributo.Value, clntdtstProjeto_AtributoQuantidade_Parametro_1.AsInteger, clntdtstProjeto_AtributoQuantidade_Parametro_2.AsInteger);

      clntdtstProjeto_AtributoProjeto.Value := clntdtstCadastroCodigo.Value;
      clntdtstProjeto_AtributoID.Value := Sequencial.GerarSequencial('ID', 'Projeto_Atributo');
      clntdtstProjeto_AtributoComplexidade.Value := Calculo.Codigo;
   end;
end;

procedure TDtMdlCadastroProjeto.clntdtstProjeto_LinguagemBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   if (clntdtstProjeto_Linguagem.State = dsInsert) then
      clntdtstProjeto_LinguagemProjeto.Value := clntdtstCadastroCodigo.Value;
end;

procedure TDtMdlCadastroProjeto.clntdtstProjeto_PF_CaracteristicasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   if clntdtstProjeto_PF_Caracteristicas.State = dsInsert then
      clntdtstProjeto_PF_CaracteristicasProjeto.Value := clntdtstCadastroCodigo.Value;
end;

procedure TDtMdlCadastroProjeto.clntdtstProjeto_COCOMO_CaracteristicasBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   if clntdtstProjeto_COCOMO_Caracteristicas.State = dsInsert then
      clntdtstProjeto_COCOMO_CaracteristicasProjeto.Value := clntdtstCadastroCodigo.Value;
end;

procedure TDtMdlCadastroProjeto.DataModuleCreate(Sender: TObject);
begin
  inherited;
//
end;

end.

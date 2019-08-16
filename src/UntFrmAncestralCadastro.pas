unit UntFrmAncestralCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntFrmAncestral, ToolWin, ComCtrls, ImgList, DB, ExtCtrls,
  DBCtrls, UntDtMdlAncestralCadastro, QControls;

type
  TFrmAncestralCadastro = class(TFrmAncestral)
    imglstCadastro: TImageList;
    scrlbxCadastro: TScrollBox;
    dtsrcCadastro: TDataSource;
    dbnvgtrCadastro: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FDtMdlDados: TDtMdlAncestralCadastro;
  protected
    procedure PrepararDataSource(Origem: TDataSource; Dados: TDataSet); virtual;
    procedure Carregar; virtual;
    procedure Fechar; virtual;
    property DtMdlDados: TDtMdlAncestralCadastro read FDtMdlDados write FDtMdlDados;
  public
  end;

var
  FrmAncestralCadastro: TFrmAncestralCadastro;

implementation

{$R *.dfm}

procedure TFrmAncestralCadastro.FormShow(Sender: TObject);
begin
   inherited;
   Carregar;
end;

procedure TFrmAncestralCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   Fechar;
end;

procedure TFrmAncestralCadastro.Carregar;
begin
   PrepararDataSource(dtsrcCadastro, DtMdlDados.DataSet);
end;

procedure TFrmAncestralCadastro.Fechar;
begin
   try
      dtsrcCadastro.DataSet.Close;
   except on ex: Exception do
      TratarErro(ex.Message);
   end;
   Self.Destroy;
end;

procedure TFrmAncestralCadastro.FormDestroy(Sender: TObject);
begin
   inherited;
   DtMdlDados := nil
end;

procedure TFrmAncestralCadastro.PrepararDataSource(Origem: TDataSource; Dados: TDataSet);
begin
   try
      Origem.DataSet := Dados;
      Origem.DataSet.Open;
   except on ex: Exception do
      TratarErro(ex.Message);
   end;
end;

procedure TFrmAncestralCadastro.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if Key = 113 then
   begin
      if (dtsrccadastro.State = dsBrowse) then
         dtsrcCadastro.DataSet.Insert
   end
   else if Key = 116 then
   begin
      if (dtsrccadastro.State = dsInsert) or (dtsrccadastro.State = dsEdit) then
         dtsrcCadastro.DataSet.Post
   end
   else if Key = 117 then
   begin
      if (dtsrccadastro.State = dsInsert) or (dtsrccadastro.State = dsEdit) then
         dtsrcCadastro.DataSet.Cancel;
   end
end;

end.

inherited FrmCadastrosModelosCOCOMO: TFrmCadastrosModelosCOCOMO
  Width = 420
  Height = 109
  Caption = 'Cadastro de Modelos do COCOMO'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 412
    Height = 42
    object lblDescricao: TLabel
      Left = 8
      Top = 12
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
      Layout = tlCenter
    end
    object dbdtDescricao: TDBEdit
      Left = 64
      Top = 8
      Width = 329
      Height = 21
      DataField = 'Nome'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 412
  end
  inherited imglstCadastro: TImageList
    Left = 272
    Top = 56
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastrosModeloCOCOMO.clntdtstCadastro
    Left = 304
    Top = 56
  end
end

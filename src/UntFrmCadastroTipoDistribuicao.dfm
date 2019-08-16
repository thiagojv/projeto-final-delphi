inherited FrmCadastroTipoDistribuicao: TFrmCadastroTipoDistribuicao
  Left = 209
  Top = 150
  Width = 477
  Height = 119
  Caption = 'Cadastro de Tipos de Distribui'#231#227'o'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 469
    Height = 52
    object lblDescricao: TLabel
      Left = 8
      Top = 20
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
    end
    object dbdtDescricao: TDBEdit
      Left = 64
      Top = 16
      Width = 385
      Height = 21
      DataField = 'Descricao'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 469
  end
  inherited imglstCadastro: TImageList
    Left = 205
    Top = 56
  end
  inherited dtsrcCadastro: TDataSource
    Left = 237
    Top = 56
  end
end

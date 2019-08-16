inherited FrmCadastroLinguagem: TFrmCadastroLinguagem
  Width = 407
  Height = 133
  Caption = 'Cadastro de Linguagens'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 399
    Height = 66
    object lblNome: TLabel
      Left = 53
      Top = 12
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome'
      Layout = tlCenter
    end
    object lblEquivalentePF: TLabel
      Left = 9
      Top = 36
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Equivalente PF'
      Layout = tlCenter
    end
    object dbdtNome: TDBEdit
      Left = 88
      Top = 8
      Width = 297
      Height = 21
      DataField = 'Nome'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
    object dbdtEquivalentePF: TDBEdit
      Left = 88
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Equivalente_PF'
      DataSource = dtsrcCadastro
      TabOrder = 1
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 399
  end
  inherited imglstCadastro: TImageList
    Left = 320
    Top = 64
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroLinguagem.clntdtstCadastro
    Left = 352
    Top = 64
  end
end

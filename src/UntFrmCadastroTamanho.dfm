inherited FrmCadastroTamanho: TFrmCadastroTamanho
  Width = 351
  Height = 133
  Caption = 'Cadastro de Tamanho para Distribui'#231#227'o de Rayleigh'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 343
    Height = 66
    object lblDescricao: TLabel
      Left = 9
      Top = 12
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
      Layout = tlCenter
    end
    object lblTamanho: TLabel
      Left = 12
      Top = 36
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tamanho'
      Layout = tlCenter
    end
    object lblTamanhoA: TLabel
      Left = 192
      Top = 36
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object dbdtDescricao: TDBEdit
      Left = 64
      Top = 8
      Width = 265
      Height = 21
      DataField = 'Descricao'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
    object dbdtTamanhoMinimo: TDBEdit
      Left = 64
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Tamanho_Min'
      DataSource = dtsrcCadastro
      TabOrder = 1
    end
    object dbdtTamanhoMaximo: TDBEdit
      Left = 208
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Tamanho_Max'
      DataSource = dtsrcCadastro
      TabOrder = 2
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 343
  end
  inherited imglstCadastro: TImageList
    Left = 264
    Top = 56
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroTamanho.clntdtstCadastro
    Left = 296
    Top = 56
  end
end

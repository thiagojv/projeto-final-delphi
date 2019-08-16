inherited FrmCadastroEsforco: TFrmCadastroEsforco
  Width = 495
  Height = 179
  Caption = 'Cadastro de regras de c'#225'lculo para Esfor'#231'o'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 487
    Height = 112
    object lblModelo: TLabel
      Left = 78
      Top = 12
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Modelo'
      Layout = tlCenter
    end
    object lblTipoFundamental: TLabel
      Left = 28
      Top = 36
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Fundamental'
      Layout = tlCenter
    end
    object lblFatorMultiplicacao: TLabel
      Left = 9
      Top = 60
      Width = 104
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fator de Multiplica'#231#227'o'
      Layout = tlCenter
    end
    object lblExponencial: TLabel
      Left = 55
      Top = 84
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Exponencial'
      Layout = tlCenter
    end
    object dblkpcmbxModelo: TDBLookupComboBox
      Left = 120
      Top = 8
      Width = 353
      Height = 21
      DataField = 'Modelo'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = dtsrcModelo
      TabOrder = 0
    end
    object dblkpcmbxTipoFundamental: TDBLookupComboBox
      Left = 120
      Top = 32
      Width = 353
      Height = 21
      DataField = 'Tipo_Fundamental'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = dtsrcTipoFundamental
      TabOrder = 1
    end
    object dbdtFatorMultiplicacao: TDBEdit
      Left = 120
      Top = 56
      Width = 121
      Height = 21
      DataField = 'Esforco_Fator_Multiplicacao'
      DataSource = dtsrcCadastro
      TabOrder = 2
    end
    object dbdtExponencial: TDBEdit
      Left = 120
      Top = 80
      Width = 121
      Height = 21
      DataField = 'Esforco_Exponencial'
      DataSource = dtsrcCadastro
      TabOrder = 3
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 487
  end
  inherited imglstCadastro: TImageList
    Left = 392
    Top = 48
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroEsforco.clntdtstCadastro
    Left = 424
    Top = 48
  end
  object dtsrcModelo: TDataSource
    DataSet = DtMdlCadastroEsforco.clntdtstModelo
    Left = 424
    Top = 80
  end
  object dtsrcTipoFundamental: TDataSource
    DataSet = DtMdlCadastroEsforco.clntdtstTipoFundamental
    Left = 424
    Top = 112
  end
end

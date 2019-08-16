inherited FrmCadastroAssociacaoRayleigh: TFrmCadastroAssociacaoRayleigh
  Left = 247
  Width = 707
  Height = 474
  Caption = 'Cadastro de Associa'#231#227'o de Rayleigh'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 699
    Height = 407
    object lblTipoFundamental: TLabel
      Left = 20
      Top = 10
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Fundamental'
      Layout = tlCenter
    end
    object lblFase: TLabel
      Left = 82
      Top = 34
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fase'
      Layout = tlCenter
    end
    object lblTamanho: TLabel
      Left = 60
      Top = 58
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tamanho'
      Layout = tlCenter
    end
    object lblTipoDistribuicao: TLabel
      Left = 11
      Top = 82
      Width = 94
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo de Distribui'#231#227'o'
      Layout = tlCenter
    end
    object lblPercentual: TLabel
      Left = 54
      Top = 106
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Percentual'
      Layout = tlCenter
    end
    object dblkpcmbxTipoFundamental: TDBLookupComboBox
      Left = 112
      Top = 8
      Width = 361
      Height = 21
      DataField = 'Tipo_Fundamental'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = dtsrcTipoFundamental
      TabOrder = 0
    end
    object dblkpcmbxFase: TDBLookupComboBox
      Left = 112
      Top = 32
      Width = 361
      Height = 21
      DataField = 'Fase'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dtsrcFase
      TabOrder = 1
    end
    object dblkpcmbxTamanho: TDBLookupComboBox
      Left = 112
      Top = 56
      Width = 361
      Height = 21
      DataField = 'Tamanho_Projeto'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dtsrcTamanho
      TabOrder = 2
    end
    object dblkpcmbxTipoDistribuicao: TDBLookupComboBox
      Left = 112
      Top = 80
      Width = 361
      Height = 21
      DataField = 'Tipo_Distribuicao'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dtsrcTipoDistribuicao
      TabOrder = 3
    end
    object dbdtPercentual: TDBEdit
      Left = 112
      Top = 104
      Width = 121
      Height = 21
      DataField = 'Percentual'
      DataSource = dtsrcCadastro
      TabOrder = 4
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 699
  end
  object dtsrcTipoFundamental: TDataSource [3]
    DataSet = DtMdlCadastroAssociacaoRayleigh.clntdtstTipoFundamental
    Left = 368
    Top = 256
  end
  object dtsrcFase: TDataSource [4]
    DataSet = DtMdlCadastroAssociacaoRayleigh.clntdtstFase
    Left = 368
    Top = 288
  end
  object dtsrcTamanho: TDataSource [5]
    DataSet = DtMdlCadastroAssociacaoRayleigh.clntdtstTamanho
    Left = 368
    Top = 320
  end
  object dtsrcTipoDistribuicao: TDataSource [6]
    DataSet = DtMdlCadastroAssociacaoRayleigh.clntdtstTipoDistribuicao
    Left = 368
    Top = 352
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroAssociacaoRayleigh.clntdtstCadastro
  end
end

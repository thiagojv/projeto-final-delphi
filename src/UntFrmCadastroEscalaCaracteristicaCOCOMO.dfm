inherited FrmCadastroEscalaCaracteristicaCOCOMO: TFrmCadastroEscalaCaracteristicaCOCOMO
  Left = 236
  Top = 250
  Width = 604
  Height = 381
  Caption = 'Associa'#231#227'o entre escalas e caracter'#237'sticas para o COCOMO'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 596
    Height = 314
    object lblCaracteristica: TLabel
      Left = 15
      Top = 12
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Caracter'#237'stica'
      Layout = tlCenter
    end
    object lblEscala: TLabel
      Left = 49
      Top = 36
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Escala'
      Layout = tlCenter
    end
    object lblFatorAjuste: TLabel
      Left = 10
      Top = 84
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fator de Ajuste'
      Layout = tlCenter
    end
    object lblClassificacao: TLabel
      Left = 19
      Top = 60
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'Classifica'#231#227'o'
      Layout = tlCenter
    end
    object dblkpcmbxCaracteristica: TDBLookupComboBox
      Left = 88
      Top = 8
      Width = 297
      Height = 21
      DataField = 'COCOMO_Caracteristica'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Sigla'
      ListSource = dtsrcCaracteristicas
      TabOrder = 0
    end
    object dblkpcmbxEscala: TDBLookupComboBox
      Left = 88
      Top = 32
      Width = 297
      Height = 21
      DataField = 'COCOMO_Escala'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dtsrcEscala
      TabOrder = 1
    end
    object dbdtFatorAjuste: TDBEdit
      Left = 88
      Top = 80
      Width = 121
      Height = 21
      DataField = 'Fator_Ajuste'
      DataSource = dtsrcCadastro
      TabOrder = 3
    end
    object dbdtClassificacao: TDBEdit
      Left = 88
      Top = 56
      Width = 297
      Height = 21
      DataField = 'Classificacao'
      DataSource = dtsrcCadastro
      TabOrder = 2
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 596
  end
  object dtsrcCaracteristicas: TDataSource [3]
    DataSet = DtMdlCadastroEscalaCaracteristicaCOCOMO.clntdtstCaracteristica
    Left = 368
    Top = 256
  end
  object dtsrcEscala: TDataSource [4]
    DataSet = DtMdlCadastroEscalaCaracteristicaCOCOMO.clntdtstEscala
    Left = 368
    Top = 288
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroEscalaCaracteristicaCOCOMO.clntdtstCadastro
  end
end

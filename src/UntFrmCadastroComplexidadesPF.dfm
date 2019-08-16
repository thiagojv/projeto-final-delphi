inherited FrmCadastroComplexidadesPF: TFrmCadastroComplexidadesPF
  Left = 188
  Top = 194
  Width = 376
  Height = 255
  Caption = 'Cadastro de Complexidades de Pontos de Fun'#231#227'o'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 368
    Height = 188
    object lblAtributo: TLabel
      Left = 32
      Top = 12
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Atributo'
      Layout = tlCenter
    end
    object lblParametro1: TLabel
      Left = 11
      Top = 36
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Par'#226'metro 1'
      Layout = tlCenter
    end
    object lblParametro2: TLabel
      Left = 11
      Top = 60
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Par'#226'metro 2'
      Layout = tlCenter
    end
    object lblParametro3: TLabel
      Left = 11
      Top = 84
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Par'#226'metro 3'
      Layout = tlCenter
    end
    object lblParametro4: TLabel
      Left = 11
      Top = 108
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Par'#226'metro 4'
      Layout = tlCenter
    end
    object lblNivel: TLabel
      Left = 42
      Top = 132
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#237'vel'
      Layout = tlCenter
    end
    object lblPeso: TLabel
      Left = 44
      Top = 156
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Peso'
      Layout = tlCenter
    end
    object lblParametro1A: TLabel
      Left = 208
      Top = 32
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object lblParametro2A: TLabel
      Left = 208
      Top = 56
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object lblParametro3A: TLabel
      Left = 208
      Top = 80
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object lblParametro4A: TLabel
      Left = 208
      Top = 104
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object dbdtParametro1Minimo: TDBEdit
      Left = 80
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Parametro_1_Minimo'
      DataSource = dtsrcCadastro
      TabOrder = 1
    end
    object dbdtParametro1Maximo: TDBEdit
      Left = 224
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Parametro_1_Maximo'
      DataSource = dtsrcCadastro
      TabOrder = 2
    end
    object dbdtParametro2Minimo: TDBEdit
      Left = 80
      Top = 56
      Width = 121
      Height = 21
      DataField = 'Parametro_2_Minimo'
      DataSource = dtsrcCadastro
      TabOrder = 3
    end
    object dbdtParametro2Maximo: TDBEdit
      Left = 224
      Top = 56
      Width = 121
      Height = 21
      DataField = 'Parametro_2_Maximo'
      DataSource = dtsrcCadastro
      TabOrder = 4
    end
    object dbdtParametro3Minimo: TDBEdit
      Left = 80
      Top = 80
      Width = 121
      Height = 21
      DataField = 'Parametro_3_Minimo'
      DataSource = dtsrcCadastro
      TabOrder = 5
    end
    object dbdtParametro3Maximo: TDBEdit
      Left = 224
      Top = 80
      Width = 121
      Height = 21
      DataField = 'Parametro_3_Maximo'
      DataSource = dtsrcCadastro
      TabOrder = 6
    end
    object dbdtParametro4Minimo: TDBEdit
      Left = 80
      Top = 104
      Width = 121
      Height = 21
      DataField = 'Parametro_4_Minimo'
      DataSource = dtsrcCadastro
      TabOrder = 7
    end
    object dbdtParametro4Maximo: TDBEdit
      Left = 224
      Top = 104
      Width = 121
      Height = 21
      DataField = 'Parametro_4_Maximo'
      DataSource = dtsrcCadastro
      TabOrder = 8
    end
    object dbdtNivel: TDBEdit
      Left = 80
      Top = 128
      Width = 121
      Height = 21
      DataField = 'Nivel'
      DataSource = dtsrcCadastro
      TabOrder = 9
    end
    object dblkpcmbxAtributo: TDBLookupComboBox
      Left = 80
      Top = 8
      Width = 265
      Height = 21
      DataField = 'Atributo'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = dtsrcAtributo
      TabOrder = 0
    end
    object dbdtPeso: TDBEdit
      Left = 80
      Top = 152
      Width = 121
      Height = 21
      DataField = 'Peso'
      DataSource = dtsrcCadastro
      TabOrder = 10
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 368
  end
  inherited imglstCadastro: TImageList
    Left = 256
    Top = 152
  end
  inherited dtsrcCadastro: TDataSource
    Left = 288
    Top = 152
  end
  object dtsrcAtributo: TDataSource
    DataSet = DtMdlCadastroComplexidadesPF.clntdtstAtributo
    Left = 288
    Top = 184
  end
end

inherited FrmCadastroAtributosPF: TFrmCadastroAtributosPF
  Caption = 'Cadastro de Atributos para Pontos de Fun'#231#227'o'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    object lblNome: TLabel
      Left = 69
      Top = 10
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome'
      Layout = tlCenter
    end
    object lblNomeParametro1: TLabel
      Left = 9
      Top = 34
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Par'#226'metro 1'
      Layout = tlCenter
    end
    object lblNomeParametro2: TLabel
      Left = 9
      Top = 58
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Par'#226'metro 2'
      Layout = tlCenter
    end
    object lblNomeParametro3: TLabel
      Left = 9
      Top = 82
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Par'#226'metro 3'
      Layout = tlCenter
    end
    object lblNomeParametro4: TLabel
      Left = 9
      Top = 106
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Par'#226'metro 4'
      Layout = tlCenter
    end
    object dbdtNome: TDBEdit
      Left = 104
      Top = 8
      Width = 289
      Height = 21
      DataField = 'Nome'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
    object dbdtNomeParametro1: TDBEdit
      Left = 104
      Top = 32
      Width = 289
      Height = 21
      DataField = 'Nome_Parametro_1'
      DataSource = dtsrcCadastro
      TabOrder = 1
    end
    object dbdtNomeParametro2: TDBEdit
      Left = 104
      Top = 56
      Width = 289
      Height = 21
      DataField = 'Nome_Parametro_2'
      DataSource = dtsrcCadastro
      TabOrder = 2
    end
    object dbdtNomeParametro3: TDBEdit
      Left = 104
      Top = 80
      Width = 289
      Height = 21
      DataField = 'Nome_Parametro_3'
      DataSource = dtsrcCadastro
      TabOrder = 3
    end
    object dbdtNomeParametro4: TDBEdit
      Left = 104
      Top = 104
      Width = 289
      Height = 21
      DataField = 'Nome_Parametro_4'
      DataSource = dtsrcCadastro
      TabOrder = 4
    end
    object dbchckbxExtendido: TDBCheckBox
      Left = 104
      Top = 128
      Width = 97
      Height = 17
      Caption = 'Extendido'
      DataField = 'Extendido'
      DataSource = dtsrcCadastro
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroAtributosPF.clntdtstCadastro
  end
end

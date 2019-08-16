inherited FrmCadastroCaracteristicasPF: TFrmCadastroCaracteristicasPF
  Caption = 'Cadastro de Caracter'#237'sticas de Pontos de Fun'#231#227'o'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
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
end

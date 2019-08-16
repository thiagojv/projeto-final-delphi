inherited FrmCadastroCaracteristicasCOCOMO: TFrmCadastroCaracteristicasCOCOMO
  Caption = 'Cadastro de Caracter'#237'sticas do COCOMO'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    object lblDescricao: TLabel
      Left = 25
      Top = 12
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
      Layout = tlCenter
    end
    object lblSigla: TLabel
      Left = 50
      Top = 36
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sigla'
      Layout = tlCenter
    end
    object lblAncestral: TLabel
      Left = 29
      Top = 60
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ancestral'
      Layout = tlCenter
    end
    object dbdtDescricao: TDBEdit
      Left = 80
      Top = 8
      Width = 297
      Height = 21
      DataField = 'Descricao'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
    object dbdtSigla: TDBEdit
      Left = 80
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Sigla'
      DataSource = dtsrcCadastro
      TabOrder = 1
    end
    object dblkpcmbxAncestral: TDBLookupComboBox
      Left = 80
      Top = 56
      Width = 385
      Height = 21
      DataField = 'Ancestral'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dtsrcCaracteristicas
      TabOrder = 2
    end
  end
  object dtsrcCaracteristicas: TDataSource
    DataSet = DtMdlCadastroCaracteristicasCOCOMO.clntdtstCaracteristicas
    Left = 368
    Top = 256
  end
end

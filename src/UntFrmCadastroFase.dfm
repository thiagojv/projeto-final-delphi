inherited FrmCadastroFase: TFrmCadastroFase
  Caption = 'Cadastro de Fases'
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
    object lblAncestral: TLabel
      Left = 29
      Top = 36
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ancestral'
      Layout = tlCenter
    end
    object dbdtDescricao: TDBEdit
      Left = 80
      Top = 8
      Width = 329
      Height = 21
      DataField = 'Descricao'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
    object dblkpcmbxAncestral: TDBLookupComboBox
      Left = 80
      Top = 32
      Width = 329
      Height = 21
      DataField = 'Ancestral'
      DataSource = dtsrcCadastro
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = dtsrcFase
      TabOrder = 1
    end
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroFase.clntdtstCadastro
  end
  object dtsrcFase: TDataSource
    DataSet = DtMdlCadastroFase.clntdtstFase
    Left = 368
    Top = 256
  end
end

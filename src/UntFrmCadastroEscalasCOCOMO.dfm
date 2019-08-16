inherited FrmCadastroEscalasCOCOMO: TFrmCadastroEscalasCOCOMO
  Width = 381
  Height = 108
  Caption = 'Cadastro de Escalas do COCOMO'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 373
    Height = 41
    object lblDescricao: TLabel
      Left = 9
      Top = 12
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
      Layout = tlCenter
    end
    object dbdtDescricao: TDBEdit
      Left = 64
      Top = 8
      Width = 297
      Height = 21
      DataField = 'Descricao'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 373
  end
  inherited imglstCadastro: TImageList
    Left = 288
    Top = 40
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroEscalasCOCOMO.clntdtstCadastro
    Left = 320
    Top = 40
  end
end

inherited FrmCadastroTiposFundamentaisCOCOMO: TFrmCadastroTiposFundamentaisCOCOMO
  Width = 582
  Height = 360
  Caption = 'Cadastro de Tipos Fundamentais para o COCOMO'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Width = 574
    Height = 293
    object lblNome: TLabel
      Left = 72
      Top = 12
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome'
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 11
      Top = 36
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fator Multiplica'#231#227'o'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 42
      Top = 60
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Exponencial'
      Layout = tlCenter
    end
    object dbdtNome: TDBEdit
      Left = 112
      Top = 8
      Width = 337
      Height = 21
      DataField = 'Nome'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
    object dbdtPrazoFatorMultiplicacao: TDBEdit
      Left = 112
      Top = 32
      Width = 89
      Height = 21
      DataField = 'Prazo_Fator_Multiplicacao'
      DataSource = dtsrcCadastro
      TabOrder = 1
    end
    object dbdtPrazoExponencial: TDBEdit
      Left = 112
      Top = 56
      Width = 89
      Height = 21
      DataField = 'Prazo_Exponencial'
      DataSource = dtsrcCadastro
      TabOrder = 2
    end
  end
  inherited dbnvgtrCadastro: TDBNavigator
    Width = 574
  end
  inherited imglstCadastro: TImageList
    Left = 256
    Top = 24
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroTiposFundamentaisCOCOMO.clntdtstCadastro
    Left = 288
    Top = 24
  end
end

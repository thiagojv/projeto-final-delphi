inherited FrmCadastroNivelInfluenciaPF: TFrmCadastroNivelInfluenciaPF
  Caption = 'Cadastro de N'#237'veis de Influ'#234'ncia para Pontos de Fun'#231#227'o'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    object lblDescricao: TLabel
      Left = 7
      Top = 12
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
      Layout = tlCenter
    end
    object lblNota: TLabel
      Left = 32
      Top = 36
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nota'
      Layout = tlCenter
    end
    object dbdtDescricao: TDBEdit
      Left = 64
      Top = 8
      Width = 321
      Height = 21
      DataField = 'Descricao'
      DataSource = dtsrcCadastro
      TabOrder = 0
    end
    object dbdtNota: TDBEdit
      Left = 64
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Nota'
      DataSource = dtsrcCadastro
      TabOrder = 1
    end
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroNivelInfluenciaPF.clntdtstCadastro
  end
end

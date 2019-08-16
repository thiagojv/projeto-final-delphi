inherited FrmCalculo: TFrmCalculo
  Left = 297
  Top = 115
  Width = 457
  Height = 395
  Caption = 'C'#225'lculos'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblDistribuicaoEsforco: TLabel
    Left = 8
    Top = 136
    Width = 101
    Height = 13
    Caption = 'Distrui'#231#227'o do Esfor'#231'o'
  end
  object lblDistribuicaoPrazo: TLabel
    Left = 232
    Top = 136
    Width = 100
    Height = 13
    Caption = 'Distribui'#231#227'o do Prazo'
  end
  object lblProjeto: TLabel
    Left = 8
    Top = 14
    Width = 33
    Height = 13
    Caption = 'Projeto'
  end
  object btnCalcular: TButton
    Left = 368
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object grpbxPontosFuncao: TGroupBox
    Left = 8
    Top = 48
    Width = 241
    Height = 81
    Caption = 'Pontos de Fun'#231#227'o'
    TabOrder = 1
    object lblQuantidadeBruta: TLabel
      Left = 98
      Top = 24
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade Bruta'
      Layout = tlCenter
    end
    object lblSPFNA: TLabel
      Left = 226
      Top = 24
      Width = 6
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Layout = tlCenter
    end
    object lblSomatoriaNiveisInfluencia: TLabel
      Left = 16
      Top = 40
      Width = 165
      Height = 13
      Caption = 'Somat'#243'ria dos N'#237'veis de Influ'#234'ncia'
    end
    object lblSNI: TLabel
      Left = 226
      Top = 40
      Width = 6
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 62
      Top = 56
      Width = 119
      Height = 13
      Caption = 'Quantidade n'#227'o ajustada'
    end
    object lblPF: TLabel
      Left = 226
      Top = 56
      Width = 6
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Layout = tlCenter
    end
  end
  object grpbxCOCOMO: TGroupBox
    Left = 256
    Top = 48
    Width = 137
    Height = 81
    Caption = 'COCOMO'
    TabOrder = 2
    object lblDSI: TLabel
      Left = 112
      Top = 24
      Width = 6
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Layout = tlCenter
    end
    object lblQuantidadeDSI: TLabel
      Left = 19
      Top = 24
      Width = 25
      Height = 13
      Caption = 'KDSI'
    end
    object lblCalculoEsforco: TLabel
      Left = 8
      Top = 40
      Width = 36
      Height = 13
      Caption = 'Esfor'#231'o'
    end
    object lblCalculoPrazo: TLabel
      Left = 17
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Prazo'
    end
    object lblEsforco: TLabel
      Left = 112
      Top = 40
      Width = 6
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Layout = tlCenter
    end
    object lblPrazo: TLabel
      Left = 112
      Top = 56
      Width = 6
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Layout = tlCenter
    end
  end
  object dbgrdEsforco: TDBGrid
    Left = 8
    Top = 152
    Width = 209
    Height = 201
    DataSource = dtsrcEsforco
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fase'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taRightJustify
        Width = 70
        Visible = True
      end>
  end
  object dbgrdPrazo: TDBGrid
    Left = 232
    Top = 152
    Width = 209
    Height = 201
    DataSource = dtsrcPrazo
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fase'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taRightJustify
        Width = 70
        Visible = True
      end>
  end
  object dblkpcmbxProjeto: TDBLookupComboBox
    Left = 48
    Top = 10
    Width = 313
    Height = 21
    KeyField = 'Codigo'
    ListField = 'Nome'
    ListSource = dtsrcProjeto
    TabOrder = 5
  end
  object dtsrcEsforco: TDataSource
    DataSet = DtMdlCalculoDistribuicao.clntdtstEsforco
    Left = 320
    Top = 208
  end
  object dtsrcPrazo: TDataSource
    DataSet = DtMdlCalculoDistribuicao.clntdtstPrazo
    Left = 352
    Top = 208
  end
  object dtsrcProjeto: TDataSource
    DataSet = DtMdlCalculo.clntdtstCadastro
    Left = 320
    Top = 240
  end
end

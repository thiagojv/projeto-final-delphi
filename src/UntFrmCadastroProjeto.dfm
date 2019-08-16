inherited FrmCadastroProjeto: TFrmCadastroProjeto
  Height = 599
  Caption = 'Cadastro de Projetos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited scrlbxCadastro: TScrollBox
    Height = 532
    object pgcntrlCadastro: TPageControl
      Left = 0
      Top = 0
      Width = 684
      Height = 528
      ActivePage = tbshtCaracteristicas
      Align = alClient
      TabOrder = 0
      object tbshtProjeto: TTabSheet
        Caption = 'Projeto'
        object lblNome: TLabel
          Left = 61
          Top = 12
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome'
          Layout = tlCenter
        end
        object lblPeriodo: TLabel
          Left = 51
          Top = 36
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Per'#237'odo'
          Layout = tlCenter
        end
        object lblPeriodoA: TLabel
          Left = 203
          Top = 36
          Width = 6
          Height = 13
          Alignment = taCenter
          Caption = 'a'
          Layout = tlCenter
        end
        object lblModelo: TLabel
          Left = 54
          Top = 60
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Modelo'
          Layout = tlCenter
        end
        object lblTipoFundamental: TLabel
          Left = 4
          Top = 84
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Fundamental'
          Layout = tlCenter
        end
        object dbdtNome: TDBEdit
          Left = 96
          Top = 8
          Width = 377
          Height = 21
          DataField = 'Nome'
          DataSource = dtsrcCadastro
          TabOrder = 0
        end
        object dblkpcmbxModelo: TDBLookupComboBox
          Left = 96
          Top = 56
          Width = 377
          Height = 21
          DataField = 'Modelo'
          DataSource = dtsrcCadastro
          KeyField = 'Codigo'
          ListField = 'Nome'
          ListSource = dtsrcModelo
          TabOrder = 3
        end
        object dblkpcmbxTipo_Fundamental: TDBLookupComboBox
          Left = 96
          Top = 80
          Width = 377
          Height = 21
          DataField = 'Tipo_Fundamental'
          DataSource = dtsrcCadastro
          KeyField = 'Codigo'
          ListField = 'Nome'
          ListSource = dtsrcTipo_Fundamental
          TabOrder = 4
        end
        object dtmpckrPeriodoFinal: TDateTimePicker
          Left = 224
          Top = 32
          Width = 97
          Height = 21
          Date = 39008.447080543990000000
          Time = 39008.447080543990000000
          TabOrder = 2
        end
        object dtmpckrPeriodoInicial: TDateTimePicker
          Left = 96
          Top = 32
          Width = 97
          Height = 21
          Date = 39008.447026990740000000
          Time = 39008.447026990740000000
          TabOrder = 1
        end
        object dbchkbxStatus: TDBCheckBox
          Left = 96
          Top = 104
          Width = 97
          Height = 17
          Caption = 'Ativo'
          DataField = 'Status'
          DataSource = dtsrcCadastro
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object tbshtLinguagens: TTabSheet
        Caption = 'Linguagens'
        ImageIndex = 1
        object dbgrdLinguagens: TDBGrid
          Left = 0
          Top = 0
          Width = 676
          Height = 500
          Align = alClient
          DataSource = dtsrcProjeto_Linguagem
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DescricaoLinguagem'
              Title.Caption = 'Linguagem'
              Width = 500
              Visible = True
            end>
        end
      end
      object tbshtAtributos: TTabSheet
        Caption = 'Atributos'
        ImageIndex = 2
        object lblAtributo: TLabel
          Left = 88
          Top = 44
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Atributo'
          Layout = tlCenter
        end
        object lblDescricao: TLabel
          Left = 76
          Top = 68
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o'
          Layout = tlCenter
        end
        object lblQuantidadeParametro1: TLabel
          Left = 9
          Top = 92
          Width = 115
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quantidade Par'#226'metro 1'
          Layout = tlCenter
        end
        object lblQuantidadeParametro2: TLabel
          Left = 9
          Top = 116
          Width = 115
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quantidade Par'#226'metro 2'
          Layout = tlCenter
        end
        object lblQuantidadeParametro3: TLabel
          Left = 9
          Top = 140
          Width = 115
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quantidade Par'#226'metro 3'
          Layout = tlCenter
        end
        object lblQuantidadeParametro4: TLabel
          Left = 9
          Top = 164
          Width = 115
          Height = 13
          Alignment = taRightJustify
          Caption = 'Quantidade Par'#226'metro 4'
          Layout = tlCenter
        end
        object dblkpcmbxAtributo: TDBLookupComboBox
          Left = 136
          Top = 40
          Width = 345
          Height = 21
          DataField = 'Atributo'
          DataSource = dtsrcProjeto_Atributo
          KeyField = 'Codigo'
          ListField = 'Nome'
          ListSource = dtsrcAtributo
          TabOrder = 0
          OnCloseUp = dblkpcmbxAtributoCloseUp
        end
        object dbdtDescricao: TDBEdit
          Left = 136
          Top = 64
          Width = 345
          Height = 21
          DataField = 'Descricao'
          DataSource = dtsrcProjeto_Atributo
          TabOrder = 1
        end
        object dbdtQuantidadeParametro1: TDBEdit
          Left = 136
          Top = 88
          Width = 73
          Height = 21
          DataField = 'Quantidade_Parametro_1'
          DataSource = dtsrcProjeto_Atributo
          TabOrder = 2
        end
        object dbdtQuantidadeParametro2: TDBEdit
          Left = 136
          Top = 112
          Width = 73
          Height = 21
          DataField = 'Quantidade_Parametro_2'
          DataSource = dtsrcProjeto_Atributo
          TabOrder = 3
        end
        object dbdtQuantidadeParametro3: TDBEdit
          Left = 136
          Top = 136
          Width = 73
          Height = 21
          DataField = 'Quantidade_Parametro_3'
          DataSource = dtsrcProjeto_Atributo
          TabOrder = 4
        end
        object dbdtQuantidadeParametro4: TDBEdit
          Left = 136
          Top = 160
          Width = 73
          Height = 21
          DataField = 'Quantidade_Parametro_4'
          DataSource = dtsrcProjeto_Atributo
          TabOrder = 5
        end
        object dbnvgtrProjeto_Atributo: TDBNavigator
          Left = 0
          Top = 0
          Width = 676
          Height = 25
          DataSource = dtsrcProjeto_Atributo
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alTop
          Flat = True
          TabOrder = 6
        end
      end
      object tbshtCaracteristicas: TTabSheet
        Caption = 'Caracter'#237'sticas'
        ImageIndex = 3
        object pgcntrlCaracteristicas: TPageControl
          Left = 0
          Top = 0
          Width = 676
          Height = 500
          ActivePage = tbshtCOCOMO
          Align = alClient
          TabOrder = 0
          object tbshtPontosFuncao: TTabSheet
            Caption = 'Pontos de Fun'#231#227'o'
            object dbgrdCaracteristicasPF: TDBGrid
              Left = 0
              Top = 0
              Width = 668
              Height = 472
              Align = alClient
              DataSource = dtsrcProjeto_PF_Caracteristicas
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DescricaoCaracteristica'
                  Width = 400
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DescricaoNivelInfluencia'
                  Visible = True
                end>
            end
          end
          object tbshtCOCOMO: TTabSheet
            Caption = 'COCOMO'
            ImageIndex = 1
            object dbgrdCaracteristicasCOCOMO: TDBGrid
              Left = 0
              Top = 0
              Width = 668
              Height = 472
              Align = alClient
              DataSource = dtsrcProjeto_COCOMO_Caracteristicas
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DescricaoCaracteristica'
                  Width = 300
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DescricaoEscala'
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
      end
      object tbshtHistorico: TTabSheet
        Caption = 'Hist'#243'rico'
        ImageIndex = 4
        object dbgrdHistorico: TDBGrid
          Left = 0
          Top = 0
          Width = 676
          Height = 500
          Align = alClient
          DataSource = dtsrcProjeto_Historico
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data'
              Title.Alignment = taCenter
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tamanho_PF'
              Title.Alignment = taRightJustify
              Width = 100
              Visible = True
            end>
        end
      end
    end
  end
  inherited dtsrcCadastro: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstCadastro
    OnUpdateData = dtsrcCadastroUpdateData
  end
  object dtsrcLinguagem: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstLinguagem
    Left = 368
    Top = 256
  end
  object dtsrcModelo: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstModelo
    Left = 368
    Top = 288
  end
  object dtsrcTipo_Fundamental: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstTipo_Fundamental
    Left = 368
    Top = 320
  end
  object dtsrcProjeto_Atributo: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstProjeto_Atributo
    Left = 368
    Top = 352
  end
  object dtsrcProjeto_COCOMO_Caracteristicas: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstProjeto_COCOMO_Caracteristicas
    Left = 368
    Top = 384
  end
  object dtsrcProjeto_Linguagem: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstProjeto_Linguagem
    Left = 400
    Top = 224
  end
  object dtsrcProjeto_PF_Caracteristicas: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstProjeto_PF_Caracteristicas
    Left = 400
    Top = 256
  end
  object dtsrcAtributo: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstAtributo
    Left = 400
    Top = 288
  end
  object dtsrcProjeto_Historico: TDataSource
    DataSet = DtMdlCadastroProjeto.clntdtstProjeto_Historico
    Left = 400
    Top = 320
  end
end

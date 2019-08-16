object FrmPrincipal: TFrmPrincipal
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Gerenciamento de projetos baseado em m'#233'tricas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mnmnPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  WindowMenu = mntmJanela
  PixelsPerInch = 96
  TextHeight = 13
  object stsbrPrincipal: TStatusBar
    Left = 0
    Top = 407
    Width = 688
    Height = 19
    Panels = <>
  end
  object mnmnPrincipal: TMainMenu
    Images = imglstPrincipal
    Left = 112
    Top = 240
    object mntmCadastros: TMenuItem
      Caption = 'Cadastros'
      object mntmCadastrosCOCOMO: TMenuItem
        Caption = 'COCOMO'
        object mntmCadastrosCOCOMOAssociacao: TMenuItem
          Caption = 'Associa'#231#227'o'
          OnClick = mntmCadastrosCOCOMOAssociacaoClick
        end
        object mntmCadastrosCOCOMOCaracteristicas: TMenuItem
          Caption = 'Caracter'#237'sticas'
          OnClick = mntmCadastrosCOCOMOCaracteristicasClick
        end
        object mntmCadastrosCOCOMOCalculoEsforco: TMenuItem
          Caption = 'C'#225'lculo do Esfor'#231'o'
          OnClick = mntmCadastrosCOCOMOCalculoEsforcoClick
        end
        object mntmCadastrosCOCOMOEscalas: TMenuItem
          Caption = 'Escalas'
          OnClick = mntmCadastrosCOCOMOEscalasClick
        end
        object mntmCadastrosCOCOMOLinguagem: TMenuItem
          Caption = 'Linguagem'
          OnClick = mntmCadastrosCOCOMOLinguagemClick
        end
        object mntmCadastrosCOCOMOModelos: TMenuItem
          Caption = 'Modelos'
          OnClick = mntmCadastrosCOCOMOModelosClick
        end
        object mntmCadastrosCOCOMOTiposFundamentais: TMenuItem
          Caption = 'Tipos Fundamentais'
          OnClick = mntmCadastrosCOCOMOTiposFundamentaisClick
        end
      end
      object mntmCadastrosPF: TMenuItem
        Caption = 'Pontos de Fun'#231#227'o'
        object mntmCadastrosPFAtributos: TMenuItem
          Caption = 'Atributos'
          OnClick = mntmCadastrosPFAtributosClick
        end
        object mntmCadastrosPFCaracteristicas: TMenuItem
          Caption = 'Caracter'#237'sticas'
          OnClick = mntmCadastrosPFCaracteristicasClick
        end
        object mntmCadastroPFComplexidades: TMenuItem
          Caption = 'Complexidades'
          OnClick = mntmCadastroPFComplexidadesClick
        end
        object mntmCadastrosPFNiveisInfluencia: TMenuItem
          Caption = 'N'#237'veis de Influ'#234'ncia'
          OnClick = mntmCadastrosPFNiveisInfluenciaClick
        end
      end
      object mntmCadastrosRayleigh: TMenuItem
        Caption = 'Rayleigh'
        object mntmCadastrosRayleighAssociacao: TMenuItem
          Caption = 'Associa'#231#227'o'
          OnClick = mntmCadastrosRayleighAssociacaoClick
        end
        object mntmCadastrosRayleighFases: TMenuItem
          Caption = 'Fases'
          OnClick = mntmCadastrosRayleighFasesClick
        end
        object mntmCadastrosRayleighTamanho: TMenuItem
          Caption = 'Tamanho'
          OnClick = mntmCadastrosRayleighTamanhoClick
        end
        object mntmCadastrosRayleighTipoDistribuicao: TMenuItem
          Caption = 'Tipos de Distribui'#231#227'o'
          OnClick = mntmCadastrosRayleighTipoDistribuicaoClick
        end
      end
    end
    object mntmManutencao: TMenuItem
      Caption = 'Manuten'#231#227'o'
      object mntmManutencaoProjeto: TMenuItem
        Caption = 'Projetos'
        OnClick = mntmManutencaoProjetoClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mntmManutencaoCalculos: TMenuItem
        Caption = 'C'#225'lculos'
        OnClick = mntmManutencaoCalculosClick
      end
    end
    object mntmJanela: TMenuItem
      Caption = 'Janela'
      Hint = 'Janela'
      object mntmJanelaCascata: TMenuItem
        Caption = 'Cascata'
      end
      object mntmJanelaSeparador1: TMenuItem
        Caption = '-'
      end
    end
  end
  object imglstPrincipal: TImageList
    Left = 144
    Top = 240
  end
end

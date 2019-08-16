inherited DtMdlCadastroAssociacaoRayleigh: TDtMdlCadastroAssociacaoRayleigh
  Height = 459
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Tipo_Fundamental,'#13#10#9'Fase,'#13#10#9'Tamanho_Projeto,'#13#10#9'Tipo_Dis' +
      'tribuicao,'#13#10#9'Percentual'#13#10'FROM Distribuicao_Esforco_Fase_Tipo'
    MaxBlobSize = -1
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  inherited clntdtstCadastro: TClientDataSet
    object clntdtstCadastroTipo_Fundamental: TIntegerField
      DisplayLabel = 'Tipo Fundamental'
      FieldName = 'Tipo_Fundamental'
      Required = True
    end
    object clntdtstCadastroFase: TIntegerField
      FieldName = 'Fase'
      Required = True
    end
    object clntdtstCadastroTamanho_Projeto: TIntegerField
      DisplayLabel = 'Tamanho Projeto'
      FieldName = 'Tamanho_Projeto'
      Required = True
    end
    object clntdtstCadastroTipo_Distribuicao: TIntegerField
      DisplayLabel = 'Tipo Distribui'#231#227'o'
      FieldName = 'Tipo_Distribuicao'
      Required = True
    end
    object clntdtstCadastroPercentual: TFloatField
      FieldName = 'Percentual'
      Required = True
    end
  end
  object sqldtstTipoFundamental: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Nome'#13#10'FROM Tipo_Fundamental'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 104
  end
  object dtstprvdrTipoFundamental: TDataSetProvider
    DataSet = sqldtstTipoFundamental
    Left = 214
    Top = 104
  end
  object clntdtstTipoFundamental: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrTipoFundamental'
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 104
    object clntdtstTipoFundamentalCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstTipoFundamentalNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
  end
  object sqldtstFase: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM Fases'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 168
  end
  object dtstprvdrFase: TDataSetProvider
    DataSet = sqldtstFase
    Left = 214
    Top = 168
  end
  object clntdtstFase: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrFase'
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 168
    object clntdtstFaseCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstFaseDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object sqldtstTamanho: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM Tamanho_Projeto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 240
  end
  object dtstprvdrTamanho: TDataSetProvider
    DataSet = sqldtstTamanho
    Left = 214
    Top = 240
  end
  object clntdtstTamanho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrTamanho'
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 240
    object clntdtstTamanhoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstTamanhoDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object sqldtstTipoDistribuicao: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM Tipo_Distribuicao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 304
  end
  object dtstprvdrTipoDistribuicao: TDataSetProvider
    DataSet = sqldtstTipoDistribuicao
    Left = 214
    Top = 304
  end
  object clntdtstTipoDistribuicao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrTipoDistribuicao'
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 304
    object clntdtstTipoDistribuicaoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstTipoDistribuicaoDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
  end
end

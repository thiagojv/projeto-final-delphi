inherited DtMdlCadastroEscalaCaracteristicaCOCOMO: TDtMdlCadastroEscalaCaracteristicaCOCOMO
  Height = 328
  Width = 500
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'COCOMO_Caracteristica,'#13#10#9'COCOMO_Escala,'#13#10#9'Fator_Ajuste,' +
      #13#10#9'Classificacao'#13#10'FROM COCOMO_Caracteristica_Escala'
    MaxBlobSize = -1
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  inherited clntdtstCadastro: TClientDataSet
    object clntdtstCadastroCOCOMO_Caracteristica: TIntegerField
      DisplayLabel = 'Caracter'#237'sticas'
      FieldName = 'COCOMO_Caracteristica'
      Required = True
    end
    object clntdtstCadastroCOCOMO_Escala: TIntegerField
      DisplayLabel = 'Escalas'
      FieldName = 'COCOMO_Escala'
      Required = True
    end
    object clntdtstCadastroFator_Ajuste: TFloatField
      DisplayLabel = 'Fator de Ajuste'
      FieldName = 'Fator_Ajuste'
      Required = True
    end
    object clntdtstCadastroClassificacao: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'Classificacao'
      Required = True
      Size = 100
    end
  end
  object sqldtstEscala: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM COCOMO_Escala'#13#10'ORDER BY'#13#10#9'Des' +
      'cricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 104
  end
  object dtstprvdrEscala: TDataSetProvider
    DataSet = sqldtstEscala
    Left = 214
    Top = 104
  end
  object clntdtstEscala: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrEscala'
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 104
    object clntdtstEscalaCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstEscalaDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object sqldtstCaracteristica: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Sigla'#13#10'FROM COCOMO_Caracteristicas'#13#10'ORDER BY'#13 +
      #10#9'Sigla'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 168
  end
  object dtstprvdrCaracteristica: TDataSetProvider
    DataSet = sqldtstCaracteristica
    Left = 214
    Top = 168
  end
  object clntdtstCaracteristica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrCaracteristica'
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 168
    object clntdtstCaracteristicaCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstCaracteristicaSigla: TStringField
      FieldName = 'Sigla'
      Required = True
      Size = 50
    end
  end
end

inherited DtMdlCadastroFase: TDtMdlCadastroFase
  Height = 270
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao,'#13#10#9'Ancestral'#13#10'FROM Fases'
    MaxBlobSize = -1
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  inherited clntdtstCadastro: TClientDataSet
    BeforePost = clntdtstCadastroBeforePost
    object clntdtstCadastroCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstCadastroDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
    object clntdtstCadastroAncestral: TIntegerField
      FieldName = 'Ancestral'
    end
  end
  object sqldtstFase: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM Fases'#13#10'ORDER BY'#13#10#9'Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 104
  end
  object dtstprvdrFase: TDataSetProvider
    DataSet = sqldtstFase
    Left = 214
    Top = 104
  end
  object clntdtstFase: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrFase'
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 104
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
end

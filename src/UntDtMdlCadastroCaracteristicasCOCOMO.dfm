inherited DtMdlCadastroCaracteristicasCOCOMO: TDtMdlCadastroCaracteristicasCOCOMO
  Height = 254
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao,'#13#10#9'Sigla,'#13#10#9'Ancestral'#13#10'FROM COCOMO_' +
      'Caracteristicas'#13#10'ORDER BY'#13#10#9'Descricao'
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
    object clntdtstCadastroSigla: TStringField
      FieldName = 'Sigla'
      Required = True
      Size = 50
    end
    object clntdtstCadastroAncestral: TIntegerField
      FieldName = 'Ancestral'
    end
  end
  object sqldtstCaracteristicas: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM COCOMO_Caracteristicas'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 104
  end
  object dtstprvdrCaracteristicas: TDataSetProvider
    DataSet = sqldtstCaracteristicas
    Left = 214
    Top = 104
  end
  object clntdtstCaracteristicas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrCaracteristicas'
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 104
    object clntdtstCaracteristicasCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstCaracteristicasDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
  end
end

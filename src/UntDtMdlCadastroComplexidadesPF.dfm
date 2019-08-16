inherited DtMdlCadastroComplexidadesPF: TDtMdlCadastroComplexidadesPF
  Left = 197
  Height = 234
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Atributo,'#13#10#9'Parametro_1_Minimo,'#13#10#9'Parametro_1' +
      '_Maximo,'#13#10#9'Parametro_2_Minimo,'#13#10#9'Parametro_2_Maximo,'#13#10#9'Parametro' +
      '_3_Minimo,'#13#10#9'Parametro_3_Maximo,'#13#10#9'Parametro_4_Minimo,'#13#10#9'Paramet' +
      'ro_4_Maximo,'#13#10#9'Nivel,'#13#10#9'Peso'#13#10'FROM Complexidade'
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
    object clntdtstCadastroAtributo: TIntegerField
      FieldName = 'Atributo'
      Required = True
    end
    object clntdtstCadastroParametro_1_Minimo: TFloatField
      DisplayLabel = 'Parametro 1 M'#237'nimo'
      FieldName = 'Parametro_1_Minimo'
      Required = True
    end
    object clntdtstCadastroParametro_1_Maximo: TFloatField
      DisplayLabel = 'Parametro 1 M'#225'ximo'
      FieldName = 'Parametro_1_Maximo'
      Required = True
    end
    object clntdtstCadastroParametro_2_Minimo: TFloatField
      DisplayLabel = 'Parametro 2 M'#237'nimo'
      FieldName = 'Parametro_2_Minimo'
      Required = True
    end
    object clntdtstCadastroParametro_2_Maximo: TFloatField
      DisplayLabel = 'Parametro 2 M'#225'ximo'
      FieldName = 'Parametro_2_Maximo'
      Required = True
    end
    object clntdtstCadastroParametro_3_Minimo: TFloatField
      DisplayLabel = 'Parametro 3 M'#237'nimo'
      FieldName = 'Parametro_3_Minimo'
    end
    object clntdtstCadastroParametro_3_Maximo: TFloatField
      DisplayLabel = 'Parametro 3 M'#225'ximo '
      FieldName = 'Parametro_3_Maximo'
    end
    object clntdtstCadastroParametro_4_Minimo: TFloatField
      DisplayLabel = 'Parametro 4 M'#237'nimo'
      FieldName = 'Parametro_4_Minimo'
    end
    object clntdtstCadastroParametro_4_Maximo: TFloatField
      DisplayLabel = 'Parametro 4 M'#225'ximo '
      FieldName = 'Parametro_4_Maximo'
    end
    object clntdtstCadastroNivel: TStringField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'Nivel'
      Required = True
      Size = 100
    end
    object clntdtstCadastroPeso: TFloatField
      FieldName = 'Peso'
      Required = True
    end
  end
  object sqldtstAtributo: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Nome'#13#10'FROM Atributo'#13#10'ORDER BY'#13#10#9'Nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 104
  end
  object dtstprvdrAtributo: TDataSetProvider
    DataSet = sqldtstAtributo
    Left = 214
    Top = 104
  end
  object clntdtstAtributo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrAtributo'
    ReadOnly = True
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 104
    object clntdtstAtributoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstAtributoNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
  end
end

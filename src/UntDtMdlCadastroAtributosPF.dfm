inherited DtMdlCadastroAtributosPF: TDtMdlCadastroAtributosPF
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Nome,'#13#10#9'Nome_Parametro_1,'#13#10#9'Nome_Parametro_2,' +
      #13#10#9'Nome_Parametro_3,'#13#10#9'Nome_Parametro_4,'#13#10#9'Extendido'#13#10'FROM Atrib' +
      'uto'#13#10'ORDER BY'#13#10#9'Nome'
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
    object clntdtstCadastroNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
    object clntdtstCadastroNome_Parametro_1: TStringField
      DisplayLabel = 'Nome Par'#226'metro 1'
      FieldName = 'Nome_Parametro_1'
      Required = True
      Size = 100
    end
    object clntdtstCadastroNome_Parametro_2: TStringField
      DisplayLabel = 'Nome Par'#226'metro 2'
      FieldName = 'Nome_Parametro_2'
      Required = True
      Size = 100
    end
    object clntdtstCadastroNome_Parametro_3: TStringField
      DisplayLabel = 'Nome Par'#226'metro 3'
      FieldName = 'Nome_Parametro_3'
      Size = 100
    end
    object clntdtstCadastroNome_Parametro_4: TStringField
      DisplayLabel = 'Nome Par'#226'metro 4'
      FieldName = 'Nome_Parametro_4'
      Size = 100
    end
    object clntdtstCadastroExtendido: TBooleanField
      DefaultExpression = #39'0'#39
      FieldName = 'Extendido'
      Required = True
    end
  end
end

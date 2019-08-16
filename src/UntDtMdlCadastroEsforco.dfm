inherited DtMdlCadastroEsforco: TDtMdlCadastroEsforco
  Height = 316
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Modelo,'#13#10#9'Tipo_Fundamental,'#13#10#9'Esforco_Fator_Multiplicac' +
      'ao,'#13#10#9'Esforco_Exponencial'#13#10'FROM Esforco_Modelo_Tipo'
    MaxBlobSize = -1
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  inherited clntdtstCadastro: TClientDataSet
    object clntdtstCadastroModelo: TIntegerField
      FieldName = 'Modelo'
      Required = True
    end
    object clntdtstCadastroTipo_Fundamental: TIntegerField
      DisplayLabel = 'Tipo Fundamental'
      FieldName = 'Tipo_Fundamental'
      Required = True
    end
    object clntdtstCadastroEsforco_Fator_Multiplicacao: TFloatField
      DisplayLabel = 'Esfor'#231'o Fator Multipli'#231#227'o'
      FieldName = 'Esforco_Fator_Multiplicacao'
      Required = True
    end
    object clntdtstCadastroEsforco_Exponencial: TFloatField
      DisplayLabel = 'Esfor'#231'o Exponencial'
      FieldName = 'Esforco_Exponencial'
      Required = True
    end
  end
  object sqldtstModelo: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Nome'#13#10'FROM Modelo'#13#10'ORDER BY'#13#10#9'Nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 104
  end
  object dtstprvdrModelo: TDataSetProvider
    DataSet = sqldtstModelo
    Left = 214
    Top = 104
  end
  object clntdtstModelo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrModelo'
    ReadOnly = True
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 104
    object clntdtstModeloCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstModeloNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
  end
  object sqldtstTipoFundamental: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Nome'#13#10'FROM Tipo_Fundamental'#13#10'ORDER BY'#13#10#9'Nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 54
    Top = 168
  end
  object dtstprvdrTipoFundamental: TDataSetProvider
    DataSet = sqldtstTipoFundamental
    Left = 214
    Top = 168
  end
  object clntdtstTipoFundamental: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrTipoFundamental'
    ReadOnly = True
    AfterPost = clntdtstCadastroAfterPost
    Left = 374
    Top = 168
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
end

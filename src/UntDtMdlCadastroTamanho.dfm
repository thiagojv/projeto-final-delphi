inherited DtMdlCadastroTamanho: TDtMdlCadastroTamanho
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao,'#13#10#9'Tamanho_Min,'#13#10#9'Tamanho_Max'#13#10'FROM' +
      ' Tamanho_Projeto'#13#10'ORDER BY'#13#10#9'Descricao'
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
    object clntdtstCadastroTamanho_Min: TFloatField
      DisplayLabel = 'Tamanho M'#237'nimo'
      FieldName = 'Tamanho_Min'
      Required = True
    end
    object clntdtstCadastroTamanho_Max: TFloatField
      DisplayLabel = 'Tamanho M'#225'ximo'
      FieldName = 'Tamanho_Max'
      Required = True
    end
  end
end

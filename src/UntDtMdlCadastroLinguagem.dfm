inherited DtMdlCadastroLinguagem: TDtMdlCadastroLinguagem
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Equivalente_PF,'#13#10#9'Nome'#13#10'FROM Linguagem'#13#10'ORDER' +
      ' BY'#13#10#9'Nome'
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
    object clntdtstCadastroEquivalente_PF: TFloatField
      DisplayLabel = 'Equivalente PF'
      FieldName = 'Equivalente_PF'
      Required = True
    end
    object clntdtstCadastroNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
  end
end

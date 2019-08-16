inherited DtMdlCalculo: TDtMdlCalculo
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Nome'#13#10'FROM Projeto'#13#10'ORDER BY Nome'
    MaxBlobSize = -1
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  inherited clntdtstCadastro: TClientDataSet
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
  end
end

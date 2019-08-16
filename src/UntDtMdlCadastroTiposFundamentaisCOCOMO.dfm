inherited DtMdlCadastroTiposFundamentaisCOCOMO: TDtMdlCadastroTiposFundamentaisCOCOMO
  inherited sqldtstCadastro: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Nome,'#13#10#9'Prazo_Fator_Multiplicacao,'#13#10#9'Prazo_Ex' +
      'ponencial'#13#10'FROM Tipo_Fundamental'#13#10'ORDER BY'#13#10#9'Nome'
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
    object clntdtstCadastroPrazo_Fator_Multiplicacao: TFloatField
      DisplayLabel = 'Prazo Fator Multiplica'#231#227'o'
      FieldName = 'Prazo_Fator_Multiplicacao'
      Required = True
    end
    object clntdtstCadastroPrazo_Exponencial: TFloatField
      DisplayLabel = 'Prazo Exponencial'
      FieldName = 'Prazo_Exponencial'
      Required = True
    end
  end
end

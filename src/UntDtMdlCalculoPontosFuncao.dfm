inherited DtMdlCalculoPontosFuncao: TDtMdlCalculoPontosFuncao
  Height = 324
  Width = 501
  inherited sqldtstCalculo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Projeto_Atributo.Atributo,'#13#10#9'Complexidade.Nivel,'#13#10#9'Comp' +
      'lexidade.Peso,'#13#10#9'COUNT(Projeto_Atributo.ID) AS Quantidade'#13#10'FROM ' +
      'Projeto_Atributo INNER JOIN'#13#10#9'Complexidade ON'#13#10#9#9#9'Projeto_Atribu' +
      'to.Atributo = Complexidade.Atributo AND '#13#10#9#9#9'Projeto_Atributo.Co' +
      'mplexidade = Complexidade.Codigo'#13#10'WHERE'#13#10#9'(Projeto_Atributo.Proj' +
      'eto = :Projeto)'#13#10'GROUP BY'#13#10#9'Projeto_Atributo.Atributo,'#13#10#9'Complex' +
      'idade.Nivel,'#13#10#9'Complexidade.Peso'#13#10'ORDER BY'#13#10#9'Projeto_Atributo.At' +
      'ributo,'#13#10#9'Complexidade.Peso'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Projeto'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  object sqldtstSNI: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'SUM(Nivel_Influencia) AS SNI'#13#10'FROM Projeto_PF_Caracteri' +
      'sticas'#13#10'WHERE'#13#10#9'(Projeto = :Projeto)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Projeto'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 88
    Top = 96
  end
  object sqldtstProjeto_Historico: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Projeto,'#13#10#9'Data,'#13#10#9'Tamanho_PF'#13#10'FROM Projeto_H' +
      'istorico'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 88
    Top = 152
  end
  object dtstprvdrProjeto_Historico: TDataSetProvider
    DataSet = sqldtstProjeto_Historico
    Left = 216
    Top = 152
  end
  object clntdtstProjeto_Historico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrProjeto_Historico'
    Left = 344
    Top = 152
    object clntdtstProjeto_HistoricoCodigo: TIntegerField
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstProjeto_HistoricoProjeto: TIntegerField
      FieldName = 'Projeto'
      Required = True
    end
    object clntdtstProjeto_HistoricoData: TSQLTimeStampField
      FieldName = 'Data'
      Required = True
    end
    object clntdtstProjeto_HistoricoTamanho_PF: TFloatField
      FieldName = 'Tamanho_PF'
      Required = True
    end
  end
end

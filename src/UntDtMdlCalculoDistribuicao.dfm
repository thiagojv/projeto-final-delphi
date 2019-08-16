inherited DtMdlCalculoDistribuicao: TDtMdlCalculoDistribuicao
  Height = 259
  Width = 535
  inherited sqldtstCalculo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Fases.Descricao as Fase,'#13#10#9'Distribuicao_Esforco_Fase_Ti' +
      'po.Percentual / 100 * %s as Valor'#13#10'FROM         Projeto INNER JO' +
      'IN'#13#10'                      Distribuicao_Esforco_Fase_Tipo ON Proj' +
      'eto.Tipo_Fundamental = Distribuicao_Esforco_Fase_Tipo.Tipo_Funda' +
      'mental INNER JOIN'#13#10'                      Tamanho_Projeto ON Dist' +
      'ribuicao_Esforco_Fase_Tipo.Tamanho_Projeto = Tamanho_Projeto.Cod' +
      'igo INNER JOIN'#13#10'                      Fases ON Distribuicao_Esfo' +
      'rco_Fase_Tipo.Fase = Fases.Codigo INNER JOIN'#13#10'                  ' +
      '    Tipo_Distribuicao ON Distribuicao_Esforco_Fase_Tipo.Tipo_Dis' +
      'tribuicao = Tipo_Distribuicao.Codigo'#13#10'WHERE     (Tamanho_Projeto' +
      '.Tamanho_Min <= :Tamanho_DSI) AND (Tamanho_Projeto.Tamanho_Max >' +
      '= :Tamanho_DSI) AND (Distribuicao_Esforco_Fase_Tipo.Tipo_Distrib' +
      'uicao = 1)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Tamanho_DSI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Tamanho_DSI'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  object dtstprvdrEsforco: TDataSetProvider
    DataSet = sqldtstCalculo
    Left = 232
    Top = 40
  end
  object clntdtstEsforco: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Tamanho_DSI'
        ParamType = ptInput
        Value = 20
      end
      item
        DataType = ftInteger
        Name = 'Tamanho_DSI'
        ParamType = ptInput
      end>
    ProviderName = 'dtstprvdrEsforco'
    Left = 360
    Top = 40
    object clntdtstEsforcoFase: TStringField
      FieldName = 'Fase'
      Required = True
      Size = 100
    end
    object clntdtstEsforcoValor: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'Valor'
    end
  end
  object sqldtstPrazo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Fases.Descricao as Fase,'#13#10#9'Distribuicao_Esforco_Fase_Ti' +
      'po.Percentual / 100 * %s as Valor'#13#10'FROM         Projeto INNER JO' +
      'IN'#13#10'                      Distribuicao_Esforco_Fase_Tipo ON Proj' +
      'eto.Tipo_Fundamental = Distribuicao_Esforco_Fase_Tipo.Tipo_Funda' +
      'mental INNER JOIN'#13#10'                      Tamanho_Projeto ON Dist' +
      'ribuicao_Esforco_Fase_Tipo.Tamanho_Projeto = Tamanho_Projeto.Cod' +
      'igo INNER JOIN'#13#10'                      Fases ON Distribuicao_Esfo' +
      'rco_Fase_Tipo.Fase = Fases.Codigo INNER JOIN'#13#10'                  ' +
      '    Tipo_Distribuicao ON Distribuicao_Esforco_Fase_Tipo.Tipo_Dis' +
      'tribuicao = Tipo_Distribuicao.Codigo'#13#10'WHERE     (Tamanho_Projeto' +
      '.Tamanho_Min <= :Tamanho_DSI) AND (Tamanho_Projeto.Tamanho_Max >' +
      '= :Tamanho_DSI) AND (Distribuicao_Esforco_Fase_Tipo.Tipo_Distrib' +
      'uicao = 2)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Tamanho_DSI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Tamanho_DSI'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 88
    Top = 104
  end
  object dtstprvdrPrazo: TDataSetProvider
    DataSet = sqldtstPrazo
    Left = 232
    Top = 104
  end
  object clntdtstPrazo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Tamanho_DSI'
        ParamType = ptInput
        Value = '20'
      end
      item
        DataType = ftString
        Name = 'Tamanho_DSI'
        ParamType = ptInput
      end>
    ProviderName = 'dtstprvdrPrazo'
    Left = 360
    Top = 104
    object clntdtstPrazoFase: TStringField
      FieldName = 'Fase'
      Required = True
      Size = 100
    end
    object clntdtstPrazoValor: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'Valor'
    end
  end
end

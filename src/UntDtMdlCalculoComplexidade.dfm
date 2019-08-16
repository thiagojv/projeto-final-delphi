inherited DtMdlCalculoComplexidade: TDtMdlCalculoComplexidade
  Height = 235
  inherited sqldtstCalculo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Nivel,'#13#10#9'Peso'#13#10'FROM'#13#10#9'Complexidade'#13#10'WHERE'#13#10#9'(' +
      'Atributo = :Atributo) AND'#13#10#9'(Parametro_1_Minimo <= :Parametro_1)' +
      ' AND'#13#10#9'(Parametro_1_Maximo >= :Parametro_1) AND'#13#10#9'(Parametro_2_M' +
      'inimo <= :Parametro_2) AND'#13#10#9'(Parametro_2_Maximo >= :Parametro_2' +
      ')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Atributo'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_2'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_2'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  object sqldtstCalculoExtendido: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Nivel,'#13#10#9'Peso'#13#10'FROM'#13#10#9'Complexidade'#13#10'WHERE'#13#10#9'(' +
      'Atributo = :Atributo) AND'#13#10#9'(Parametro_1_Minimo <= :Parametro_1)' +
      ' AND'#13#10#9'(Parametro_1_Maximo >= :Parametro_1) AND'#13#10#9'(Parametro_2_M' +
      'inimo <= :Parametro_2) AND'#13#10#9'(Parametro_2_Maximo >= :Parametro_2' +
      ') AND'#13#10#9'(Parametro_3_Minimo <= :Parametro_3) AND'#13#10#9'(Parametro_3_' +
      'Maximo >= :Parametro_3) AND'#13#10#9'(Parametro_4_Minimo <= :Parametro_' +
      '4) AND'#13#10#9'(Parametro_4_Maximo >= :Parametro_4)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Atributo'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_2'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_2'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_3'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_3'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_4'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Parametro_4'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 88
    Top = 104
  end
end

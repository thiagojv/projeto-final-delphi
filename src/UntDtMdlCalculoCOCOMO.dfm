inherited DtMdlCalculoCOCOMO: TDtMdlCalculoCOCOMO
  Height = 416
  Width = 230
  inherited sqldtstCalculo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'SUM(Linguagem.Equivalente_PF) AS Equivalencia'#13#10'FROM Pro' +
      'jeto_Linguagem'#13#10#9'INNER JOIN Linguagem'#13#10#9'ON Projeto_Linguagem.Lin' +
      'guagem = Linguagem.Codigo'#13#10'WHERE (Projeto_Linguagem.Projeto = :P' +
      'rojeto)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Projeto'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
  end
  object sqldtstEsforco: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Esforco_Modelo_Tipo.Esforco_Fator_Multiplicacao,'#13#10#9'Esfo' +
      'rco_Modelo_Tipo.Esforco_Exponencial'#13#10'FROM Projeto'#13#10#9'INNER JOIN E' +
      'sforco_Modelo_Tipo'#13#10#9'ON Projeto.Modelo = Esforco_Modelo_Tipo.Mod' +
      'elo'#13#10#9'AND Projeto.Tipo_Fundamental = Esforco_Modelo_Tipo.Tipo_Fu' +
      'ndamental'#13#10'WHERE (Projeto.Codigo = :Projeto)'
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
  object sqldtstPrazo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Tipo_Fundamental.Prazo_Fator_Multiplicacao,'#13#10#9'Tipo_Fund' +
      'amental.Prazo_Exponencial'#13#10'FROM Tipo_Fundamental'#13#10#9'INNER JOIN Pr' +
      'ojeto'#13#10#9'ON Tipo_Fundamental.Codigo = Projeto.Tipo_Fundamental'#13#10'W' +
      'HERE'#13#10#9'(Projeto.Codigo = :Projeto)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Projeto'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 88
    Top = 152
  end
  object sqldtstCOCOMOAjusteAncestrais: TSQLDataSet
    CommandText = 
      'SELECT     COCOMO_Caracteristica_Escala.Fator_Ajuste'#13#10'FROM      ' +
      '   Projeto_COCOMO_Caracteristica_Escala INNER JOIN'#13#10'            ' +
      '          COCOMO_Caracteristica_Escala ON '#13#10'                    ' +
      '  Projeto_COCOMO_Caracteristica_Escala.COCOMO_Caracteristica = C' +
      'OCOMO_Caracteristica_Escala.COCOMO_Caracteristica AND '#13#10'        ' +
      '              Projeto_COCOMO_Caracteristica_Escala.COCOMO_Escala' +
      ' = COCOMO_Caracteristica_Escala.COCOMO_Escala INNER JOIN'#13#10'      ' +
      '                COCOMO_Caracteristicas ON COCOMO_Caracteristica_' +
      'Escala.COCOMO_Caracteristica = COCOMO_Caracteristicas.Codigo'#13#10'WH' +
      'ERE     (Projeto_COCOMO_Caracteristica_Escala.Projeto = :Projeto' +
      ') AND (COCOMO_Caracteristicas.Ancestral IS NULL)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Projeto'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 88
    Top = 208
  end
  object sqldtstCOCOMOAjusteHerdeiros: TSQLDataSet
    CommandText = 
      'SELECT     COCOMO_Caracteristica_Escala.Fator_Ajuste, Projeto_CO' +
      'COMO_Caracteristica_Escala.COCOMO_Escala, COUNT(*) AS Quantidade' +
      #13#10'FROM         Projeto_COCOMO_Caracteristica_Escala INNER JOIN'#13#10 +
      '                      COCOMO_Caracteristica_Escala ON '#13#10'        ' +
      '              Projeto_COCOMO_Caracteristica_Escala.COCOMO_Caract' +
      'eristica = COCOMO_Caracteristica_Escala.COCOMO_Caracteristica AN' +
      'D '#13#10'                      Projeto_COCOMO_Caracteristica_Escala.C' +
      'OCOMO_Escala = COCOMO_Caracteristica_Escala.COCOMO_Escala INNER ' +
      'JOIN'#13#10'                      COCOMO_Caracteristicas ON COCOMO_Car' +
      'acteristica_Escala.COCOMO_Caracteristica = COCOMO_Caracteristica' +
      's.Codigo'#13#10'WHERE     (Projeto_COCOMO_Caracteristica_Escala.Projet' +
      'o = :Projeto) AND (COCOMO_Caracteristicas.Ancestral IS NOT NULL)' +
      #13#10'GROUP BY COCOMO_Caracteristica_Escala.Fator_Ajuste, Projeto_CO' +
      'COMO_Caracteristica_Escala.COCOMO_Escala'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Projeto'
        ParamType = ptInput
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 88
    Top = 264
  end
end

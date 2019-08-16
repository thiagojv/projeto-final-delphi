inherited DtMdlCadastroProjeto: TDtMdlCadastroProjeto
  Left = 235
  Top = 114
  Height = 612
  Width = 774
  inherited sqldtstCadastro: TSQLDataSet
    ObjectView = True
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Nome,'#13#10#9'Data_Inicio,'#13#10#9'Data_Termino,'#13#10#9'Modelo' +
      ','#13#10#9'Tipo_Fundamental,'#13#10#9'Status'#13#10'FROM Projeto'#13#10'ORDER BY'#13#10#9'Nome'
    MaxBlobSize = -1
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 16
    object sqldtstCadastroCodigo: TIntegerField
      FieldName = 'Codigo'
      Required = True
    end
    object sqldtstCadastroNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
    object sqldtstCadastroData_Inicio: TSQLTimeStampField
      FieldName = 'Data_Inicio'
      Required = True
    end
    object sqldtstCadastroData_Termino: TSQLTimeStampField
      FieldName = 'Data_Termino'
    end
    object sqldtstCadastroModelo: TIntegerField
      FieldName = 'Modelo'
      Required = True
    end
    object sqldtstCadastroTipo_Fundamental: TIntegerField
      FieldName = 'Tipo_Fundamental'
      Required = True
    end
    object sqldtstCadastroStatus: TBooleanField
      FieldName = 'Status'
      Required = True
    end
  end
  inherited dtstprvdrCadastro: TDataSetProvider
    Left = 228
    Top = 16
  end
  inherited clntdtstCadastro: TClientDataSet
    BeforePost = clntdtstCadastroBeforePost
    Left = 378
    Top = 16
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
    object clntdtstCadastroData_Inicio: TSQLTimeStampField
      DisplayLabel = 'Data In'#237'cio'
      FieldName = 'Data_Inicio'
      Required = True
    end
    object clntdtstCadastroData_Termino: TSQLTimeStampField
      DisplayLabel = 'Data T'#233'rmino'
      FieldName = 'Data_Termino'
    end
    object clntdtstCadastroModelo: TIntegerField
      FieldName = 'Modelo'
      Required = True
    end
    object clntdtstCadastroTipo_Fundamental: TIntegerField
      DisplayLabel = 'Tipo Fundamental'
      FieldName = 'Tipo_Fundamental'
      Required = True
    end
    object clntdtstCadastroStatus: TBooleanField
      FieldName = 'Status'
      Required = True
    end
    object clntdtstCadastrosqldtstProjeto_Linguagem: TDataSetField
      FieldName = 'sqldtstProjeto_Linguagem'
    end
    object clntdtstCadastrosqldtstProjeto_PF_Caract: TDataSetField
      FieldName = 'sqldtstProjeto_PF_Caract'
    end
    object clntdtstCadastrosqldtstProjeto_COCOMO_Caract: TDataSetField
      FieldName = 'sqldtstProjeto_COCOMO_Caract'
    end
    object clntdtstCadastrosqldtstProjeto_Atributo: TDataSetField
      FieldName = 'sqldtstProjeto_Atributo'
    end
    object clntdtstCadastrosqldtstProjeto_Historico: TDataSetField
      FieldName = 'sqldtstProjeto_Historico'
    end
  end
  object sqldtstLinguagem: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Nome'#13#10'FROM Linguagem'#13#10'ORDER BY'#13#10#9'Nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 352
  end
  object dtstprvdrLinguagem: TDataSetProvider
    DataSet = sqldtstLinguagem
    Left = 228
    Top = 352
  end
  object clntdtstLinguagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrLinguagem'
    Left = 378
    Top = 352
    object clntdtstLinguagemCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstLinguagemNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
  end
  object sqldtstModelo: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Nome'#13#10'FROM Modelo'#13#10'ORDER BY'#13#10#9'Nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 408
  end
  object dtstprvdrModelo: TDataSetProvider
    DataSet = sqldtstModelo
    Left = 228
    Top = 408
  end
  object clntdtstModelo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrModelo'
    Left = 378
    Top = 408
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
  object sqldtstTipo_Fundamental: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Nome'#13#10'FROM Tipo_Fundamental'#13#10'ORDER BY'#13#10#9'Nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 464
  end
  object dtstprvdrTipo_Fundamental: TDataSetProvider
    DataSet = sqldtstTipo_Fundamental
    Left = 228
    Top = 464
  end
  object clntdtstTipo_Fundamental: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrTipo_Fundamental'
    Left = 378
    Top = 464
    object clntdtstTipo_FundamentalCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstTipo_FundamentalNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
  end
  object sqldtstProjeto_Linguagem: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Projeto,'#13#10#9'Linguagem'#13#10'FROM Projeto_Linguagem'#13#10'WHERE Pro' +
      'jeto = :Codigo'
    DataSource = dtsrcCadastro
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 72
  end
  object clntdtstProjeto_Linguagem: TClientDataSet
    Aggregates = <>
    DataSetField = clntdtstCadastrosqldtstProjeto_Linguagem
    Params = <>
    BeforePost = clntdtstProjeto_LinguagemBeforePost
    Left = 378
    Top = 72
    object clntdtstProjeto_LinguagemProjeto: TIntegerField
      FieldName = 'Projeto'
      Required = True
    end
    object clntdtstProjeto_LinguagemLinguagem: TIntegerField
      FieldName = 'Linguagem'
      Required = True
    end
    object clntdtstProjeto_LinguagemDescricaoLinguagem: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoLinguagem'
      LookupDataSet = clntdtstLinguagem
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Linguagem'
      Lookup = True
    end
  end
  object sqldtstProjeto_PF_Caract: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Caracteristica,'#13#10#9'Projeto,'#13#10#9'Nivel_Influencia'#13#10'FROM Pro' +
      'jeto_PF_Caracteristicas'#13#10'WHERE'#13#10#9'Projeto = :Codigo'
    DataSource = dtsrcCadastro
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 184
  end
  object clntdtstProjeto_PF_Caracteristicas: TClientDataSet
    Aggregates = <>
    DataSetField = clntdtstCadastrosqldtstProjeto_PF_Caract
    Params = <>
    BeforePost = clntdtstProjeto_PF_CaracteristicasBeforePost
    Left = 378
    Top = 184
    object clntdtstProjeto_PF_CaracteristicasCaracteristica: TIntegerField
      DisplayLabel = 'Caracter'#237'stica'
      FieldName = 'Caracteristica'
      Required = True
    end
    object clntdtstProjeto_PF_CaracteristicasProjeto: TIntegerField
      FieldName = 'Projeto'
      Required = True
    end
    object clntdtstProjeto_PF_CaracteristicasNivel_Influencia: TIntegerField
      DisplayLabel = 'N'#237'vel Influ'#234'ncia'
      FieldName = 'Nivel_Influencia'
      Required = True
    end
    object clntdtstProjeto_PF_CaracteristicasDescricaoCaracteristica: TStringField
      DisplayLabel = 'Caracter'#237'stica'
      DisplayWidth = 300
      FieldKind = fkLookup
      FieldName = 'DescricaoCaracteristica'
      LookupDataSet = clntdtstPF_Caracteristicas
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Caracteristica'
      Size = 300
      Lookup = True
    end
    object clntdtstProjeto_PF_CaracteristicasDescricaoNivelInfluencia: TStringField
      DisplayLabel = 'N'#237'vel de Influ'#234'ncia'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'DescricaoNivelInfluencia'
      LookupDataSet = clntdtstPF_Nivel_Influencia
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Nivel_Influencia'
      Size = 50
      Lookup = True
    end
  end
  object sqldtstProjeto_COCOMO_Caract: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Projeto,'#13#10#9'COCOMO_Caracteristica,'#13#10#9'COCOMO_Escala'#13#10'FROM' +
      ' Projeto_COCOMO_Caracteristica_Escala'#13#10'WHERE'#13#10#9'Projeto = :Codigo'
    DataSource = dtsrcCadastro
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 240
  end
  object clntdtstProjeto_COCOMO_Caracteristicas: TClientDataSet
    Aggregates = <>
    DataSetField = clntdtstCadastrosqldtstProjeto_COCOMO_Caract
    Params = <>
    BeforePost = clntdtstProjeto_COCOMO_CaracteristicasBeforePost
    Left = 378
    Top = 240
    object clntdtstProjeto_COCOMO_CaracteristicasProjeto: TIntegerField
      FieldName = 'Projeto'
      Required = True
    end
    object clntdtstProjeto_COCOMO_CaracteristicasCOCOMO_Caracteristica: TIntegerField
      DisplayLabel = 'COCOMO Caracter'#237'stica'
      FieldName = 'COCOMO_Caracteristica'
      Required = True
    end
    object clntdtstProjeto_COCOMO_CaracteristicasCOCOMO_Escala: TIntegerField
      DisplayLabel = 'COCOMO Escala'
      FieldName = 'COCOMO_Escala'
      Required = True
    end
    object clntdtstProjeto_COCOMO_CaracteristicasDescricaoCaracteristica: TStringField
      DisplayLabel = 'Caracter'#237'sticas'
      FieldKind = fkLookup
      FieldName = 'DescricaoCaracteristica'
      LookupDataSet = clntdtstCOCOMO_Caracteristicas
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'COCOMO_Caracteristica'
      Size = 300
      Lookup = True
    end
    object clntdtstProjeto_COCOMO_CaracteristicasDescricaoEscala: TStringField
      DisplayLabel = 'Escala'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'DescricaoEscala'
      LookupDataSet = clntdtstCOCOMO_Escala
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'COCOMO_Escala'
      Size = 50
      Lookup = True
    end
  end
  object dtsrcCadastro: TDataSource
    DataSet = sqldtstCadastro
    Left = 512
    Top = 16
  end
  object sqldtstAtributo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Nome,'#13#10#9'Extendido'#13#10'FROM Atributo'#13#10'ORDER BY'#13#10#9 +
      'Nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 520
  end
  object dtstprvdrAtributo: TDataSetProvider
    DataSet = sqldtstAtributo
    Left = 228
    Top = 520
  end
  object clntdtstAtributo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrAtributo'
    Left = 378
    Top = 520
    object clntdtstAtributoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstAtributoNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
    object clntdtstAtributoExtendido: TBooleanField
      FieldName = 'Extendido'
      Required = True
    end
  end
  object sqldtstProjeto_Atributo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'ID,'#13#10#9'Projeto,'#13#10#9'Atributo,'#13#10#9'Descricao,'#13#10#9'Complexidade,' +
      #13#10#9'Quantidade_Parametro_1,'#13#10#9'Quantidade_Parametro_2,'#13#10#9'Quantidad' +
      'e_Parametro_3,'#13#10#9'Quantidade_Parametro_4'#13#10'FROM Projeto_Atributo'#13#10 +
      'WHERE Projeto = :Codigo'
    DataSource = dtsrcCadastro
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 128
  end
  object clntdtstProjeto_Atributo: TClientDataSet
    Aggregates = <>
    DataSetField = clntdtstCadastrosqldtstProjeto_Atributo
    Params = <>
    BeforePost = clntdtstProjeto_AtributoBeforePost
    Left = 376
    Top = 128
    object clntdtstProjeto_AtributoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object clntdtstProjeto_AtributoProjeto: TIntegerField
      FieldName = 'Projeto'
      Required = True
    end
    object clntdtstProjeto_AtributoAtributo: TIntegerField
      FieldName = 'Atributo'
      Required = True
    end
    object clntdtstProjeto_AtributoDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 300
    end
    object clntdtstProjeto_AtributoComplexidade: TIntegerField
      FieldName = 'Complexidade'
      Required = True
    end
    object clntdtstProjeto_AtributoQuantidade_Parametro_1: TFloatField
      DisplayLabel = 'Quantidade Par'#226'metro 1'
      FieldName = 'Quantidade_Parametro_1'
      Required = True
    end
    object clntdtstProjeto_AtributoQuantidade_Parametro_2: TFloatField
      DisplayLabel = 'Quantidade Par'#226'metro 2'
      FieldName = 'Quantidade_Parametro_2'
      Required = True
    end
    object clntdtstProjeto_AtributoQuantidade_Parametro_3: TFloatField
      DisplayLabel = 'Quantidade Par'#226'metro 3'
      FieldName = 'Quantidade_Parametro_3'
    end
    object clntdtstProjeto_AtributoQuantidade_Parametro_4: TFloatField
      DisplayLabel = 'Quantidade Par'#226'metro 4'
      FieldName = 'Quantidade_Parametro_4'
    end
  end
  object sqldtstPF_Caracteristicas: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM PF_Caracteristicas'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 576
  end
  object dtstprvdrPF_Caracteristicas: TDataSetProvider
    DataSet = sqldtstPF_Caracteristicas
    Left = 228
    Top = 576
  end
  object clntdtstPF_Caracteristicas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrPF_Caracteristicas'
    Left = 378
    Top = 576
    object clntdtstPF_CaracteristicasCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstPF_CaracteristicasDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 300
    end
  end
  object sqldtstPF_Nivel_Influencia: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM PF_Nivel_Influencia'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 575
    Top = 464
  end
  object dtstprvdrPF_Nivel_Influencia: TDataSetProvider
    DataSet = sqldtstPF_Nivel_Influencia
    Left = 724
    Top = 464
  end
  object clntdtstPF_Nivel_Influencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrPF_Nivel_Influencia'
    Left = 874
    Top = 464
    object clntdtstPF_Nivel_InfluenciaCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstPF_Nivel_InfluenciaDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object sqldtstCOCOMO_Caracteristicas: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM COCOMO_Caracteristicas'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 575
    Top = 520
  end
  object dtstprvdrCOCOMO_Caracteristicas: TDataSetProvider
    DataSet = sqldtstCOCOMO_Caracteristicas
    Left = 724
    Top = 520
  end
  object clntdtstCOCOMO_Caracteristicas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrCOCOMO_Caracteristicas'
    Left = 874
    Top = 520
    object clntdtstCOCOMO_CaracteristicasCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstCOCOMO_CaracteristicasDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object sqldtstCOCOMO_Escala: TSQLDataSet
    CommandText = 'SELECT'#13#10#9'Codigo,'#13#10#9'Descricao'#13#10'FROM COCOMO_Escala'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 575
    Top = 576
  end
  object dtstprvdrCOCOMO_Escala: TDataSetProvider
    DataSet = sqldtstCOCOMO_Escala
    Left = 724
    Top = 576
  end
  object clntdtstCOCOMO_Escala: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrCOCOMO_Escala'
    Left = 874
    Top = 576
    object clntdtstCOCOMO_EscalaCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Codigo'
      Required = True
    end
    object clntdtstCOCOMO_EscalaDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object sqldtstProjeto_Historico: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#9'Codigo,'#13#10#9'Projeto,'#13#10#9'Data,'#13#10#9'Tamanho_PF'#13#10'FROM Projeto_H' +
      'istorico'
    DataSource = dtsrcCadastro
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtMdlConexao.sqlcnctnPFC
    Left = 79
    Top = 296
  end
  object clntdtstProjeto_Historico: TClientDataSet
    Aggregates = <>
    DataSetField = clntdtstCadastrosqldtstProjeto_Historico
    Params = <>
    Left = 378
    Top = 296
    object clntdtstProjeto_HistoricoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
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
      DisplayLabel = 'Tamanho (PF)'
      FieldName = 'Tamanho_PF'
      Required = True
    end
  end
end

inherited DtMdlAncestralCadastro: TDtMdlAncestralCadastro
  OldCreateOrder = True
  Width = 467
  object sqldtstCadastro: TSQLDataSet
    Params = <>
    Left = 54
    Top = 40
  end
  object dtstprvdrCadastro: TDataSetProvider
    DataSet = sqldtstCadastro
    Left = 214
    Top = 40
  end
  object clntdtstCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrCadastro'
    AfterPost = clntdtstCadastroAfterPost
    AfterDelete = clntdtstCadastroAfterDelete
    Left = 374
    Top = 40
  end
end

object DtMdlConexao: TDtMdlConexao
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 150
  Width = 215
  object sqlcnctnPFC: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbexpmss.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=junqueira-03'
      'DataBase=PFC'
      'User_Name=user'
      'Password=password'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=True')
    VendorLib = 'oledb'
    Connected = True
    Left = 88
    Top = 40
  end
end

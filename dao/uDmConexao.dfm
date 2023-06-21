object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 182
  Width = 242
  object sqlFBConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\Testes\TestePonta\TESTEPONTA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDTransaction1: TFDTransaction
    Connection = sqlFBConexao
    Left = 144
    Top = 56
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 144
    Top = 104
  end
end

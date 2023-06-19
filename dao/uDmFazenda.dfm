object DmFazenda: TDmFazenda
  OldCreateOrder = False
  Height = 91
  Width = 218
  object qryInserir: TFDQuery
    Connection = DmConexao.sqlFBConexao
    SQL.Strings = (
      
        'insert into fazenda(nome,endereco,cnpj) values (:nome,:endereco,' +
        ':cnpj)')
    Left = 32
    Top = 16
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object qryExcluir: TFDQuery
    Connection = DmConexao.sqlFBConexao
    SQL.Strings = (
      'delete from fazenda where id =:id')
    Left = 152
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object qryAlterar: TFDQuery
    Connection = DmConexao.sqlFBConexao
    SQL.Strings = (
      
        'update fazenda set nome = :nome, endereco =:endereco, cnpj =:cnp' +
        'j  where (id = :id)')
    Left = 88
    Top = 16
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

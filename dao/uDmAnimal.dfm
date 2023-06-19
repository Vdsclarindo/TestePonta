object DmAnimal: TDmAnimal
  OldCreateOrder = False
  Height = 177
  Width = 306
  object dsFazendas: TDataSetProvider
    DataSet = qryFazendas
    Left = 232
    Top = 112
  end
  object cdsFazendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsFazendas'
    Left = 232
    Top = 72
    object cdsFazendasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFazendasNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object cdsFazendasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsFazendasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object qryInserir: TFDQuery
    Connection = DmConexao.sqlFBConexao
    SQL.Strings = (
      'insert into animal (tag,fazenda_id) values (:tag, :fazenda_id)')
    Left = 24
    Top = 16
    ParamData = <
      item
        Name = 'TAG'
        ParamType = ptInput
      end
      item
        Name = 'FAZENDA_ID'
        ParamType = ptInput
      end>
  end
  object qryExcluir: TFDQuery
    Connection = DmConexao.sqlFBConexao
    SQL.Strings = (
      'delete from animal where id =:id')
    Left = 160
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object qryAlterar: TFDQuery
    Connection = DmConexao.sqlFBConexao
    SQL.Strings = (
      
        'update animal set tag = :tag, fazenda_id = :fazenda_id where (id' +
        ' = :id)')
    Left = 88
    Top = 16
    ParamData = <
      item
        Name = 'TAG'
        ParamType = ptInput
      end
      item
        Name = 'FAZENDA_ID'
        ParamType = ptInput
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object qryFazendas: TFDQuery
    Connection = DmConexao.sqlFBConexao
    SQL.Strings = (
      'select * from fazenda')
    Left = 232
    Top = 16
  end
end

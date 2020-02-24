object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 575
  Width = 794
  object QrTotalVeic: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select count(*) as total from posicaoveiculo')
    Left = 32
    Top = 40
    object QrTotalVeictotal: TIntegerField
      Alignment = taCenter
      FieldName = 'total'
    end
  end
  object DsTotalVeic: TDataSource
    DataSet = QrTotalVeic
    Left = 120
    Top = 40
  end
  object QrVeicRodados: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select count(*) as total from posicaoveiculo where rodando = tru' +
        'e')
    Left = 32
    Top = 96
    object QrVeicRodadostotal: TIntegerField
      Alignment = taCenter
      FieldName = 'total'
    end
  end
  object DSQrVeicRodados: TDataSource
    DataSet = QrVeicRodados
    Left = 120
    Top = 96
  end
  object DSVeicParados: TDataSource
    DataSet = QrVeicParados
    Left = 120
    Top = 152
  end
  object QrVeicParados: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select count(*) as total from posicaoveiculo where rodando = fal' +
        'se')
    Left = 32
    Top = 152
    object IntegerField1: TIntegerField
      Alignment = taCenter
      FieldName = 'total'
    end
  end
  object QRFaltaMO: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select count(*) as total from posicaoveiculo where rodando = tru' +
        'e')
    Left = 32
    Top = 208
    object IntegerField2: TIntegerField
      Alignment = taCenter
      FieldName = 'total'
    end
  end
  object DSFaltaMO: TDataSource
    DataSet = QRFaltaMO
    Left = 120
    Top = 208
  end
  object QRMotRodando1: TADOQuery
    Active = True
    Connection = DM.LigaBD2
    CursorType = ctStatic
    DataSource = DM.DSQRTurnos
    Parameters = <
      item
        Name = 'codplantao'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Value = Null
      end>
    SQL.Strings = (
      'select count(motorista1)  as Escalados1 from motoristasescalados'
      'where motorista1 <> "" and codplantao = :codplantao ')
    Left = 208
    Top = 32
    object QRMotRodando1Escalados1: TIntegerField
      FieldName = 'Escalados1'
    end
  end
  object DSMotRodando1: TDataSource
    DataSet = QRMotRodando1
    Left = 296
    Top = 32
  end
  object DSMotRodando2: TDataSource
    DataSet = QRMotRodando2
    Left = 296
    Top = 88
  end
  object QRMotRodando2: TADOQuery
    Active = True
    Connection = DM.LigaBD2
    CursorType = ctStatic
    OnCalcFields = QRMotRodando2CalcFields
    DataSource = DM.DSQRTurnos
    Parameters = <
      item
        Name = 'codplantao'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Value = Null
      end>
    SQL.Strings = (
      'select count(motorista2)  as Escalados2 from motoristasescalados'
      'where motorista2 <> "" and codplantao = :codplantao ')
    Left = 208
    Top = 88
    object QRMotRodando2Escalados2: TIntegerField
      FieldName = 'Escalados2'
    end
    object QRMotRodando2TotRodando: TIntegerField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'TotRodando'
      Calculated = True
    end
  end
  object QRMotAusent: TADOQuery
    Active = True
    Connection = DM.LigaBD2
    CursorType = ctStatic
    DataSource = DM.DSQRTurnos
    Parameters = <
      item
        Name = 'codplantao'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Value = Null
      end>
    SQL.Strings = (
      'select count(motorista) as ausentes from motoristasausentes'
      'where motorista <> "" and codplantao = :codplantao ')
    Left = 208
    Top = 200
    object QRMotAusentausentes: TIntegerField
      Alignment = taCenter
      FieldName = 'ausentes'
    end
  end
  object DSMotAusent: TDataSource
    DataSet = QRMotAusent
    Left = 296
    Top = 200
  end
  object DsTotVeicSP: TDataSource
    DataSet = QrTotVeicSP
    Left = 112
    Top = 272
  end
  object QrTotVeicSP: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select count(*) as total from posicaoveiculo where Prioridade = ' +
        '"Special Plus" '
      '')
    Left = 32
    Top = 272
    object IntegerField3: TIntegerField
      Alignment = taCenter
      FieldName = 'total'
    end
  end
  object DsTotVeicHG: TDataSource
    DataSet = QrTotVeicHG
    Left = 112
    Top = 336
  end
  object QrTotVeicHG: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select count(*) as total from posicaoveiculo where Prioridade = ' +
        '"high" ')
    Left = 32
    Top = 344
    object IntegerField4: TIntegerField
      Alignment = taCenter
      FieldName = 'total'
    end
  end
  object DSMotdisponiv: TDataSource
    DataSet = QRMotDisponiv
    Left = 296
    Top = 144
  end
  object QRMotDisponiv: TADOQuery
    Active = True
    Connection = DM.LigaBD2
    CursorType = ctStatic
    DataSource = DM.DSQRTurnos
    Parameters = <
      item
        Name = 'codplantao'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'select count(motorista) as Disponiveis from motoristasdisponivei' +
        's'
      'where motorista <> "" and codplantao = :codplantao ')
    Left = 208
    Top = 144
    object QRMotDisponivDisponiveis: TIntegerField
      Alignment = taCenter
      FieldName = 'Disponiveis'
    end
  end
end

object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 886
  Width = 1197
  object TbCoord: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    AfterInsert = TbCoordAfterInsert
    AfterEdit = TbCoordAfterEdit
    AfterPost = TbCoordAfterPost
    TableName = 'CADCoordenador'
    Left = 32
    Top = 70
    object TbCoordNome: TWideStringField
      Alignment = taCenter
      FieldName = 'Nome'
    end
    object TbCoordTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object TbCoordNomeCompleto: TWideStringField
      FieldName = 'NomeCompleto'
      Size = 40
    end
    object TbCoordCategoriaCNH: TWideStringField
      Alignment = taCenter
      FieldName = 'CategoriaCNH'
      Size = 3
    end
    object TbCoordNumeroCNH: TWideStringField
      FieldName = 'NumeroCNH'
    end
    object TbCoordDataCadastro: TDateTimeField
      Alignment = taCenter
      FieldName = 'DataCadastro'
      EditMask = '!99/99/0000;1;0'
    end
    object TbCoordEnd: TWideStringField
      FieldName = 'End'
      Size = 70
    end
    object TbCoordNumero: TIntegerField
      Alignment = taCenter
      FieldName = 'Numero'
    end
    object TbCoordBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object TbCoordCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object TbCoordUF: TWideStringField
      Alignment = taCenter
      FieldName = 'UF'
      Size = 5
    end
    object TbCoordTel: TWideStringField
      Alignment = taCenter
      FieldName = 'Tel'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TbCoordCel: TWideStringField
      Alignment = taCenter
      FieldName = 'Cel'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TbCoordTelRecado: TWideStringField
      Alignment = taCenter
      FieldName = 'TelRecado'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object TbCoordObservacao: TWideMemoField
      FieldName = 'Observacao'
      BlobType = ftWideMemo
    end
  end
  object TbMotorista: TADOTable
    Active = True
    Connection = LigaBD
    CursorType = ctStatic
    AfterInsert = TbCoordAfterInsert
    AfterEdit = TbCoordAfterEdit
    AfterPost = TbCoordAfterPost
    TableName = 'CADMotorista'
    Left = 30
    Top = 119
    object TbMotoristaNome: TWideStringField
      Alignment = taCenter
      FieldName = 'Nome'
    end
    object TbMotoristaFuncao: TWideStringField
      Alignment = taCenter
      FieldName = 'Funcao'
      Size = 15
    end
    object TbMotoristaTurno: TWideStringField
      Alignment = taCenter
      FieldName = 'Turno'
      Size = 3
    end
    object TbMotoristaNomeCompleto: TWideStringField
      FieldName = 'NomeCompleto'
      Size = 40
    end
    object TbMotoristaDataCadastro: TDateTimeField
      Alignment = taCenter
      FieldName = 'DataCadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object TbMotoristaDataNascimento: TDateTimeField
      Alignment = taCenter
      FieldName = 'DataNascimento'
      EditMask = '!99/99/0000;1;_'
    end
    object TbMotoristaEnd: TWideStringField
      FieldName = 'End'
      Size = 70
    end
    object TbMotoristaNumero: TIntegerField
      Alignment = taCenter
      FieldName = 'Numero'
    end
    object TbMotoristaBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object TbMotoristaCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object TbMotoristaCEP: TWideStringField
      Alignment = taCenter
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object TbMotoristaTel: TWideStringField
      Alignment = taCenter
      FieldName = 'Tel'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TbMotoristaCel: TWideStringField
      Alignment = taCenter
      FieldName = 'Cel'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TbMotoristaTelRecado: TWideStringField
      Alignment = taCenter
      FieldName = 'TelRecado'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TbMotoristaCatCNH: TWideStringField
      Alignment = taCenter
      FieldName = 'CatCNH'
      Size = 4
    end
    object TbMotoristaRegCNH: TWideStringField
      Alignment = taRightJustify
      FieldName = 'RegCNH'
    end
    object TbMotoristaVencCNH: TDateTimeField
      Alignment = taCenter
      FieldName = 'VencCNH'
      EditMask = '!99/99/0000;1;_'
    end
    object TbMotoristaNumRV: TWideStringField
      Alignment = taRightJustify
      FieldName = 'NumRV'
      Size = 15
    end
    object TbMotoristaVencRV: TDateTimeField
      Alignment = taCenter
      FieldName = 'VencRV'
      EditMask = '!99/99/0000;1;_'
    end
    object TbMotoristaBanco: TWideStringField
      FieldName = 'Banco'
      Size = 25
    end
    object TbMotoristaAG: TWideStringField
      Alignment = taCenter
      FieldName = 'AG'
      Size = 12
    end
    object TbMotoristaCC: TWideStringField
      Alignment = taRightJustify
      FieldName = 'C/C'
      Size = 30
    end
    object TbMotoristaGrupo: TIntegerField
      Alignment = taCenter
      FieldName = 'Grupo'
    end
    object TbMotoristaInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object TbMotoristaMotivo: TWideStringField
      FieldName = 'Motivo'
      Size = 30
    end
    object TbMotoristaAvaliao: TWideMemoField
      FieldName = 'Avalia'#231#227'o'
      BlobType = ftWideMemo
    end
    object TbMotoristaObservacao: TWideMemoField
      FieldName = 'Observacao'
      BlobType = ftWideMemo
    end
    object TbMotoristaOrdemEscala: TIntegerField
      FieldName = 'OrdemEscala'
    end
    object TbMotoristafolga: TBooleanField
      FieldName = 'folga'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbMotoristaFalta: TBooleanField
      FieldName = 'Falta'
      DisplayValues = #39'Sim;N'#227'o'#39
    end
    object TbMotoristaFerias: TBooleanField
      FieldName = 'Ferias'
      DisplayValues = 'Sim;N'#227'o'
    end
  end
  object TbVeiculo: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    AfterInsert = TbCoordAfterInsert
    AfterEdit = TbCoordAfterEdit
    AfterPost = TbCoordAfterPost
    TableName = 'CADVeiculo'
    Left = 28
    Top = 172
    object TbVeiculoVeiculo: TWideStringField
      Alignment = taCenter
      FieldName = 'Veiculo'
      Size = 15
    end
    object TbVeiculoModelo: TWideStringField
      FieldName = 'Modelo'
    end
    object TbVeiculoDataInicio: TDateTimeField
      Alignment = taCenter
      FieldName = 'DataInicio'
      EditMask = '!99/99/0000;1;_'
    end
    object TbVeiculoDataPrevisaoTermino: TDateTimeField
      Alignment = taCenter
      FieldName = 'DataPrevisaoTermino'
      EditMask = '!99/99/0000;1;_'
    end
    object TbVeiculoPrioridade: TWideStringField
      Alignment = taCenter
      FieldName = 'Prioridade'
      Size = 15
    end
    object TbVeiculoEJA: TIntegerField
      Alignment = taCenter
      FieldName = 'EJA'
    end
    object TbVeiculoDEPTO: TIntegerField
      Alignment = taCenter
      FieldName = 'DEPTO'
    end
    object TbVeiculoControlador: TWideStringField
      FieldName = 'Controlador'
      Size = 25
    end
    object TbVeiculoRota: TWideStringField
      Alignment = taCenter
      FieldName = 'Rota'
      Size = 15
    end
    object TbVeiculoCombustivel: TWideStringField
      FieldName = 'Combustivel'
      Size = 15
    end
    object TbVeiculoKMInicial: TIntegerField
      Alignment = taCenter
      FieldName = 'KMInicial'
    end
    object TbVeiculoObjetivo: TIntegerField
      Alignment = taCenter
      FieldName = 'Objetivo'
    end
    object TbVeiculoObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
  end
  object TbControlador: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    AfterInsert = TbCoordAfterInsert
    AfterEdit = TbCoordAfterEdit
    AfterPost = TbCoordAfterPost
    TableName = 'CADControlador'
    Left = 28
    Top = 274
    object TbControladorControlador: TWideStringField
      FieldName = 'Controlador'
      Size = 30
    end
    object TbControladorTurno: TWideStringField
      Alignment = taCenter
      FieldName = 'Turno'
      Size = 3
    end
    object TbControladorRamal: TIntegerField
      Alignment = taCenter
      FieldName = 'Ramal'
    end
    object TbControladorObs: TWideMemoField
      FieldName = 'Obs'
      BlobType = ftWideMemo
    end
  end
  object TbGrupos: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    AfterInsert = TbCoordAfterInsert
    AfterEdit = TbCoordAfterEdit
    AfterPost = TbCoordAfterPost
    TableName = 'CADGrupos'
    Left = 25
    Top = 326
    object TbGruposGrupo: TIntegerField
      Alignment = taCenter
      FieldName = 'Grupo'
    end
    object TbGruposDataInicio: TDateTimeField
      Alignment = taCenter
      FieldName = 'DataInicio'
    end
    object TbGruposDataVolta: TDateTimeField
      Alignment = taCenter
      FieldName = 'DataVolta'
    end
    object TbGruposTipoEscala: TWideStringField
      Alignment = taCenter
      FieldName = 'TipoEscala'
      Size = 3
    end
    object TbGruposFolga: TBooleanField
      FieldName = 'Folga'
    end
  end
  object TbFerias: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    AfterInsert = TbCoordAfterInsert
    AfterEdit = TbCoordAfterEdit
    AfterPost = TbCoordAfterPost
    TableName = 'CADFerias'
    Left = 26
    Top = 381
    object TbFeriasMotorista: TWideStringField
      FieldName = 'Motorista'
    end
    object TbFeriasTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object TbFeriasDataInicio: TDateTimeField
      FieldName = 'DataInicio'
    end
    object TbFeriasDataVolta: TDateTimeField
      FieldName = 'DataVolta'
    end
  end
  object TbRotas: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    AfterInsert = TbCoordAfterInsert
    AfterEdit = TbCoordAfterEdit
    AfterPost = TbCoordAfterPost
    TableName = 'CADRota'
    Left = 23
    Top = 600
    object TbRotasRota: TWideStringField
      Alignment = taCenter
      FieldName = 'Rota'
      Size = 15
    end
    object TbRotasCaracteristica: TWideMemoField
      FieldName = 'Caracteristica'
      BlobType = ftWideMemo
    end
  end
  object TbParadas: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    AfterInsert = TbCoordAfterInsert
    AfterEdit = TbCoordAfterEdit
    AfterPost = TbCoordAfterPost
    TableName = 'CADParadas'
    Left = 23
    Top = 657
    object TbParadasCodParada: TWideStringField
      Alignment = taCenter
      FieldName = 'CodParada'
    end
    object TbParadasDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 70
    end
  end
  object DsCoord: TDataSource
    DataSet = TbCoord
    Left = 103
    Top = 72
  end
  object DsMotorista: TDataSource
    DataSet = TbMotorista
    Left = 104
    Top = 120
  end
  object DsVeiculo: TDataSource
    DataSet = TbVeiculo
    Left = 104
    Top = 173
  end
  object DsControlador: TDataSource
    DataSet = TbControlador
    Left = 105
    Top = 274
  end
  object DsGrupos: TDataSource
    DataSet = TbGrupos
    Left = 105
    Top = 327
  end
  object DsFerias: TDataSource
    DataSet = TbFerias
    Left = 104
    Top = 382
  end
  object DsRotas: TDataSource
    DataSet = TbRotas
    Left = 102
    Top = 600
  end
  object DsParadas: TDataSource
    DataSet = TbParadas
    Left = 105
    Top = 656
  end
  object DsTurnos: TDataSource
    DataSet = TbTurnos
    Left = 729
    Top = 72
  end
  object TbMotoristasDisponiv: TADOTable
    Active = True
    Connection = LigaBD2
    CursorType = ctStatic
    TableName = 'MotoristasDisponiveis'
    Left = 613
    Top = 301
    object TbMotoristasDisponivCodPlantao: TIntegerField
      FieldName = 'CodPlantao'
    end
    object TbMotoristasDisponivmotorista: TWideStringField
      FieldName = 'motorista'
    end
  end
  object TbMotoristasAusentes: TADOTable
    Active = True
    Connection = LigaBD2
    CursorType = ctStatic
    TableName = 'MotoristasAusentes'
    Left = 615
    Top = 417
    object TbMotoristasAusentesCodPlantao: TIntegerField
      FieldName = 'CodPlantao'
    end
    object TbMotoristasAusentesmotorista: TWideStringField
      FieldName = 'motorista'
    end
    object TbMotoristasAusentesMotivo: TWideStringField
      FieldName = 'Motivo'
    end
  end
  object DSMotoristasDisponiv: TDataSource
    DataSet = TbMotoristasDisponiv
    Left = 729
    Top = 302
  end
  object DSMotoristasAusentes: TDataSource
    DataSet = TbMotoristasAusentes
    Left = 729
    Top = 416
  end
  object QREstadoVeiculosSP: TADOQuery
    Active = True
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from PosicaoVeiculo where Prioridade = "Special Plus" '
      'order by  numeroordem')
    Left = 230
    Top = 296
    object QREstadoVeiculosSPCod: TAutoIncField
      FieldName = 'Cod'
      ReadOnly = True
    end
    object QREstadoVeiculosSPNumeroOrdem: TIntegerField
      FieldName = 'NumeroOrdem'
    end
    object QREstadoVeiculosSPPrioridade: TWideStringField
      FieldName = 'Prioridade'
      Size = 15
    end
    object QREstadoVeiculosSPVeiculo: TWideStringField
      FieldName = 'Veiculo'
    end
    object QREstadoVeiculosSPMotorista1: TWideStringField
      FieldName = 'Motorista1'
    end
    object QREstadoVeiculosSPMotorista2: TWideStringField
      FieldName = 'Motorista2'
    end
    object QREstadoVeiculosSPRodando: TBooleanField
      FieldName = 'Rodando'
    end
  end
  object QREstadoVeiculosHiGH: TADOQuery
    Active = True
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from PosicaoVeiculo  where Prioridade = "High" '
      'order by  numeroordem')
    Left = 228
    Top = 352
    object QREstadoVeiculosHiGHCod: TAutoIncField
      FieldName = 'Cod'
      ReadOnly = True
    end
    object QREstadoVeiculosHiGHNumeroOrdem: TIntegerField
      FieldName = 'NumeroOrdem'
    end
    object QREstadoVeiculosHiGHPrioridade: TWideStringField
      FieldName = 'Prioridade'
      Size = 15
    end
    object QREstadoVeiculosHiGHVeiculo: TWideStringField
      FieldName = 'Veiculo'
    end
    object QREstadoVeiculosHiGHMotorista1: TWideStringField
      FieldName = 'Motorista1'
    end
    object QREstadoVeiculosHiGHMotorista2: TWideStringField
      FieldName = 'Motorista2'
    end
    object QREstadoVeiculosHiGHRodando: TBooleanField
      FieldName = 'Rodando'
    end
  end
  object DSQREstadoVeiculosSP: TDataSource
    DataSet = QREstadoVeiculosSP
    Left = 341
    Top = 296
  end
  object DSQREstadoVeiculosHiGH: TDataSource
    DataSet = QREstadoVeiculosHiGH
    Left = 344
    Top = 352
  end
  object QRMotorEscalados: TADOQuery
    Active = True
    Connection = LigaBD2
    CursorType = ctStatic
    DataSource = DSQRTurnos
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
      'select * from motoristasescalados where codplantao = :codplantao')
    Left = 616
    Top = 240
    object QRMotorEscaladosCodPlantao: TIntegerField
      FieldName = 'CodPlantao'
    end
    object QRMotorEscaladosVeiculo: TWideStringField
      FieldName = 'Veiculo'
    end
    object QRMotorEscaladosmotorista1: TWideStringField
      FieldName = 'motorista1'
    end
    object QRMotorEscaladosmotorista2: TWideStringField
      FieldName = 'motorista2'
    end
  end
  object DSQRMotorEscalados: TDataSource
    DataSet = QRMotorEscalados
    Left = 728
    Top = 240
  end
  object TbHistoricoVeiculos: TADOTable
    Connection = LigaBD3
    CursorType = ctStatic
    TableName = 'HistoricoVeiculos'
    Left = 888
    Top = 72
    object TbHistoricoVeiculosVeiculo: TWideStringField
      FieldName = 'Veiculo'
      Size = 15
    end
    object TbHistoricoVeiculosDiaInicio: TDateTimeField
      FieldName = 'DiaInicio'
    end
    object TbHistoricoVeiculosDiaFinal: TDateTimeField
      FieldName = 'DiaFinal'
    end
    object TbHistoricoVeiculosHoraInicio: TWideStringField
      FieldName = 'HoraInicio'
      Size = 10
    end
    object TbHistoricoVeiculosHoraFinal: TWideStringField
      FieldName = 'HoraFinal'
      Size = 10
    end
    object TbHistoricoVeiculosTotalHoras: TWideStringField
      FieldName = 'TotalHoras'
      Size = 10
    end
    object TbHistoricoVeiculosTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object TbHistoricoVeiculosCodParada: TWideStringField
      FieldName = 'CodParada'
      Size = 6
    end
    object TbHistoricoVeiculosdescricaoParada: TWideStringField
      FieldName = 'descricaoParada'
      Size = 150
    end
  end
  object DsHitoricoVeiculos: TDataSource
    DataSet = TbHistoricoVeiculos
    Left = 984
    Top = 72
  end
  object TbTurnos: TADOTable
    Active = True
    Connection = LigaBD2
    CursorType = ctStatic
    TableName = 'Turnos'
    Left = 616
    Top = 72
    object TbTurnosCodPlantao: TAutoIncField
      Alignment = taCenter
      FieldName = 'CodPlantao'
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object TbTurnosData: TDateTimeField
      Alignment = taCenter
      FieldName = 'Data'
    end
    object TbTurnosTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object TbTurnosCoord_01: TWideStringField
      FieldName = 'Coord_01'
    end
    object TbTurnosCoord_02: TWideStringField
      FieldName = 'Coord_02'
    end
    object TbTurnosCoord_03: TWideStringField
      FieldName = 'Coord_03'
    end
    object TbTurnosApoio_01: TWideStringField
      Alignment = taCenter
      FieldName = 'Apoio_01'
    end
    object TbTurnosApoio_02: TWideStringField
      Alignment = taCenter
      FieldName = 'Apoio_02'
    end
    object TbTurnosStandBy: TWideStringField
      Alignment = taCenter
      FieldName = 'StandBy'
    end
    object TbTurnosOcorrencias: TWideMemoField
      FieldName = 'Ocorrencias'
      BlobType = ftWideMemo
    end
    object TbTurnosHoraInicio: TWideStringField
      Alignment = taCenter
      FieldName = 'HoraInicio'
      Size = 10
    end
    object TbTurnosHoraFinal: TWideStringField
      FieldName = 'HoraFinal'
      Size = 10
    end
    object TbTurnosLogin: TWideStringField
      Alignment = taCenter
      FieldName = 'Login'
    end
  end
  object DsTbMotoristasEscalados: TDataSource
    DataSet = TbMotoristasEscalados
    Left = 728
    Top = 184
  end
  object TbMotoristasEscalados: TADOTable
    Active = True
    Connection = LigaBD2
    CursorType = ctStatic
    TableName = 'MotoristasEscalados'
    Left = 616
    Top = 184
    object TbMotoristasEscaladosCodPlantao: TIntegerField
      FieldName = 'CodPlantao'
    end
    object TbMotoristasEscaladosVeiculo: TWideStringField
      FieldName = 'Veiculo'
    end
    object TbMotoristasEscaladosmotorista1: TWideStringField
      FieldName = 'motorista1'
    end
    object TbMotoristasEscaladosmotorista2: TWideStringField
      FieldName = 'motorista2'
    end
  end
  object DSQRMotorDisponives: TDataSource
    DataSet = QRMotorDisponiveis
    Left = 728
    Top = 360
  end
  object DSQRMotorAusentes: TDataSource
    DataSet = QRMotorAusentes
    Left = 732
    Top = 480
  end
  object QRMotorDisponiveis: TADOQuery
    Active = True
    Connection = LigaBD2
    CursorType = ctStatic
    DataSource = DSQRTurnos
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
      
        'select * from motoristasdisponiveis where codplantao = :codplant' +
        'ao')
    Left = 616
    Top = 360
    object QRMotorDisponiveisCodPlantao: TIntegerField
      FieldName = 'CodPlantao'
    end
    object QRMotorDisponiveismotorista: TWideStringField
      FieldName = 'motorista'
    end
  end
  object QRMotorAusentes: TADOQuery
    Active = True
    Connection = LigaBD2
    CursorType = ctStatic
    DataSource = DSQRTurnos
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
      'select * from motoristasAusentes where codplantao = :codplantao')
    Left = 613
    Top = 480
    object QRMotorAusentesCodPlantao: TIntegerField
      FieldName = 'CodPlantao'
    end
    object QRMotorAusentesmotorista: TWideStringField
      FieldName = 'motorista'
    end
    object QRMotorAusentesMotivo: TWideStringField
      FieldName = 'Motivo'
    end
  end
  object TbAusencias: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    TableName = 'CADAusencias'
    Left = 25
    Top = 496
    object TbAusenciasMotorista: TWideStringField
      FieldName = 'Motorista'
    end
    object TbAusenciasTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object TbAusenciasDataAusencia: TDateTimeField
      FieldName = 'DataAusencia'
    end
    object TbAusenciasDataPrevistaPagar: TDateTimeField
      FieldName = 'DataPrevistaPagar'
    end
    object TbAusenciasMotivo: TWideStringField
      FieldName = 'Motivo'
      Size = 100
    end
  end
  object TbEscalaEspecial: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    TableName = 'EscalaEspecial'
    Left = 34
    Top = 712
    object TbEscalaEspecialVeiculo: TWideStringField
      FieldName = 'Veiculo'
      Size = 15
    end
    object TbEscalaEspecialTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object TbEscalaEspecialData: TDateTimeField
      FieldName = 'Data'
    end
    object TbEscalaEspecialDiaSemana: TWideStringField
      FieldName = 'Dia Semana'
      Size = 40
    end
    object TbEscalaEspecialMotorista1: TWideStringField
      FieldName = 'Motorista1'
    end
    object TbEscalaEspecialMotorista2: TWideStringField
      FieldName = 'Motorista2'
    end
    object TbEscalaEspecialVeicParado: TBooleanField
      FieldName = 'VeicParado'
    end
  end
  object DsAusencia: TDataSource
    DataSet = TbAusencias
    Left = 101
    Top = 496
  end
  object DsQREscalaEspecial: TDataSource
    DataSet = QREscalaEspecial
    Left = 128
    Top = 768
  end
  object DSQRHistoricoVeic: TDataSource
    DataSet = QRHistoricoVeic
    Left = 984
    Top = 128
  end
  object QRHistoricoVeic: TADOQuery
    Connection = LigaBD3
    CursorType = ctStatic
    DataSource = DsVeiculo
    Parameters = <
      item
        Name = 'veiculo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = 'B402-049'
      end>
    SQL.Strings = (
      
        'select *, DiaFinal - DiaInicio as TotalDias  from historicoveicu' +
        'los where veiculo = :veiculo order by DiaInicio desc'
      ' ')
    Left = 888
    Top = 128
    object QRHistoricoVeicVeiculo: TWideStringField
      FieldName = 'Veiculo'
      Size = 15
    end
    object QRHistoricoVeicDiaInicio: TDateTimeField
      FieldName = 'DiaInicio'
    end
    object QRHistoricoVeicDiaFinal: TDateTimeField
      FieldName = 'DiaFinal'
    end
    object QRHistoricoVeicHoraInicio: TWideStringField
      FieldName = 'HoraInicio'
      Size = 10
    end
    object QRHistoricoVeicHoraFinal: TWideStringField
      FieldName = 'HoraFinal'
      Size = 10
    end
    object QRHistoricoVeicTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object QRHistoricoVeicCodParada: TWideStringField
      FieldName = 'CodParada'
      Size = 6
    end
    object QRHistoricoVeicdescricaoParada: TWideStringField
      FieldName = 'descricaoParada'
      Size = 150
    end
    object QRHistoricoVeicTotalHoras: TWideStringField
      FieldName = 'TotalHoras'
      Size = 10
    end
    object QRHistoricoVeicTotalDias: TFloatField
      FieldName = 'TotalDias'
      ReadOnly = True
    end
  end
  object DSQRFerias: TDataSource
    DataSet = QRFerias
    Left = 102
    Top = 439
  end
  object DSQRAusencias: TDataSource
    DataSet = QRAusencias
    Left = 104
    Top = 552
  end
  object QRFerias: TADOQuery
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select *, datavolta - datainicio as total from cadferias where m' +
        'onth(datainicio) = month(now) order by datainicio')
    Left = 25
    Top = 437
    object QRFeriasMotorista: TWideStringField
      FieldName = 'Motorista'
    end
    object QRFeriasTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object QRFeriasDataInicio: TDateTimeField
      FieldName = 'DataInicio'
    end
    object QRFeriasDataVolta: TDateTimeField
      FieldName = 'DataVolta'
    end
    object QRFeriastotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
  end
  object QRAusencias: TADOQuery
    Active = True
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadausencias order by DataAusencia')
    Left = 24
    Top = 550
    object QRAusenciasMotorista: TWideStringField
      FieldName = 'Motorista'
    end
    object QRAusenciasTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object QRAusenciasDataAusencia: TDateTimeField
      FieldName = 'DataAusencia'
    end
    object QRAusenciasDataPrevistaPagar: TDateTimeField
      FieldName = 'DataPrevistaPagar'
    end
    object QRAusenciasMotivo: TWideStringField
      FieldName = 'Motivo'
      Size = 100
    end
  end
  object QREscalaEspecial: TADOQuery
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from escalaespecial')
    Left = 32
    Top = 768
    object QREscalaEspecialVeiculo: TWideStringField
      FieldName = 'Veiculo'
      Size = 15
    end
    object QREscalaEspecialTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object QREscalaEspecialData: TDateTimeField
      FieldName = 'Data'
    end
    object QREscalaEspecialDiaSemana: TWideStringField
      FieldName = 'Dia Semana'
      Size = 40
    end
    object QREscalaEspecialMotorista1: TWideStringField
      FieldName = 'Motorista1'
    end
    object QREscalaEspecialMotorista2: TWideStringField
      FieldName = 'Motorista2'
    end
  end
  object DsEscalaEspecial: TDataSource
    DataSet = TbEscalaEspecial
    Left = 116
    Top = 711
  end
  object LigaBD2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Ford\DBROD2.MDB;' +
      'Persist Security Info=False;Jet OLEDB:Database Password=lelesisi'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 675
    Top = 11
  end
  object LigaBD3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Ford\DBROD3.MDB;' +
      'Persist Security Info=False;Jet OLEDB:Database Password=lelesisi'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 935
    Top = 3
  end
  object DSQRtemp1: TDataSource
    DataSet = QRTemp1
    Left = 320
    Top = 432
  end
  object QRTemp1: TADOQuery
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadferias')
    Left = 256
    Top = 432
  end
  object QRMotorista: TADOQuery
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadmotorista order by nome')
    Left = 184
    Top = 96
    object QRMotoristaNome: TWideStringField
      FieldName = 'Nome'
    end
    object QRMotoristaFuncao: TWideStringField
      FieldName = 'Funcao'
      Size = 15
    end
    object QRMotoristaTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object QRMotoristaNomeCompleto: TWideStringField
      FieldName = 'NomeCompleto'
      Size = 40
    end
    object QRMotoristaDataCadastro: TDateTimeField
      FieldName = 'DataCadastro'
    end
    object QRMotoristaEnd: TWideStringField
      FieldName = 'End'
      Size = 70
    end
    object QRMotoristaNumero: TIntegerField
      FieldName = 'Numero'
    end
    object QRMotoristaBairro: TWideStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object QRMotoristaCidade: TWideStringField
      FieldName = 'Cidade'
      Size = 25
    end
    object QRMotoristaCEP: TWideStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QRMotoristaTel: TWideStringField
      FieldName = 'Tel'
    end
    object QRMotoristaCel: TWideStringField
      FieldName = 'Cel'
    end
    object QRMotoristaTelRecado: TWideStringField
      FieldName = 'TelRecado'
    end
    object QRMotoristaCatCNH: TWideStringField
      FieldName = 'CatCNH'
      Size = 4
    end
    object QRMotoristaRegCNH: TWideStringField
      FieldName = 'RegCNH'
    end
    object QRMotoristaVencCNH: TDateTimeField
      FieldName = 'VencCNH'
    end
    object QRMotoristaNumRV: TWideStringField
      FieldName = 'NumRV'
      Size = 15
    end
    object QRMotoristaVencRV: TDateTimeField
      FieldName = 'VencRV'
    end
    object QRMotoristaBanco: TWideStringField
      FieldName = 'Banco'
      Size = 25
    end
    object QRMotoristaAG: TWideStringField
      FieldName = 'AG'
      Size = 12
    end
    object QRMotoristaCC: TWideStringField
      FieldName = 'C/C'
      Size = 30
    end
    object QRMotoristaGrupo: TIntegerField
      FieldName = 'Grupo'
    end
    object QRMotoristaInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object QRMotoristaMotivo: TWideStringField
      FieldName = 'Motivo'
      Size = 30
    end
    object QRMotoristaAvaliao: TWideMemoField
      FieldName = 'Avalia'#231#227'o'
      BlobType = ftWideMemo
    end
    object QRMotoristaObservacao: TWideMemoField
      FieldName = 'Observacao'
      BlobType = ftWideMemo
    end
    object QRMotoristaOrdemEscala: TIntegerField
      FieldName = 'OrdemEscala'
    end
    object QRMotoristaFolga: TBooleanField
      FieldName = 'Folga'
    end
    object QRMotoristaFalta: TBooleanField
      FieldName = 'Falta'
    end
    object QRMotoristaFerias: TBooleanField
      FieldName = 'Ferias'
    end
  end
  object DSQRMotorista: TDataSource
    DataSet = QRMotorista
    Left = 256
    Top = 96
  end
  object DSQRtemp2: TDataSource
    DataSet = QRtemp2
    Left = 320
    Top = 488
  end
  object QRtemp2: TADOQuery
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadgrupos')
    Left = 256
    Top = 488
  end
  object DSQRVeiculo: TDataSource
    DataSet = QRVeiculo
    Left = 256
    Top = 176
  end
  object QRVeiculo: TADOQuery
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadveiculo')
    Left = 184
    Top = 176
  end
  object DsStatusBD: TDataSource
    DataSet = TbStatusBD
    Left = 120
    Top = 816
  end
  object TbStatusBD: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    TableName = 'StatusBD'
    Left = 32
    Top = 824
    object TbStatusBDPlanto: TIntegerField
      FieldName = 'Plant'#227'o'
    end
    object TbStatusBDAtivo: TBooleanField
      FieldName = 'Ativo'
    end
  end
  object DlgLocalizaBD: TOpenDialog
    Filter = 'Banco de Dados (*.mdb)|DBRod.mdb;'
    Left = 416
    Top = 48
  end
  object LigaBD: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Ford\DBROD.MDB;P' +
      'ersist Security Info=False;Jet OLEDB:Database Password=lelesisi'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 184
    Top = 16
  end
  object DSMotorDispTemp: TDataSource
    DataSet = TBMotorDispTemp
    Left = 336
    Top = 560
  end
  object TBMotorDispTemp: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    TableName = 'CADMotoristasDispTemp'
    Left = 240
    Top = 560
    object TBMotorDispTempMotorista: TWideStringField
      FieldName = 'Motorista'
    end
  end
  object TbUsers: TADOTable
    Connection = LigaBD
    CursorType = ctStatic
    TableName = 'Users'
    Left = 272
    Top = 672
    object TbUsersUsuario: TWideStringField
      FieldName = 'Usuario'
    end
    object TbUsersSenha: TWideStringField
      FieldName = 'Senha'
      Size = 8
    end
    object TbUsersBloqueado: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'N'#227'o'
      FieldName = 'Bloqueado'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersCoordenadores: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Coordenadores'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersMotoristas: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Motoristas'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersVeiculos: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Veiculos'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersRotas: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Rotas'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersGrupos: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Grupos'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersParadas: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Paradas'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersPlantao: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Plantao'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersProgramarFaltas: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'ProgramarFaltas'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersControladores: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Controladores'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersProgramarFerias: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'ProgramarFerias'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersEscalaEspecial: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'EscalaEspecial'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersCorFundo: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'CorFundo'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersGerarBackup: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'GerarBackup'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersRestBackup: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'RestBackup'
      DisplayValues = 'Sim;N'#227'o'
    end
    object TbUsersUsers: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'Sim'
      FieldName = 'Users'
      DisplayValues = 'Sim;N'#227'o'
    end
  end
  object QrUsers: TADOQuery
    Active = True
    Connection = LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from users')
    Left = 272
    Top = 728
    object QrUsersUsuario: TWideStringField
      FieldName = 'Usuario'
    end
    object QrUsersSenha: TWideStringField
      FieldName = 'Senha'
      Size = 8
    end
    object QrUsersBloqueado: TBooleanField
      FieldName = 'Bloqueado'
    end
    object QrUsersCoordenadores: TBooleanField
      FieldName = 'Coordenadores'
    end
    object QrUsersMotoristas: TBooleanField
      FieldName = 'Motoristas'
    end
    object QrUsersVeiculos: TBooleanField
      FieldName = 'Veiculos'
    end
    object QrUsersRotas: TBooleanField
      FieldName = 'Rotas'
    end
    object QrUsersGrupos: TBooleanField
      FieldName = 'Grupos'
    end
    object QrUsersParadas: TBooleanField
      FieldName = 'Paradas'
    end
    object QrUsersPlantao: TBooleanField
      FieldName = 'Plantao'
    end
    object QrUsersProgramarFaltas: TBooleanField
      FieldName = 'ProgramarFaltas'
    end
    object QrUsersControladores: TBooleanField
      FieldName = 'Controladores'
    end
    object QrUsersProgramarFerias: TBooleanField
      FieldName = 'ProgramarFerias'
    end
    object QrUsersEscalaEspecial: TBooleanField
      FieldName = 'EscalaEspecial'
    end
    object QrUsersCorFundo: TBooleanField
      FieldName = 'CorFundo'
    end
    object QrUsersGerarBackup: TBooleanField
      FieldName = 'GerarBackup'
    end
    object QrUsersRestBackup: TBooleanField
      FieldName = 'RestBackup'
    end
    object QrUsersUsers: TBooleanField
      FieldName = 'Users'
    end
  end
  object DsUsers: TDataSource
    DataSet = TbUsers
    Left = 328
    Top = 672
  end
  object DsQRUser: TDataSource
    DataSet = QrUsers
    Left = 328
    Top = 728
  end
  object DSQRTurnos: TDataSource
    DataSet = QRTurnos
    Left = 728
    Top = 128
  end
  object QRTurnos: TADOQuery
    Active = True
    Connection = LigaBD2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from turnos where data = date() order by codplantao')
    Left = 616
    Top = 128
    object QRTurnosCodPlantao: TAutoIncField
      FieldName = 'CodPlantao'
      ReadOnly = True
    end
    object QRTurnosData: TDateTimeField
      FieldName = 'Data'
    end
    object QRTurnosTurno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
    object QRTurnosCoord_01: TWideStringField
      FieldName = 'Coord_01'
    end
    object QRTurnosCoord_02: TWideStringField
      FieldName = 'Coord_02'
    end
    object QRTurnosCoord_03: TWideStringField
      FieldName = 'Coord_03'
    end
    object QRTurnosApoio_01: TWideStringField
      FieldName = 'Apoio_01'
    end
    object QRTurnosApoio_02: TWideStringField
      FieldName = 'Apoio_02'
    end
    object QRTurnosStandBy: TWideStringField
      FieldName = 'StandBy'
    end
    object QRTurnosHoraInicio: TWideStringField
      FieldName = 'HoraInicio'
      Size = 10
    end
    object QRTurnosHoraFinal: TWideStringField
      FieldName = 'HoraFinal'
      Size = 10
    end
    object QRTurnosLogin: TWideStringField
      FieldName = 'Login'
    end
    object QRTurnosOcorrencias: TWideMemoField
      FieldName = 'Ocorrencias'
      BlobType = ftWideMemo
    end
  end
  object DSTempHistVeic: TDataSource
    DataSet = QRTempHistVeic
    Left = 984
    Top = 192
  end
  object QRTempHistVeic: TADOQuery
    Active = True
    Connection = LigaBD3
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from historicoVeiculos')
    Left = 896
    Top = 192
  end
  object DsPosicaoVeiculo: TDataSource
    DataSet = TbPosicaoVeiculo
    Left = 120
    Top = 224
  end
  object TbPosicaoVeiculo: TADOTable
    Active = True
    Connection = LigaBD
    CursorType = ctStatic
    TableName = 'PosicaoVeiculo'
    Left = 32
    Top = 224
    object TbPosicaoVeiculoNumeroOrdem: TIntegerField
      FieldName = 'NumeroOrdem'
    end
    object TbPosicaoVeiculoPrioridade: TWideStringField
      FieldName = 'Prioridade'
      Size = 15
    end
    object TbPosicaoVeiculoVeiculo: TWideStringField
      FieldName = 'Veiculo'
    end
    object TbPosicaoVeiculoMotorista1: TWideStringField
      FieldName = 'Motorista1'
    end
    object TbPosicaoVeiculoMotorista2: TWideStringField
      FieldName = 'Motorista2'
    end
    object TbPosicaoVeiculoRodando: TBooleanField
      FieldName = 'Rodando'
    end
  end
end

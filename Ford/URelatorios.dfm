object FrmRelatorios: TFrmRelatorios
  Left = 0
  Top = 0
  Caption = 'Relatorio'
  ClientHeight = 95
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 40
    Top = 40
    ReportForm = {17000000}
  end
  object Turnos: TfrDBDataSet
    DataSet = DM.QRTurnos
    OpenDataSource = False
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    Left = 136
    Top = 40
  end
  object MotorEscalados: TfrDBDataSet
    DataSet = DM.QRMotorEscalados
    OpenDataSource = False
    Left = 168
    Top = 40
  end
  object MotorDisponiveis: TfrDBDataSet
    DataSet = DM.QRMotorDisponiveis
    OpenDataSource = False
    Left = 200
    Top = 40
  end
  object MotorAusentes: TfrDBDataSet
    DataSet = DM.QRMotorAusentes
    OpenDataSource = False
    Left = 232
    Top = 40
  end
  object frReport2: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 80
    Top = 40
    ReportForm = {17000000}
  end
end

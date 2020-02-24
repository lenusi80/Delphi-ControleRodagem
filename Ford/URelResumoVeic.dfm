object FrmRelResumoVeic: TFrmRelResumoVeic
  Left = 0
  Top = 0
  Caption = 'FrmRelResumoVeic'
  ClientHeight = 60
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
    Left = 56
    Top = 24
    ReportForm = {17000000}
  end
  object frDBDataSet1: TfrDBDataSet
    Left = 96
    Top = 24
  end
end

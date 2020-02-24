object FrmHistVeic: TFrmHistVeic
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Hist'#243'rico de Ve'#237'culos'
  ClientHeight = 534
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 239
    Width = 723
    Height = 194
    DataSource = DM.DSTempHistVeic
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 739
    Height = 225
    Caption = 'GroupBox1'
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 16
      Top = 16
      Width = 209
      Height = 73
      Caption = 'Turno'
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 231
      Top = 24
      Width = 185
      Height = 65
      Caption = 'Ve'#237'culo'
      TabOrder = 1
    end
    object GroupBox4: TGroupBox
      Left = 422
      Top = 24
      Width = 185
      Height = 65
      Caption = 'Evento'
      TabOrder = 2
    end
    object GroupBox5: TGroupBox
      Left = 16
      Top = 95
      Width = 329
      Height = 82
      Caption = 'Data'
      TabOrder = 3
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 435
    Width = 723
    Height = 91
    Caption = 'Total'
    TabOrder = 2
  end
end

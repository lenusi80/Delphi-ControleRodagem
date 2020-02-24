object FrmCorFundo: TFrmCorFundo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cor do Fundo'
  ClientHeight = 306
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 11
    Width = 194
    Height = 16
    Caption = 'Escolha abaixo a cor desejada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ColorGrid1: TColorGrid
    Left = 11
    Top = 33
    Width = 224
    Height = 208
    Ctl3D = False
    ForegroundEnabled = False
    ParentCtl3D = False
    TabOrder = 0
    OnClick = ColorGrid1Click
    OnMouseMove = ColorGrid1MouseMove
  end
  object BitBtn1: TBitBtn
    Left = 37
    Top = 274
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 133
    Top = 274
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object CheckBox1: TCheckBox
    Left = 11
    Top = 247
    Width = 224
    Height = 17
    Caption = 'Desabilitar Imagem de Fundo'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
end

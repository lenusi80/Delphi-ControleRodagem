object FormTeste: TFormTeste
  Left = 0
  Top = 0
  Width = 769
  Height = 747
  AutoScroll = True
  Caption = 'FormTeste'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 417
    Top = 15
    Width = 105
    Height = 13
    AutoSize = False
  end
  object Temp: TLabel
    Left = 8
    Top = 223
    Width = 117
    Height = 13
    Caption = 'Motoristas na Pr'#233' Escala'
  end
  object Label8: TLabel
    Left = 381
    Top = 224
    Width = 154
    Height = 13
    Caption = 'Ve'#237'culos com cod RN atualmente'
  end
  object Label2: TLabel
    Left = 8
    Top = 42
    Width = 69
    Height = 13
    Caption = 'CadMotoristas'
  end
  object Label3: TLabel
    Left = 375
    Top = 42
    Width = 370
    Height = 13
    Caption = 
      'Motoristas filtrado por Turno; inativo, ferias e folga como fals' +
      'o; ordem escala'
  end
  object Label5: TLabel
    Left = 8
    Top = 390
    Width = 33
    Height = 13
    Caption = 'Turnos'
  end
  object Label7: TLabel
    Left = 381
    Top = 390
    Width = 100
    Height = 13
    Caption = 'Motoristas Escalados'
  end
  object Label9: TLabel
    Left = 16
    Top = 545
    Width = 106
    Height = 13
    Caption = 'Motoristas Disponiveis'
  end
  object Label10: TLabel
    Left = 392
    Top = 545
    Width = 98
    Height = 13
    Caption = 'Motoristas Ausentes'
  end
  object ComboBox1: TComboBox
    Left = 33
    Top = 12
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = '1'#186
    Items.Strings = (
      '0'
      '1'#186
      '2'#186
      '3'#186)
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 239
    Width = 361
    Height = 145
    DataSource = DM.DSQRtemp1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 322
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Reflesh'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 226
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Escala'
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBGrid3: TDBGrid
    Left = 375
    Top = 56
    Width = 379
    Height = 164
    DataSource = DM.DSQRMotorista
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Folga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OrdemEscala'
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 361
    Height = 161
    DataSource = DM.DSQRtemp2
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grupo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Folga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OrdemEscala'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Turno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Falta'
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 381
    Top = 237
    Width = 373
    Height = 147
    DataSource = DM.DSQRVeiculo
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid5: TDBGrid
    Left = 8
    Top = 402
    Width = 361
    Height = 141
    DataSource = DM.DsTurnos
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid6: TDBGrid
    Left = 381
    Top = 402
    Width = 373
    Height = 141
    DataSource = DM.DSQRMotorEscalados
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid7: TDBGrid
    Left = 8
    Top = 562
    Width = 361
    Height = 145
    DataSource = DM.DSQRMotorDisponives
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid8: TDBGrid
    Left = 392
    Top = 561
    Width = 362
    Height = 146
    DataSource = DM.DSQRMotorAusentes
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 622
    Top = 14
    Width = 123
    Height = 25
    DataSource = DM.DsTurnos
    VisibleButtons = [nbPrior, nbNext, nbRefresh]
    TabOrder = 11
  end
end

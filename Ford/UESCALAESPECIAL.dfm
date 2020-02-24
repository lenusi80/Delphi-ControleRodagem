object FrmEscalaEspecial: TFrmEscalaEspecial
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Escala Especial para Ve'#237'culos'
  ClientHeight = 462
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 9
    Top = 8
    Width = 574
    Height = 153
    TabOrder = 0
    object Label1: TLabel
      Left = 227
      Top = 61
      Width = 69
      Height = 16
      Caption = 'Motorista 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 442
      Top = 61
      Width = 29
      Height = 16
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 14
      Top = 61
      Width = 69
      Height = 16
      Caption = 'Motorista 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 24
      Width = 48
      Height = 16
      Caption = 'Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 277
      Top = 24
      Width = 37
      Height = 16
      Caption = 'Turno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 14
      Top = 76
      Width = 201
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      KeyField = 'Nome'
      ListField = 'Nome'
      ListSource = DSQRmotorist1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = DBLookupComboBox1Exit
      OnKeyUp = DBLookupComboBox1KeyUp
    end
    object BitBtn1: TBitBtn
      Left = 28
      Top = 116
      Width = 111
      Height = 25
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03
        5D05035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF035D055BF791058C0D035D05FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
        F79105950E035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF035D055BF79105920D035D05FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
        F79106950F035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        035D05035D05035D05035D05035D055BF7910C9C18035D05035D05035D05035D
        05035D05FF00FFFF00FFFF00FF035D055BF7913BDA6930CF572AC64D21B83C17
        A62B119F210D9E1C0A9A1506920E05930D058B0D035D05FF00FFFF00FF035D05
        5BF7915BF7915BF7915BF7915BF7915BF79118A92F5BF7915BF7915BF7915BF7
        915BF791035D05FF00FFFF00FFFF00FF035D05035D05035D05035D05035D055B
        F79125BC42035D05035D05035D05035D05035D05FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF035D055BF79130CE57035D05FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
        F7913BD968035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF035D055BF79148EB7F035D05FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
        F7915BF791035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF035D05035D05FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn2: TBitBtn
      Left = 150
      Top = 116
      Width = 153
      Height = 25
      Caption = 'Excluir Selecionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00018B00018B00018B00018B00018B00018B00018B00018B00018B0001
        8BFF00FFFF00FFFF00FFFF00FFFF00FF00018B3F69FF0014FF001CFF001CFA00
        1BEE001BE2001AD8001CCC001CC2001FBC00018BFF00FFFF00FFFF00FFFF00FF
        00018B96B1FF4966FF4B6EFF4B6EFF4B6DF84C6DF24C6DEB3D5EE23455DC3459
        D900018BFF00FFFF00FFFF00FFFF00FFFF00FF00018B00018B00018B00018B00
        018B00018B00018B00018B00018B00018BFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn3: TBitBtn
      Left = 313
      Top = 116
      Width = 111
      Height = 25
      Caption = 'Excluir Tudo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = BitBtn3Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF1B77DF1B77DF1B7
        7DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFF1B77DFFEBC9FED8B6F7C799F2B97FF1B77CF2BA81FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFF8D8FEE9C7FDD6B3F7C699F2B9
        80F1B77DF1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1
        B77DFFFCD8FEE9C7FDD7B4F7C79AF2B980F1B77CF1B77DFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFF7D6A6FFFFDEFFEDCBFEDBB9F8C99DF2B9
        82F1B77CF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFE
        F5D4FFFBDAFBDDB5F8CA9EF5C290F2B87FF1B67BF1B77DF1B77DFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFF1BA81EDBD82E0974BE39950EAAA67EFBC80F2C6
        90F3C48CF1BA80F1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0954BC7
        5C00D57A24E69B53EEB87BF4D09CF9E3B7F7E0B3F2C992EFB67AFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFE39B54D07018D77F2CE79E59006600006600FDF2
        CCFCECC5F4CB97EFB77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFE69C5600660033AF5053E081006600F1B77DFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA97C78B0837AFF00FFFF00FF006600168B233DBE5F3AC95B199D
        29006600FF00FFFF00FFBF9992B38984D4B19BD1AD96B08378C6915FA77775FF
        00FF0066000066001F8B2A19A32B006600006600FF00FFFF00FFB58F8EE6C395
        B3764CB08581D0A992BE8F73A77874FF00FFFF00FFFF00FF077D0E006600FF00
        FFFF00FFFF00FFFF00FFA37474A67670C07928DCB590B5887DB5846BFF00FFFF
        00FFFF00FFFF00FF077D0E006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        B27954B58A7FD2BBBDAC8281FF00FFFF00FF006600006600006600FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFA57774A97F80AC8282FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object MaskEdit2: TMaskEdit
      Left = 442
      Top = 76
      Width = 100
      Height = 22
      BiDiMode = bdLeftToRight
      Ctl3D = False
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
      OnKeyUp = DBLookupComboBox1KeyUp
    end
    object BitBtn4: TBitBtn
      Left = 433
      Top = 116
      Width = 111
      Height = 25
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B000000010000000100008C5A5A009C6B
        63009C6B6B00EFB56B00A57B7300B5847300C68C7B00BD848400B58C8C00FFD6
        A500BDADAD00F7DEBD00D6C6C600F7DEC600FFDEC600FFE7C600EFDECE00F7DE
        CE00F7E7CE00FFE7CE00EFE7D600F7E7D600FFE7D600FFEFD600EFDEDE00EFE7
        DE00F7E7DE00F7EFDE00FFEFDE00FFF7DE00FFF7E700FFF7EF00FFFFEF00FFFF
        F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00222222222208
        000000000000000000222222222222081E1B1B1B1B1B1B120022222222222208
        1B110D0D0D0D101000222222222222081E090909090909100022220800000008
        1F0D0D0D0D0B1210012222081E1B1B081F120D0D0D0D1510022222081B110D08
        2109090909090914042222081E0909082116161512161E18042222081F0D0D08
        2323232121180C0A052222081F120D0823232321210808080822220821090908
        2323232323080306222222082116160808080808080807222222220823232321
        21180C0A05222222222222082323232121080808082222222222220823232323
        2308030622222222222222080808080808080722222222222222}
    end
    object CheckBox1: TCheckBox
      Left = 384
      Top = 25
      Width = 178
      Height = 17
      TabStop = False
      Caption = 'Mostrar Escala Completa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = CheckBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 68
      Top = 18
      Width = 201
      Height = 25
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      KeyField = 'Veiculo'
      ListField = 'Veiculo'
      ListSource = DM.DsVeiculo
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = DBLookupComboBox2Exit
      OnExit = DBLookupComboBox2Exit
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 227
      Top = 76
      Width = 201
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      KeyField = 'Nome'
      ListField = 'Nome'
      ListSource = DSQRmotorist2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnExit = DBLookupComboBox3Exit
      OnKeyUp = DBLookupComboBox1KeyUp
    end
    object ComboBox1: TComboBox
      Left = 320
      Top = 17
      Width = 51
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentFont = False
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        '0'
        '1'#186
        '2'#186
        '3'#186)
    end
    object DateTimePicker2: TDateTimePicker
      Left = 544
      Top = 75
      Width = 21
      Height = 25
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      CalAlignment = dtaRight
      Date = 0.383523761571268500
      Time = 0.383523761571268500
      TabOrder = 10
      TabStop = False
      OnCloseUp = DateTimePicker2CloseUp
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 168
    Width = 574
    Height = 286
    Caption = 'Listagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAppWorkSpace
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 20
      Width = 558
      Height = 255
      TabStop = False
      BiDiMode = bdLeftToRight
      Ctl3D = False
      DataSource = DM.DsQREscalaEspecial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Veiculo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Ve'#237'culo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dia Semana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Turno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Motorista1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Motorista 1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 143
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Motorista2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Motorista 2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 144
          Visible = True
        end>
    end
  end
  object DSQRmotorist1: TDataSource
    DataSet = QRMotorist1
    Left = 280
    Top = 368
  end
  object QRMotorist1: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadmotorista')
    Left = 240
    Top = 368
    object QRMotorist1Nome: TWideStringField
      Alignment = taCenter
      FieldName = 'Nome'
    end
    object QRMotorist1Turno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
  end
  object DSQRmotorist2: TDataSource
    DataSet = QRMotorist2
    Left = 360
    Top = 368
  end
  object QRMotorist2: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadmotorista')
    Left = 320
    Top = 368
    object QRMotorist2Nome: TWideStringField
      Alignment = taCenter
      FieldName = 'Nome'
    end
    object QRMotorist2Turno: TWideStringField
      FieldName = 'Turno'
      Size = 3
    end
  end
end

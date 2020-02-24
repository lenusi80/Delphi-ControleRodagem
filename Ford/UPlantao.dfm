object FrmPlantao: TFrmPlantao
  Left = 110
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Plant'#227'o'
  ClientHeight = 627
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 116
    Height = 627
    Align = alLeft
    TabOrder = 0
    object Image1: TImage
      Left = 9
      Top = 345
      Width = 98
      Height = 105
      Enabled = False
      Stretch = True
      Visible = False
    end
    object BitBtn11: TBitBtn
      Left = 9
      Top = 16
      Width = 98
      Height = 71
      Caption = 'Iniciar Turno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn11Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666FFFFF6666666666
        000066844446666666666666F88886FF666F6666000068466664466646666668
        86666886F68F6666000064666666646446666668F6666668688F666600006466
        6666664446666668F6666666888F6666000064666666644446666668F6666668
        888F66660000684666664444466666688F666688888666660000664866666666
        66666666886666666666FF66000066666666666668466666666FFFFF666886F6
        00006666444446666648666666888886666688F6000066664444666666646666
        66888866666668F6000066664446666666646666668886F6666668F600006666
        44646666666466666688686FF66668F600006666466644666648666666866688
        6FFF8F6600006666666666444486666666666666888886660000666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn12: TBitBtn
      Left = 9
      Top = 90
      Width = 98
      Height = 71
      Caption = 'EncerrarTurno'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn12Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666660666
        666666666666668F666666660000666666600666666666666666688F66666666
        00006666668008666666666666668888F66666660000666668F0086666666666
        66686886F6666666000066660FF0FF6666666666668F68F6F666666600006660
        0F00F88666666666688F88F68F66666F00006680000080066666806688888888
        8F666688000068FF0F0070006668F068F68F886888F66868000068F00F87F80F
        868B0668F88F8F68868F8686000068000800F0FFF8F06668888F88F8F6686866
        000066008000000F8B066666888888888F86866600006607700F0008F0666666
        8F6886888868666600006687F0FFF08B066666668F68F6688686666600006668
        800FF8F06666666668888FF8686666660000666600008B066666666666888886
        86666666000066666008F06666666666666888686666666600006666668B0666
        6666666666668F86666666660000666666806666666666666666886666666666
        0000}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn13: TBitBtn
      Left = 9
      Top = 166
      Width = 98
      Height = 71
      Caption = 'Gerar Escala'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn13Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        666666666666666666666666000066666666666666666666FFFFFFFFFFFFFFFF
        000068000000000000000668888888888888888F000068778777778787770668
        F68F66668F8F668F000068AA8AAAAA8A8AA70668F68F66668F8F668F000068FF
        8FFFFF8F8FF70668F68FFFFF8F8FFF8F00006888888888888888066888888888
        8888888F000068AA8AAAAA8A8AA70668F68F66668F8F668F000068FF8FFFFF8F
        8FF70668FF8FFFFF8F8FFF8F000068888888888888880668888888888888888F
        000068AA8AAAAA8A8AA70668F68F66668F8F668F000068FF8FFFFF8F8FF70668
        FF8FFFFF8F8FFF8F000068888888888888880668888888888888888F000068AA
        8AAAAA8A8AA70668F68F66668F8F668F000068FF8FFFFF8F8FF70668F68F6666
        8F8F668F000068FF8FFFFF8F8FF70668FF8FFFFF8F8FFF8F0000688888888888
        8888866888888888888888860000666666666666666666666666666666666666
        0000}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn14: TBitBtn
      Left = 9
      Top = 549
      Width = 98
      Height = 66
      Caption = 'SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn14Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E
        1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B
        8C4B4B914B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B89
        4B4B9C4B4CB64B4CBD4B4C9F4B4C4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B
        4B9A4D4EAF4E4FC14E4FC04D4EBF4C4DBF4C4D9F4B4C4E1E1F994B4B824B4B82
        4B4B824B4B824B4B824B4B824B4B824B4B824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4BC55455C95455C75354C65253C55152C45051C24F50A04C4D4E1E
        1FFE8B8CFC9293FB9A9CFAA3A4F8AAABF7B1B1F7B5B6F7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FF824B4BCE5859CC5758CB5657CA5556C95455C75354
        C65253A34E4F4E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5
        B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BD15B5CD05A5BCF595ACE
        5859CC5758CB5657CA5556A550504E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C
        1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BD55E
        5FD55E5FD45D5ED35C5DD15B5CD05A5BCF595AA651524E1E1F3F9E4C1EBC4C1E
        BC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4BDA6364D96263D86062D75F60D55E5FD45D5ED35C5DA953544E1E
        1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FF824B4BDE6667DD6566DC6465DA6364D96263D86062
        D75F60AB55554E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5
        B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BE2696AE16869E06768DE
        6667E06D6EE69091DC6465AC56574E1E1F58A55B1EBC4C1EBC4C1EBC4C1EBC4C
        1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BE76D
        6EE66C6DE56B6CE36A6BEEA6A7FFFFFFEB9C9CAF58594E1E1FEECEAFB7EBAA5E
        D3775ED37745CA6745CA6745CA67F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4BEB7072EA6F70E96E6FE76D6EF2A9AAFFFFFFEB9596B15A5A4E1E
        1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3D9F6BDD9F6BDF7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FF824B4BEF7475EE7374ED7273EB7072EA6F70EF9091
        E76D6EB25B5C4E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5
        B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF37778F37778F27677F0
        7576EF7475EE7374ED7273B55D5D4E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3
        FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF87B
        7DF77A7BF6797AF47879F37778F27677F07576B75F5F4E1E1FEECEAFFFFFD3FF
        FFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4BFC7F80FB7E7FFA7D7EF87B7DF77A7BF6797AF47879B860624E1E
        1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FF824B4BFF8182FF8182FE8081FC7F80FC7F80FB7E7F
        FA7D7EBB63634E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5
        B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BFF8182FF8182FF8182FF
        8182FF8182FE8081FE8081BD65654E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3
        FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF77E
        7FFF8182FF8182FF8182FF8182FF8182FF8182BF66664E1E1FEECEAFFFFFD3FF
        FFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
        FF00FF824B4B824B4BAF5E5FD56F70FF8182FF8182FF8182FF8182BF66664E1E
        1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B915152B66263EE7A7B
        FF8182BF66664E1E1F914B4B824B4B824B4B824B4B824B4B824B4B824B4B824B
        4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF824B4B824B4B9855559F58584E1E1FFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
    end
    object BitBtn7: TBitBtn
      Left = 61
      Top = 495
      Width = 28
      Height = 23
      TabOrder = 4
      TabStop = False
      OnClick = BitBtn7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      NumGlyphs = 2
    end
    object BitBtn6: TBitBtn
      Left = 27
      Top = 495
      Width = 28
      Height = 23
      TabOrder = 5
      OnClick = BitBtn6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 9
      Top = 243
      Width = 98
      Height = 71
      Caption = 'Relat'#243'rio'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 116
    Top = 0
    Width = 802
    Height = 627
    ActivePage = TabSheet4
    Align = alClient
    BiDiMode = bdLeftToRight
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object TabSheet4: TTabSheet
      Caption = 'Geral'
      ImageIndex = 3
      object GroupBox2: TGroupBox
        Left = 0
        Top = 505
        Width = 794
        Height = 88
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object BitBtn5: TBitBtn
          Left = 240
          Top = 20
          Width = 151
          Height = 57
          BiDiMode = bdLeftToRight
          Caption = 'Voltar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = BitBtn5Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
            6666666666666666666666660000666666688666666666666666888666666666
            0000666666448666666666666668668666666666000066666444866666666666
            6686668666666666000066664444888888886666686666888888886600006664
            4444444444486666866666666666686600006F44444444444448666F66666666
            6666686600006FF4444444444448666FF666666666666866000066FF44447FFF
            FFF66666FF66666FFFFFF6660000666FF4448666666666666FF6668666666666
            0000666644448888888866666866668888888866000066644444444444486666
            866666666666686600006F44444444444448666F666666666666686600006FF4
            444444444448666FF666666666666866000066FF44447FFFFFF66666FF66666F
            FFFFF6660000666FF4448666666666666FF666866666666600006666FF448666
            6666666666FF668666666666000066666FFF666666666666666FFF6666666666
            0000}
          NumGlyphs = 2
        end
        object BitBtn8: TBitBtn
          Left = 399
          Top = 20
          Width = 151
          Height = 57
          BiDiMode = bdLeftToRight
          Caption = 'Continuar '
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn8Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
            6666666666666666666666660000666666666666666666666666666666666666
            0000666666666666666666666666666666666666000066666666668866666666
            66666666886666660000666666666F44866666666666666F8886666600006666
            66666F44486666666666666F8888666600006668888887444486666668888888
            88888666000066F44444444444486666F888888888888866000066F444444444
            44448666F888888888888886000066F44444444444446666F888888888888866
            000066F44444444444466666F888888888888666000066FFFFFFFF4444666666
            FFFFFFFF888866660000666666666F44466666666666666F8886666600006666
            66666F44666666666666666F886666660000666666666FF6666666666666666F
            F666666600006666666666666666666666666666666666660000666666666666
            6666666666666666666666660000666666666666666666666666666666666666
            0000}
          Layout = blGlyphRight
          NumGlyphs = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 794
        Height = 504
        Align = alTop
        TabOrder = 0
        object Label10: TLabel
          Left = 19
          Top = 245
          Width = 101
          Height = 19
          Caption = 'Observa'#231#245'es'
          FocusControl = DBMemo1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 24
          Top = 472
          Width = 113
          Height = 19
          Caption = 'Hora Abertura:'
          FocusControl = DBEdit7
        end
        object Label20: TLabel
          Left = 320
          Top = 472
          Width = 60
          Height = 19
          Caption = 'Usu'#225'rio:'
          FocusControl = DBEdit11
        end
        object GroupBox10: TGroupBox
          Left = 18
          Top = 14
          Width = 271
          Height = 219
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Century Gothic'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 11
            Top = 32
            Width = 56
            Height = 19
            BiDiMode = bdLeftToRight
            Caption = 'C'#243'digo'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label2: TLabel
            Left = 11
            Top = 159
            Width = 35
            Height = 19
            BiDiMode = bdLeftToRight
            Caption = 'Data'
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label3: TLabel
            Left = 11
            Top = 95
            Width = 46
            Height = 19
            BiDiMode = bdLeftToRight
            Caption = 'Turno'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 73
            Top = 28
            Width = 117
            Height = 29
            TabStop = False
            BiDiMode = bdLeftToRight
            Ctl3D = False
            DataField = 'CodPlantao'
            DataSource = DM.DSQRTurnos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -19
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 73
            Top = 155
            Width = 159
            Height = 29
            TabStop = False
            BiDiMode = bdLeftToRight
            Ctl3D = False
            DataField = 'Data'
            DataSource = DM.DSQRTurnos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -19
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBComboBox1: TDBComboBox
            Left = 73
            Top = 87
            Width = 61
            Height = 33
            Ctl3D = False
            DataField = 'Turno'
            DataSource = DM.DSQRTurnos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            ItemHeight = 25
            Items.Strings = (
              '0'
              '1'#186
              '2'#186
              '3'#186)
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnClick = DBComboBox1Click
          end
        end
        object DBMemo1: TDBMemo
          Left = 19
          Top = 264
          Width = 758
          Height = 193
          Ctl3D = False
          DataField = 'Ocorrencias'
          DataSource = DM.DSQRTurnos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object GroupBox11: TGroupBox
          Left = 295
          Top = 14
          Width = 482
          Height = 219
          TabOrder = 1
          object Label4: TLabel
            Left = 25
            Top = 25
            Width = 106
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Coordenador 1'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label5: TLabel
            Left = 25
            Top = 90
            Width = 106
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Coordenador 2'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label6: TLabel
            Left = 25
            Top = 157
            Width = 106
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Coordenador 3'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label7: TLabel
            Left = 267
            Top = 25
            Width = 113
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Apoio de Pista 1'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label8: TLabel
            Left = 267
            Top = 90
            Width = 113
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Apoio de Pista 2'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label9: TLabel
            Left = 267
            Top = 157
            Width = 63
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Stand By'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 25
            Top = 43
            Width = 193
            Height = 25
            Ctl3D = False
            DataField = 'Coord_01'
            DataSource = DM.DSQRTurnos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -16
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            KeyField = 'Nome'
            ListField = 'Nome'
            ListSource = DM.DsCoord
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 25
            Top = 108
            Width = 193
            Height = 25
            Ctl3D = False
            DataField = 'Coord_02'
            DataSource = DM.DSQRTurnos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -16
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            KeyField = 'Nome'
            ListField = 'Nome'
            ListSource = DM.DsCoord
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 25
            Top = 175
            Width = 193
            Height = 25
            Ctl3D = False
            DataField = 'Coord_03'
            DataSource = DM.DSQRTurnos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -16
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            KeyField = 'Nome'
            ListField = 'Nome'
            ListSource = DM.DsCoord
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 267
            Top = 43
            Width = 193
            Height = 25
            Ctl3D = False
            DataField = 'Apoio_01'
            DataSource = DM.DSQRTurnos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -16
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            KeyField = 'nome'
            ListField = 'nome'
            ListSource = DSQRApoio
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 267
            Top = 108
            Width = 193
            Height = 25
            Ctl3D = False
            DataField = 'Apoio_02'
            DataSource = DM.DSQRTurnos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -16
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            KeyField = 'nome'
            ListField = 'nome'
            ListSource = DSQRApoio
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 267
            Top = 175
            Width = 193
            Height = 25
            Ctl3D = False
            DataField = 'StandBy'
            DataSource = DM.DSQRTurnos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -16
            Font.Name = 'Century Gothic'
            Font.Style = [fsBold]
            KeyField = 'nome'
            ListField = 'nome'
            ListSource = DSQRStandBy
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object DBEdit7: TDBEdit
          Left = 143
          Top = 470
          Width = 134
          Height = 25
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Ctl3D = False
          DataField = 'HoraInicio'
          DataSource = DM.DSQRTurnos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -19
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 386
          Top = 470
          Width = 169
          Height = 25
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Ctl3D = False
          DataField = 'Login'
          DataSource = DM.DSQRTurnos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -19
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Ve'#237'culos'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox8: TGroupBox
        Left = 393
        Top = 0
        Width = 383
        Height = 590
        BiDiMode = bdLeftToRight
        Caption = 'HIGH'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object SpeedButton3: TSpeedButton
          Left = 279
          Top = 551
          Width = 37
          Height = 30
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF351500351500381600431A00431A
            00381600361600351500FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF331400361600491C00702C00
            873500903800903800893500772E004F1F00381600351500FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4B1D00471C007B
            3000A54100B14500AF4400AC4300AC4300AF4400B14500A74100843400532000
            381600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5722
            005D2400A74100B14500AC4300A74100A74100A74100A74100A74100A74100AA
            4200B14500AC43006C2A003A1700FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF5F25006C2A00BD4A00B64700AA4200A74100A74100A03F00FF9F4EFFF3
            E7FF7E1BA74100A74100A74100AC4300B14500732D003A1700FF00FFFF00FFFF
            00FFFF00FFFF00FF4119006C2A00CC5000C04B00B64700B14500AA4200AA4200
            FFAB63FFFFFFFFFFFFFFF7EFFF750FA74100A74100A74100AA4200B14500702C
            00381600FF00FFFF00FFFF00FFFF00FF491C00CA4F00D45300C24C00C04B00B6
            4700AC4300FFB16DFFFFFFFFFFFFFFFFFFFFFFFFFFF3E7FF6E08A74100A74100
            A74100AA4200AF44004D1E00FF00FFFF00FFFF00FF552100903800E95B00D152
            00CA4F00BD4A00BB4900FFB676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            EEDDFF6701A74100A74100A74100B14500843400381600FF00FFFF00FF572200
            D75400E65A00D95500CA4F00C04B00FFBB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE9D3F35F00A74100A74100AA4200AA4200491C00FF
            00FF5B2300792F00F66000E35900DE5700C74E00FFBA7DFFFFFFFFFFFFFFFEFC
            FFC18AFFF4EAFFFFFFFFE9D3FFD3A9FFFFFFFFFFFFFFE1C4E95B00A74100A741
            00B145006427003C17005B23009E3E00FF6400EE5D00DE5700EE5D00FFF3E7FF
            FFFFFFFFFFFFAB63FB6300FFF7EFFFFFFFFFDDBCEE5D00FFDEBFFFFFFFFFFFFF
            FFC996A74100A74100B145007B30003C1700662800BB4900FF6C06F66000FF64
            00F86200FFF4EAFFFFFFFFC088F35F00FF740EFFFAF4FFFFFFFFE3C9AA4200FF
            6601FFF2E5FFFFFFFFE6CEA74100A74100B145008735003A1700702C00D75400
            FF7F1CFF6601FB6300FB6300FFAB63FFAF69FF6903FB6300FF7A16FFFAF4FFFF
            FFFFE3C9B84800A74100FF730DFFB16DFF6A04A74100AA4200AF44008935004B
            1D00792F00D75400FF9239FF7611FB6300FB6300FB6300FB6300FB6300FB6300
            FF7A16FFFAF4FFFFFFFFE5CBC24C00B44600B44600AC4300AC4300B44600AC43
            00B145008735003C1700803200CC5000FF9E4CFF9035F86200FB6300FB6300FB
            6300FB6300FB6300FF7A16FFFAF4FFFFFFFFE5CBDE5700CC5000CC5000C74E00
            C74E00CA4F00B44600B14500772E003C1700FF00FFAC4300FF9D4AFFAF69FF79
            15E15800FB6300FB6300FB6300FB6300FF7A16FFFAF4FFFFFFFFE6CEDE5700CF
            5100CF5100CF5100CA4F00C04B00AF4400B145005D2400FF00FFFF00FFB64700
            FF801EFFC591FFA354FF6903E15800F86200FB6300FB6300FF7A16FFFAF4FFFF
            FFFFE7D0E15800CF5100CC5000C74E00C24C00B84800B64700AC4300431A00FF
            00FFFF00FFFF00FFD95500FFBC81FFCC9DFF9035FF6400DE5700F66000FB6300
            FF7A16FFFAF4FFFFFFFFE9D3E95B00D75400CF5100CC5000C74E00BD4A00C74E
            00823300FF00FFFF00FFFF00FFFF00FFF05E00FF801EFFCFA1FFCC9DFF8E32FF
            6903E15800F66000FF700AFFE9D3FFFEFCFFD1A6DE5700D95500D75400D15200
            CC5000CC5000C04B004B1D00FF00FFFF00FFFF00FFFF00FFFF00FFCA4F00FF9A
            46FFD9B5FFD4ABFFA050FF7915F66000EE5D00FF6903FB6300EB5C00EE5D00E9
            5B00E65A00DE5700D95500D453006E2B00FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFC54D00FF9D4AFFD9B5FFE1C4FFC18AFF9E4CFF8728FF7611FF6F
            09FF720CFF750FFF750FFF6D07FB6300E35900792F00FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFD95500FF8424FFBC81FFD4ABFFD9B5
            FFCC9DFFBC81FFB16DFFAA60FFA050FF8E32FF7915F05E007B3000FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD95500D9
            5500FF8728FFAA60FFB87AFFB87AFFB16DFFA456FF9035FF720CC24C006C2A00
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFD95500D75400F66000F66000F86200E95B00BD4A0082
            3300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object SpeedButton4: TSpeedButton
          Left = 322
          Top = 551
          Width = 37
          Height = 30
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00002100002100002400002F0000
            2F000024000022000021FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00001F00002200003500005C
            00007300007C00007C00007500006300003B000024000021FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00003700003300
            006700009100029D00029B00019800019800029B00029D00019300007000003F
            000024FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
            4300004900019300029D00019800019300019300019300019300019300019300
            019600029D000198000058000026FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00004B0000580003A90002A200019600019300019300008C00008C0001
            9300019300019300019300019300019800029D000261000330FF00FFFF00FFFF
            00FFFF00FFFF00FF00002D0000580005B80004AC0002A200029D00019600008F
            00139ED4DAF3FEFEFFA4B2E300039500019300019300019300019600029D0002
            5F00032EFF00FFFF00FFFF00FFFF00FF0000350004B60006C00004AE0004AC00
            02A200008F0001960520A2F6F7FCFFFFFFD4DAF3000797000193000193000193
            00019300019600029B000440FF00FFFF00FFFF00FF00004100007C0008D50006
            BD0004B60003A900019800029B000196041FA2F6F7FCFFFFFFD3D9F300079700
            019300019300019300019300019300029D00007000032EFF00FFFF00FF000043
            0007C30008D20007C50004B600029D000198000198000196041FA2F6F7FCFFFF
            FFD3D9F300079700019300019300019300019300019300019600019600033DFF
            00FF000047000065000BE20008CF0008CA0004B30002A2000196000196000196
            041FA4F6F7FCFFFFFFD3D9F30007970001930001930001930001930001930001
            9300029D00035400073C00004700008A000BEB0009DA0008CA0009DA0005B800
            029B0003A90004AE0421AEF6F7FCFFFFFFD3D9F3000797000193000193000193
            00019300019300019300029D0001680003310000520003A70015EB000BE2000B
            EB000BE44D6AEB6079E50116DE000FE4092CE0F6F7FFFFFFFFD3D9F400079700
            0193223BB08393D7142EA900019300019300029D00007300033000005C0007C3
            082DEB000DEB000BE7000BE7EBEFFFFFFFFF8FA4FE001FFB163BFAF6F7FFFFFF
            FFD3DAF6000293102AA7EBEEFAFFFFFFD9DEF400019300019600029B00007500
            033E0000650007C32649EC0021EB000BE7000BE7EBEFFFFFFFFFFFFFFF7992FE
            183DFCF3F6FFFFFFFFCAD3F60421ACCCD4F3FFFFFFFFFFFFA9B5E60002A00001
            9800029D00007300033100006C0005B83A5BED2448EE000BE4000BE78CA2F7FF
            FFFFFFFFFFFEFEFFA1B4FEEEF2FEFFFFFFDCE2FAB9C5F3FFFFFFFFFFFFD0D8F7
            0321BD0004B60002A000029D000165000331FF00FF0001983E5FF35D7AF30126
            EB0008CD0010E791A5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFDCE2FA0A29C60004B60004AC00029B00029D00034EFF00FFFF00FF0002A2
            0B2FEC8398F14666F10011EB0008CD0010E4899EF7FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFE3E9FB1130C60004B30004AE0003A40002A2000198000437FF
            00FFFF00FFFF00FF0007C5758DF398ABFA2448EE000BEB0008CA000FE28197F6
            FFFFFFFFFFFFFFFFFFFFFFFFEDF0FC2C4BE10006BC0006B90004B30003A90004
            B300016FFF00FFFF00FFFF00FFFF00FF000ADC0A2EEB95A8F38FA2F12144EE00
            11EB0008CD000DE2778FF5FFFFFFFFFFFFF3F6FF2645D60008C60008C40006BD
            0006B90006B90004AC00033EFF00FFFF00FFFF00FFFF00FFFF00FF0004B63254
            EBACBBF6A7B8FB4262F10126EB000BE2000ADA6983F1EEF2FF3251E30009DA00
            08D50008D20008CA0008C60006C000025DFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF0004B13657EBADBCF7C3CFFE8299F73D5EF01438EB0021EB0019
            EB001CEB0021EB0021EB0016EB000BE70008CF000A73FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF0007C51035EB758DF3A2B3F6B5C4FF
            99ACFB7991F7637FF55472F34262F12043ED0126EB000ADC000A75FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0007C500
            07C51438EB5573F4738CF8738CF86480F64A6AF32549EF001CEB0008B2000A68
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF0007C50007C3000BE2000BE2000BE40008D50007AD00
            1082FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object BitBtn4: TBitBtn
          Left = 13
          Top = 551
          Width = 124
          Height = 30
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn4Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0001B70001B7050DAC393EB058
            5AB25657AB2E2F9000006F000069000069FF00FFFF00FFFF00FFFF00FFFF00FF
            0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
            6900007DFF00FFFF00FFFF00FF0018DF0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C
            8CD18D8DD0CACAEAFFFFFFFFFFFF8C8CBD010169000072FF00FFFF00FF0018DF
            919DEFFFFFFFE6E8F94F53CE0002AB00009D0000950000975F5FBEF0F0FAFFFF
            FF6565A6000072FF00FF001EF12743E7FBFBFFF7F8FD3B4BDA0000C0161DBEB0
            B4E7A3A5E00A0CA000008F5252B9FFFFFFD9D9E90B0B7F00007A001EF17287F6
            FFFFFF91A1F4000DDA000BD0161DCBF1F4FEDEE1F60508A900009A000093ACAC
            DDFFFFFF5353AF00007A0023F8A8B8FCFFFFFF4060F61734ECA0AEF2BABEF1F8
            F9FEF3F4FBB6B8E99799DC0D0EA25A5BBFFFFFFF8487D60000790E3EFEC5CFFE
            FFFFFF3259FE2649F9FAFCFFFFFFFFFFFFFFFFFFFFFFFFFFEBECF91519B14A4F
            C1FFFFFF9094D90000A23C63FFC4D0FFFFFFFF5979FF052EFF375CFB586DF4F0
            F3FEE3E6FA4D5ADE3446D20004B7757CD6FFFFFF797DD50000A8103EFFB6C5FF
            FFFFFFC7D2FF032CFF0020FF1739FBF3F6FFE1E5FA071FDC0007CE0C1CCBD9DC
            F5FDFDFE313CC80000A8FF00FF8DA4FFFFFFFFFFFFFF8AA0FF0027FF002CFF46
            6AFF4163F8001DE9061CDFA1ACF1FFFFFFB4BAED0007BBFF00FFFF00FF718DFF
            DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
            FC3041D30007BBFF00FFFF00FFFF00FF88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2
            E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50E0000BCCFF00FFFF00FFFF00FFFF00FF
            FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
            CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA0FF8AA3FF90
            A6FF7993FE4A6BF91A40EFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object BitBtn3: TBitBtn
          Left = 143
          Top = 551
          Width = 124
          Height = 30
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
            0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
            B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
            0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
            00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
            05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
            00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
            0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object DBGrid5: TDBGrid
          Left = 13
          Top = 27
          Width = 348
          Height = 518
          BiDiMode = bdLeftToRight
          Ctl3D = False
          DataSource = DM.DSQREstadoVeiculosHiGH
          FixedColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlight
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid5CellClick
          OnColEnter = DBGrid5ColEnter
          OnDrawColumnCell = DBGrid5DrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Color = clGradientActiveCaption
              Expanded = False
              FieldName = 'NumeroOrdem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 59
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Veiculo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clTeal
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Ve'#237'culo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 173
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clScrollBar
              Expanded = False
              FieldName = 'Rodando'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 4
        Top = 0
        Width = 383
        Height = 590
        BiDiMode = bdLeftToRight
        Caption = 'SPECIAL'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 279
          Top = 551
          Width = 37
          Height = 30
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF351500351500381600431A00431A
            00381600361600351500FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF331400361600491C00702C00
            873500903800903800893500772E004F1F00381600351500FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4B1D00471C007B
            3000A54100B14500AF4400AC4300AC4300AF4400B14500A74100843400532000
            381600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5722
            005D2400A74100B14500AC4300A74100A74100A74100A74100A74100A74100AA
            4200B14500AC43006C2A003A1700FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF5F25006C2A00BD4A00B64700AA4200A74100A74100A03F00FF9F4EFFF3
            E7FF7E1BA74100A74100A74100AC4300B14500732D003A1700FF00FFFF00FFFF
            00FFFF00FFFF00FF4119006C2A00CC5000C04B00B64700B14500AA4200AA4200
            FFAB63FFFFFFFFFFFFFFF7EFFF750FA74100A74100A74100AA4200B14500702C
            00381600FF00FFFF00FFFF00FFFF00FF491C00CA4F00D45300C24C00C04B00B6
            4700AC4300FFB16DFFFFFFFFFFFFFFFFFFFFFFFFFFF3E7FF6E08A74100A74100
            A74100AA4200AF44004D1E00FF00FFFF00FFFF00FF552100903800E95B00D152
            00CA4F00BD4A00BB4900FFB676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            EEDDFF6701A74100A74100A74100B14500843400381600FF00FFFF00FF572200
            D75400E65A00D95500CA4F00C04B00FFBB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE9D3F35F00A74100A74100AA4200AA4200491C00FF
            00FF5B2300792F00F66000E35900DE5700C74E00FFBA7DFFFFFFFFFFFFFFFEFC
            FFC18AFFF4EAFFFFFFFFE9D3FFD3A9FFFFFFFFFFFFFFE1C4E95B00A74100A741
            00B145006427003C17005B23009E3E00FF6400EE5D00DE5700EE5D00FFF3E7FF
            FFFFFFFFFFFFAB63FB6300FFF7EFFFFFFFFFDDBCEE5D00FFDEBFFFFFFFFFFFFF
            FFC996A74100A74100B145007B30003C1700662800BB4900FF6C06F66000FF64
            00F86200FFF4EAFFFFFFFFC088F35F00FF740EFFFAF4FFFFFFFFE3C9AA4200FF
            6601FFF2E5FFFFFFFFE6CEA74100A74100B145008735003A1700702C00D75400
            FF7F1CFF6601FB6300FB6300FFAB63FFAF69FF6903FB6300FF7A16FFFAF4FFFF
            FFFFE3C9B84800A74100FF730DFFB16DFF6A04A74100AA4200AF44008935004B
            1D00792F00D75400FF9239FF7611FB6300FB6300FB6300FB6300FB6300FB6300
            FF7A16FFFAF4FFFFFFFFE5CBC24C00B44600B44600AC4300AC4300B44600AC43
            00B145008735003C1700803200CC5000FF9E4CFF9035F86200FB6300FB6300FB
            6300FB6300FB6300FF7A16FFFAF4FFFFFFFFE5CBDE5700CC5000CC5000C74E00
            C74E00CA4F00B44600B14500772E003C1700FF00FFAC4300FF9D4AFFAF69FF79
            15E15800FB6300FB6300FB6300FB6300FF7A16FFFAF4FFFFFFFFE6CEDE5700CF
            5100CF5100CF5100CA4F00C04B00AF4400B145005D2400FF00FFFF00FFB64700
            FF801EFFC591FFA354FF6903E15800F86200FB6300FB6300FF7A16FFFAF4FFFF
            FFFFE7D0E15800CF5100CC5000C74E00C24C00B84800B64700AC4300431A00FF
            00FFFF00FFFF00FFD95500FFBC81FFCC9DFF9035FF6400DE5700F66000FB6300
            FF7A16FFFAF4FFFFFFFFE9D3E95B00D75400CF5100CC5000C74E00BD4A00C74E
            00823300FF00FFFF00FFFF00FFFF00FFF05E00FF801EFFCFA1FFCC9DFF8E32FF
            6903E15800F66000FF700AFFE9D3FFFEFCFFD1A6DE5700D95500D75400D15200
            CC5000CC5000C04B004B1D00FF00FFFF00FFFF00FFFF00FFFF00FFCA4F00FF9A
            46FFD9B5FFD4ABFFA050FF7915F66000EE5D00FF6903FB6300EB5C00EE5D00E9
            5B00E65A00DE5700D95500D453006E2B00FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFC54D00FF9D4AFFD9B5FFE1C4FFC18AFF9E4CFF8728FF7611FF6F
            09FF720CFF750FFF750FFF6D07FB6300E35900792F00FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFD95500FF8424FFBC81FFD4ABFFD9B5
            FFCC9DFFBC81FFB16DFFAA60FFA050FF8E32FF7915F05E007B3000FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD95500D9
            5500FF8728FFAA60FFB87AFFB87AFFB16DFFA456FF9035FF720CC24C006C2A00
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFD95500D75400F66000F66000F86200E95B00BD4A0082
            3300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object SpeedButton2: TSpeedButton
          Left = 322
          Top = 551
          Width = 37
          Height = 30
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00002100002100002400002F0000
            2F000024000022000021FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00001F00002200003500005C
            00007300007C00007C00007500006300003B000024000021FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00003700003300
            006700009100029D00029B00019800019800029B00029D00019300007000003F
            000024FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
            4300004900019300029D00019800019300019300019300019300019300019300
            019600029D000198000058000026FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00004B0000580003A90002A200019600019300019300008C00008C0001
            9300019300019300019300019300019800029D000261000330FF00FFFF00FFFF
            00FFFF00FFFF00FF00002D0000580005B80004AC0002A200029D00019600008F
            00139ED4DAF3FEFEFFA4B2E300039500019300019300019300019600029D0002
            5F00032EFF00FFFF00FFFF00FFFF00FF0000350004B60006C00004AE0004AC00
            02A200008F0001960520A2F6F7FCFFFFFFD4DAF3000797000193000193000193
            00019300019600029B000440FF00FFFF00FFFF00FF00004100007C0008D50006
            BD0004B60003A900019800029B000196041FA2F6F7FCFFFFFFD3D9F300079700
            019300019300019300019300019300029D00007000032EFF00FFFF00FF000043
            0007C30008D20007C50004B600029D000198000198000196041FA2F6F7FCFFFF
            FFD3D9F300079700019300019300019300019300019300019600019600033DFF
            00FF000047000065000BE20008CF0008CA0004B30002A2000196000196000196
            041FA4F6F7FCFFFFFFD3D9F30007970001930001930001930001930001930001
            9300029D00035400073C00004700008A000BEB0009DA0008CA0009DA0005B800
            029B0003A90004AE0421AEF6F7FCFFFFFFD3D9F3000797000193000193000193
            00019300019300019300029D0001680003310000520003A70015EB000BE2000B
            EB000BE44D6AEB6079E50116DE000FE4092CE0F6F7FFFFFFFFD3D9F400079700
            0193223BB08393D7142EA900019300019300029D00007300033000005C0007C3
            082DEB000DEB000BE7000BE7EBEFFFFFFFFF8FA4FE001FFB163BFAF6F7FFFFFF
            FFD3DAF6000293102AA7EBEEFAFFFFFFD9DEF400019300019600029B00007500
            033E0000650007C32649EC0021EB000BE7000BE7EBEFFFFFFFFFFFFFFF7992FE
            183DFCF3F6FFFFFFFFCAD3F60421ACCCD4F3FFFFFFFFFFFFA9B5E60002A00001
            9800029D00007300033100006C0005B83A5BED2448EE000BE4000BE78CA2F7FF
            FFFFFFFFFFFEFEFFA1B4FEEEF2FEFFFFFFDCE2FAB9C5F3FFFFFFFFFFFFD0D8F7
            0321BD0004B60002A000029D000165000331FF00FF0001983E5FF35D7AF30126
            EB0008CD0010E791A5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFDCE2FA0A29C60004B60004AC00029B00029D00034EFF00FFFF00FF0002A2
            0B2FEC8398F14666F10011EB0008CD0010E4899EF7FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFE3E9FB1130C60004B30004AE0003A40002A2000198000437FF
            00FFFF00FFFF00FF0007C5758DF398ABFA2448EE000BEB0008CA000FE28197F6
            FFFFFFFFFFFFFFFFFFFFFFFFEDF0FC2C4BE10006BC0006B90004B30003A90004
            B300016FFF00FFFF00FFFF00FFFF00FF000ADC0A2EEB95A8F38FA2F12144EE00
            11EB0008CD000DE2778FF5FFFFFFFFFFFFF3F6FF2645D60008C60008C40006BD
            0006B90006B90004AC00033EFF00FFFF00FFFF00FFFF00FFFF00FF0004B63254
            EBACBBF6A7B8FB4262F10126EB000BE2000ADA6983F1EEF2FF3251E30009DA00
            08D50008D20008CA0008C60006C000025DFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF0004B13657EBADBCF7C3CFFE8299F73D5EF01438EB0021EB0019
            EB001CEB0021EB0021EB0016EB000BE70008CF000A73FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF0007C51035EB758DF3A2B3F6B5C4FF
            99ACFB7991F7637FF55472F34262F12043ED0126EB000ADC000A75FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0007C500
            07C51438EB5573F4738CF8738CF86480F64A6AF32549EF001CEB0008B2000A68
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF0007C50007C3000BE2000BE2000BE40008D50007AD00
            1082FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object DBGrid1: TDBGrid
          Left = 13
          Top = 27
          Width = 348
          Height = 518
          BiDiMode = bdLeftToRight
          Ctl3D = False
          DataSource = DM.DSQREstadoVeiculosSP
          FixedColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlight
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          OnColEnter = DBGrid1ColEnter
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Color = clGradientActiveCaption
              Expanded = False
              FieldName = 'NumeroOrdem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 59
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Veiculo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clTeal
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Ve'#237'culo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 173
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clScrollBar
              Expanded = False
              FieldName = 'Rodando'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 79
              Visible = True
            end>
        end
        object BitBtn9: TBitBtn
          Left = 143
          Top = 551
          Width = 124
          Height = 30
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
            0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
            B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
            0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
            00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
            05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
            00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
            0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object BitBtn10: TBitBtn
          Left = 13
          Top = 551
          Width = 124
          Height = 30
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn10Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0001B70001B7050DAC393EB058
            5AB25657AB2E2F9000006F000069000069FF00FFFF00FFFF00FFFF00FFFF00FF
            0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
            6900007DFF00FFFF00FFFF00FF0018DF0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C
            8CD18D8DD0CACAEAFFFFFFFFFFFF8C8CBD010169000072FF00FFFF00FF0018DF
            919DEFFFFFFFE6E8F94F53CE0002AB00009D0000950000975F5FBEF0F0FAFFFF
            FF6565A6000072FF00FF001EF12743E7FBFBFFF7F8FD3B4BDA0000C0161DBEB0
            B4E7A3A5E00A0CA000008F5252B9FFFFFFD9D9E90B0B7F00007A001EF17287F6
            FFFFFF91A1F4000DDA000BD0161DCBF1F4FEDEE1F60508A900009A000093ACAC
            DDFFFFFF5353AF00007A0023F8A8B8FCFFFFFF4060F61734ECA0AEF2BABEF1F8
            F9FEF3F4FBB6B8E99799DC0D0EA25A5BBFFFFFFF8487D60000790E3EFEC5CFFE
            FFFFFF3259FE2649F9FAFCFFFFFFFFFFFFFFFFFFFFFFFFFFEBECF91519B14A4F
            C1FFFFFF9094D90000A23C63FFC4D0FFFFFFFF5979FF052EFF375CFB586DF4F0
            F3FEE3E6FA4D5ADE3446D20004B7757CD6FFFFFF797DD50000A8103EFFB6C5FF
            FFFFFFC7D2FF032CFF0020FF1739FBF3F6FFE1E5FA071FDC0007CE0C1CCBD9DC
            F5FDFDFE313CC80000A8FF00FF8DA4FFFFFFFFFFFFFF8AA0FF0027FF002CFF46
            6AFF4163F8001DE9061CDFA1ACF1FFFFFFB4BAED0007BBFF00FFFF00FF718DFF
            DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
            FC3041D30007BBFF00FFFF00FFFF00FF88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2
            E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50E0000BCCFF00FFFF00FFFF00FFFF00FF
            FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
            CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA0FF8AA3FF90
            A6FF7993FE4A6BF91A40EFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Escala Motoristas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox6: TGroupBox
        Left = 12
        Top = 410
        Width = 228
        Height = 177
        Caption = 'Dispon'#237'veis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 26
          Width = 224
          Height = 149
          Align = alClient
          BiDiMode = bdLeftToRight
          Ctl3D = False
          DataSource = DM.DSQRMotorDisponives
          FixedColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlight
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid3DblClick
          OnKeyUp = DBGrid3KeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'motorista'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -19
              Font.Name = 'Californian FB'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Caption = 'Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 180
              Visible = True
            end>
        end
      end
      object GroupBox7: TGroupBox
        Left = 242
        Top = 410
        Width = 538
        Height = 177
        Caption = 'Ausentes'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object DBGrid4: TDBGrid
          Left = 2
          Top = 26
          Width = 534
          Height = 149
          Align = alClient
          BiDiMode = bdLeftToRight
          Ctl3D = False
          DataSource = DM.DSQRMotorAusentes
          FixedColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlight
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'motorista'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -19
              Font.Name = 'Californian FB'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Caption = 'Nome'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 187
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Motivo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Californian FB'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 307
              Visible = True
            end>
        end
      end
      object GroupBox5: TGroupBox
        Left = 12
        Top = -1
        Width = 770
        Height = 408
        Caption = 'Escalados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object DBGrid2: TDBGrid
          Left = 2
          Top = 26
          Width = 766
          Height = 380
          Align = alClient
          BiDiMode = bdLeftToRight
          Ctl3D = False
          DataSource = DM.DSQRMotorEscalados
          FixedColor = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlight
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid2DblClick
          OnKeyUp = DBGrid2KeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'Veiculo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clTeal
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = []
              ReadOnly = True
              Title.Caption = 'Ve'#237'culo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 286
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'motorista1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -19
              Font.Name = 'Californian FB'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Caption = 'Motorista 1'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 225
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'motorista2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -19
              Font.Name = 'Californian FB'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Caption = 'Motorista 2'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -16
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 217
              Visible = True
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'ESTAT'#205'STICA'
      ImageIndex = 2
      TabVisible = False
      OnShow = TabSheet3Show
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 794
        Height = 593
        Align = alClient
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label11: TLabel
          Left = 27
          Top = 56
          Width = 185
          Height = 24
          Caption = 'Ve'#237'culos Operantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 359
          Top = 27
          Width = 164
          Height = 24
          Caption = 'Ve'#237'culos Parados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 27
          Top = 27
          Width = 134
          Height = 24
          Caption = 'Total Ve'#237'culos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 27
          Top = 350
          Width = 197
          Height = 24
          Caption = 'Motoristas Escalados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 359
          Top = 322
          Width = 208
          Height = 24
          Caption = 'Motoristas Dispon'#237'veis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 27
          Top = 322
          Width = 147
          Height = 24
          Caption = 'Total Motoristas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 359
          Top = 350
          Width = 188
          Height = 24
          Caption = 'Motoristas Ausentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 14
          Top = 295
          Width = 765
          Height = 9
          Brush.Color = clNavy
          Shape = stRoundRect
        end
        object DBEdit3: TDBEdit
          Left = 231
          Top = 27
          Width = 44
          Height = 25
          Ctl3D = False
          DataField = 'total'
          DataSource = DM2.DsTotalVeic
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 231
          Top = 55
          Width = 44
          Height = 25
          Ctl3D = False
          DataField = 'total'
          DataSource = DM2.DSQrVeicRodados
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBChart1: TDBChart
          Left = 124
          Top = 94
          Width = 545
          Height = 185
          AnimatedZoom = True
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Size = 5
          BottomWall.Brush.Color = clWhite
          BottomWall.Size = 5
          Gradient.EndColor = clSilver
          Gradient.StartColor = clGray
          Gradient.Visible = True
          LeftWall.Brush.Color = clBlack
          LeftWall.Color = 8421440
          LeftWall.Size = 5
          MarginBottom = 5
          MarginLeft = 10
          MarginRight = 15
          MarginTop = 15
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -19
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            'Estat'#237'stica dos Ve'#237'culos')
          Title.Visible = False
          BottomAxis.ExactDateTime = False
          BottomAxis.Increment = 1.000000000000000000
          Chart3DPercent = 30
          DepthAxis.Automatic = False
          DepthAxis.AutomaticMaximum = False
          DepthAxis.AutomaticMinimum = False
          DepthAxis.Maximum = 0.470000000000005800
          DepthAxis.Minimum = -0.529999999999990000
          LeftAxis.ExactDateTime = False
          LeftAxis.GridCentered = True
          LeftAxis.Increment = 1.000000000000000000
          LeftAxis.LabelsSeparation = 20
          LeftAxis.LabelsSize = 6
          LeftAxis.MinorTickLength = 3
          LeftAxis.TickInnerLength = 2
          LeftAxis.TickLength = 6
          Legend.Alignment = laBottom
          Legend.ColorWidth = 20
          Legend.DividingLines.Style = psDash
          Legend.Font.Charset = ANSI_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -13
          Legend.Font.Name = 'Century'
          Legend.Font.Style = [fsBold]
          Legend.Frame.Style = psDashDotDot
          Legend.Frame.SmallDots = True
          Legend.ShadowColor = -1
          Legend.TextStyle = ltsXValue
          Legend.TopPos = 8
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          View3DOptions.Elevation = 341
          View3DOptions.HorizOffset = 14
          View3DOptions.Perspective = 48
          View3DOptions.VertOffset = -7
          View3DOptions.Zoom = 117
          View3DOptions.ZoomText = False
          BorderStyle = bsSingle
          Color = clSilver
          TabOrder = 2
          object Series2: TBarSeries
            Marks.ArrowLength = 20
            Marks.Frame.SmallDots = True
            Marks.Transparent = True
            Marks.Visible = True
            DataSource = DM2.QrTotalVeic
            SeriesColor = clBlue
            Title = 'Total'
            XLabelsSource = 'total'
            BarStyle = bsRectGradient
            BarWidthPercent = 100
            OffsetPercent = -100
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'total'
          end
          object Series1: TBarSeries
            Marks.ArrowLength = 20
            Marks.Frame.Style = psDashDotDot
            Marks.Frame.SmallDots = True
            Marks.Transparent = True
            Marks.Visible = True
            DataSource = DM2.QrVeicRodados
            SeriesColor = clGreen
            Title = 'Operantes'
            XLabelsSource = 'total'
            BarStyle = bsRectGradient
            BarWidthPercent = 100
            OffsetPercent = -40
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'total'
          end
          object Series3: TBarSeries
            Marks.ArrowLength = 20
            Marks.Frame.SmallDots = True
            Marks.Transparent = True
            Marks.Visible = True
            DataSource = DM2.QrVeicParados
            SeriesColor = clRed
            Title = 'Parados'
            XLabelsSource = 'total'
            BarStyle = bsRectGradient
            BarWidthPercent = 100
            OffsetPercent = 25
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'total'
          end
        end
        object DBEdit5: TDBEdit
          Left = 576
          Top = 27
          Width = 44
          Height = 25
          Ctl3D = False
          DataField = 'total'
          DataSource = DM2.DSVeicParados
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBChart2: TDBChart
          Left = 124
          Top = 392
          Width = 545
          Height = 185
          AnimatedZoom = True
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Size = 5
          BottomWall.Brush.Color = clWhite
          BottomWall.Size = 5
          Gradient.EndColor = clSilver
          Gradient.StartColor = clGray
          Gradient.Visible = True
          LeftWall.Brush.Color = clBlack
          LeftWall.Color = 8421440
          LeftWall.Size = 5
          MarginBottom = 5
          MarginLeft = 10
          MarginRight = 15
          MarginTop = 15
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -19
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            'Estat'#237'stica dos Ve'#237'culos')
          Title.Visible = False
          Chart3DPercent = 30
          DepthAxis.Automatic = False
          DepthAxis.AutomaticMaximum = False
          DepthAxis.AutomaticMinimum = False
          DepthAxis.Maximum = 0.500000000000000000
          DepthAxis.Minimum = -0.500000000000000000
          LeftAxis.ExactDateTime = False
          LeftAxis.GridCentered = True
          LeftAxis.Increment = 1.000000000000000000
          LeftAxis.LabelsSeparation = 20
          LeftAxis.LabelsSize = 6
          LeftAxis.MinorTickLength = 3
          LeftAxis.TickInnerLength = 2
          LeftAxis.TickLength = 6
          Legend.Alignment = laBottom
          Legend.ColorWidth = 10
          Legend.DividingLines.Style = psDash
          Legend.Font.Charset = ANSI_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -13
          Legend.Font.Name = 'Century'
          Legend.Font.Style = [fsBold]
          Legend.Frame.SmallDots = True
          Legend.ShadowColor = -1
          Legend.ShadowSize = 4
          Legend.TextStyle = ltsXValue
          Legend.VertMargin = 1
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          View3DOptions.Elevation = 341
          View3DOptions.HorizOffset = 14
          View3DOptions.Perspective = 48
          View3DOptions.VertOffset = -7
          View3DOptions.Zoom = 117
          View3DOptions.ZoomText = False
          BorderStyle = bsSingle
          Color = clSilver
          TabOrder = 4
          object BarSeries1: TBarSeries
            Marks.ArrowLength = 20
            Marks.Frame.SmallDots = True
            Marks.Style = smsValue
            Marks.Transparent = True
            Marks.Visible = True
            DataSource = BarSeries2
            SeriesColor = clBlue
            Title = 'Total'
            XLabelsSource = 'TotalMotoristas'
            BarStyle = bsRectGradient
            BarWidthPercent = 100
            OffsetPercent = -100
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'TotalMotoristas'
            DataSources = (
              'BarSeries2'
              'BarSeries3'
              'BarSeries4')
            object TeeFunction1: TAddTeeFunction
            end
          end
          object BarSeries2: TBarSeries
            Marks.ArrowLength = 20
            Marks.Frame.Style = psDashDotDot
            Marks.Frame.SmallDots = True
            Marks.Transparent = True
            Marks.Visible = True
            DataSource = DM2.QRMotRodando2
            SeriesColor = clGreen
            Title = 'Escalados'
            XLabelsSource = 'TotRodando'
            BarStyle = bsRectGradient
            BarWidthPercent = 100
            OffsetPercent = -40
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'TotRodando'
          end
          object BarSeries3: TBarSeries
            Marks.ArrowLength = 20
            Marks.Frame.SmallDots = True
            Marks.Transparent = True
            Marks.Visible = True
            DataSource = DM2.QRMotDisponiv
            SeriesColor = clRed
            Title = 'Dispon'#237'veis'
            XLabelsSource = 'Disponiveis'
            BarStyle = bsRectGradient
            BarWidthPercent = 100
            OffsetPercent = 25
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Disponiveis'
          end
          object BarSeries4: TBarSeries
            Marks.ArrowLength = 20
            Marks.BackColor = clYellow
            Marks.Frame.SmallDots = True
            Marks.Style = smsValue
            Marks.Transparent = True
            Marks.Visible = True
            DataSource = DM2.QRMotAusent
            SeriesColor = clYellow
            Title = 'Ausentes'
            XLabelsSource = 'ausentes'
            BarWidthPercent = 100
            OffsetPercent = 90
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'ausentes'
          end
        end
        object DBEdit9: TDBEdit
          Left = 576
          Top = 321
          Width = 44
          Height = 25
          Ctl3D = False
          DataField = 'Disponiveis'
          DataSource = DM2.DSMotdisponiv
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit10: TDBEdit
          Left = 576
          Top = 350
          Width = 44
          Height = 25
          Ctl3D = False
          DataField = 'ausentes'
          DataSource = DM2.DSMotAusent
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 231
          Top = 350
          Width = 44
          Height = 25
          Ctl3D = False
          DataField = 'TotRodando'
          DataSource = DM2.DSMotRodando2
          Enabled = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object StaticText1: TStaticText
          Left = 231
          Top = 321
          Width = 44
          Height = 25
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvNone
          BorderStyle = sbsSingle
          Caption = '10'
          Color = clBtnHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -16
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
      end
    end
  end
  object QRApoio: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select nome from cadmotorista where Funcao = "Apoio de Pista"')
    Left = 680
    Top = 264
    object QRApoionome: TWideStringField
      Alignment = taCenter
      FieldName = 'nome'
    end
  end
  object QRStandBy: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select nome from cadmotorista where Turno = "3'#186'"')
    Left = 680
    Top = 296
    object QRStandBynome: TWideStringField
      Alignment = taCenter
      FieldName = 'nome'
    end
  end
  object DSQRApoio: TDataSource
    DataSet = QRApoio
    Left = 712
    Top = 264
  end
  object DSQRStandBy: TDataSource
    DataSet = QRStandBy
    Left = 712
    Top = 296
  end
  object ImageList1: TImageList
    Left = 632
    Top = 8
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000BF000000BF000000BF000000BF000000BF000000BF000000BF000000
      0000000000000000000000000000000000000000000000000000000000008C7B
      7300736352000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000BF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000BF000000000000000000000000000000000000000000000000008C7B
      7300736352000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000BF0000000000000000000000000000000000000000008C7B
      7300736352000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000BF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000008C7B
      7300736352000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000BF00000000000000000000000000000000008C7B
      7300736352000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF000000FF000000FF00FFFF
      FF000000FF000000FF000000FF000000FF00FFFFFF000000FF000000FF00FFFF
      FF000000FF000000FF000000BF00000000000000000000000000000000008C7B
      7300736352000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF000000FF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF00FFFFFF000000BF00000000000000000000000000000000008C7B
      73007363520008A5180008A51800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF000000FF000000FF00FFFF
      FF000000FF00FFFFFF000000BF00000000000000000000000000000000008C7B
      73007363520021C6310021C6310008A5180008A5180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF000000FF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF000000BF00000000000000000000000000000000008C7B
      73007363520021B5310021C631005ADE6B005ADE6B0021B5310021C6310008A5
      180008A518000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000BF00000000000000000000000000000000008C7B
      73007363520021B5310021C631005ADE6B005ADE6B0021B5310021C6310021D6
      390021D6390008A5180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000BF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000008C7B
      73007363520021B5310021C631005ADE6B005ADE6B0021B5310021C631005ADE
      6B0021D6390008A5180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000BF0000000000000000000000000000000000000000008C7B
      73007363520021B5310021C631005ADE6B005ADE6B0021B5310021C6310008A5
      180008A518000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000BF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000BF000000000000000000000000000000000000000000000000008C7B
      73007363520021B5310021C6310008A5180008A5180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000BF000000BF000000BF000000BF000000BF000000BF000000BF000000
      0000000000000000000000000000000000000000000000000000000000008C7B
      73007363520008A5180008A51800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFF01FE7FF0000
      FFFFC007E7FF0000FFFFC003E7FF0000FFFF8003E7FF0000FFFF0001E7FF0000
      FFFF0001E7FF0000FFFF0001E1FF0000FFFF0001E07F0000FFFF0001E0070000
      FFFF0001E0030000FFFF8003E0030000FFFFC003E0070000FFFFC007E07F0000
      FFFFF01FE1FF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end

object FrmRotas: TFrmRotas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Rotas'
  ClientHeight = 382
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 90
    Height = 382
    Align = alLeft
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 7
      Top = 16
      Width = 75
      Height = 66
      Caption = 'NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF035C07035C07035C07035C07FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF025C04FFFFFF058E0D058F0D058F0D035C07FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025C04FFFFFF058E0D058F
        0D058F0D035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025C04
        FFFFFF058E0D058F0D058F0D035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF025C05FFFFFF058E0D058F0D058F0D035C07FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF035D05FFFFFF06900F058F0D058F0D035C07FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D05FFFFFF0A96160792
        11079211035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF035C07035C07035C07035C07035C07035C07035D05
        FFFFFF0E9D1D0B98170B9817035D05035C07035C07035C07035C07035C07035C
        07FF00FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFF38D36433CC5A2DC75229
        C14B25BD4420B63B16A72B13A1240F9D1E0C97180D9C1B0A9716079211058F0D
        058F0D058F0D058F0D035C07FF00FFFF00FFFF00FFFF00FF035C07FFFFFF38D3
        6433CC5A2DC75229C14B25BD4420B63B1CAC3318A72C14A326109E200D9C1B0A
        9716079211058F0D058F0D058F0D058F0D035C07FF00FFFF00FFFF00FFFF00FF
        035C07FFFFFF3CD76B37CF6233CA5A2DC5522AC04B25BA4321B53C1CAF3518AA
        2F15A42811A0220F9C1D0C9718089212068E0E058C0D058E0D035C07FF00FFFF
        00FFFF00FFFF00FF035C07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF22B53E1EB0371AAC31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF035C07FF00FFFF00FFFF00FFFF00FFFF00FF035C07035C07035C07035C0703
        5C07035C07035D05FFFFFF28BD4824BA4124BA41035D05035C07035C07035C07
        035C07035C07035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFF2DC6532AC24D2AC24D035C07FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFF34CC5C30C9
        5630C956035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035C07
        FFFFFF3AD36736D06036D060035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF035C07FFFFFF3FD96F3DD86B43E177035C07FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFF40DA7041DD7343E177035C07FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035C07FFFFFFFFFFFFFFFF
        FFFFFFFF035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        035C07035C07035C07035C07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
    end
    object BitBtn2: TBitBtn
      Left = 7
      Top = 87
      Width = 75
      Height = 66
      Caption = 'SALVAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        995951883838823435843535812E2F8C5859A4A5A5A5A3A3A6A4A4A7A5A4A7A4
        A4A6A4A4A5A3A3A4A3A3A5A5A58E5656802D2D813132813233823435823435FF
        00FFFF00FFA0675BB25350BA4949BA4949BC4A4AA43D3D824E4F9C9D9DBFBFBC
        DDDAD8EEEAE7F7F2EEF7F2EDE9E5E3DAD9D7D4D5D5A35B5B7D1818801F1F8723
        23B04141AF4546823334FF00FFA0675BB25350BF4A4ABF4B4BC04C4CA73E3F83
        51518A7474A16766C19A97D5BDBBF7F2EDFFFBF7FAF4F2EAE7E5E1E2E1A65B5C
        7B1716801E1E872323B14141B14747823334FF00FFA0675BB25350BD4A4ABC4B
        4BC04C4CA53E3E8756568A6364872625A05553BA8986E6E1DDFAF4F2FEF8F4F7
        F2EEEBEBEAA95E5D7B1717801E1E872323B14141B14747823334FF00FFA0675B
        B25350BD4A4ABC4B4BC04C4CA53E3E8B5959916A6A7F1B1B882828A15A58D4CC
        CBEEEAE7FAF4F2FEFAF6F8F8F4AC62627B1617801E1E872323B14141B1474782
        3334FF00FFA0675BB25350BD4A4ABC4B4BC04C4CA53E3E8F5B5B986F6E801D1D
        7F1B1B892F2FBAB1B0DDDAD8EFEBE7FCF7F3FFFFFCB165647A1616801E1E8723
        23B14141B14747823334FF00FFA0675BB25350BD4A4ABC4B4BC04C4CA43D3D96
        5F5EA173727F18187F18187F1D1D989090C1C1C0DEDAD7F3EFEBFFFFFCB46866
        7A1616801E1E872323B14141B14747823334FF00FFA0675BB25350BD4A4ABC4B
        4BC04C4CA13C3C996260B59592904A4A8A4545864949878888A0A6A5C6CAC7E6
        EAE6FFFFFFB268677714147D1C1C842121B04141B14747823334FF00FFA0675B
        B25350BD4A4ABC4B4BC04C4CAB4141A65657C6918FBA8989AD8181A57B7B9D74
        749D7474B28887CC9E9DDEB1AFB55C5B912828952D2D993030B64545B1464782
        3334FF00FFA0675BB25350BF4B4BBF4B4BBF4B4BBD4A4ABD4848BC4646BC4747
        BC4747BD4647BD4647BC4646BB4444BB4444BA4444BC4747BD4A4ABD4848BF4B
        4BC04C4CAF4546823334FF00FFA0675BB25350B64545B04241B44846B85150BC
        5757BF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5BBF5C5B
        BF5C5BBF5E5DBF5454BF4B4BAF4546823334FF00FFA0685BB454519C35318F30
        2CA1514DB47673C29693CBAAA9CCADACCCACABCCACABCCACABCCACABCCACABCC
        ACABCCACABCCACABCCACABCCB2B1C47777BD4646AF4546823334FF00FFA0685B
        B45350972D29C08782F8F2EFF3E7E6F4EAE9F6EDEBF6EDEBF6EDEBF6EDEBF6ED
        EBF6EDEBF6EDEBF6EDEBF6EDEBF6EDEBF8EFEEE9DDDCBF7574B23F3FAF454682
        3435FF00FFA0685BB45350972D29C5908CFFFFFFFAF2F0FAF2F0FAF2F0FAF2F0
        FAF2F0FAF2F0FAF2F0FAF2F0FAF2F0FAF2F0FAF2F0FAF2F0FCF4F3EAE0DEBD74
        73B03D3DAF4546823435FF00FFA0685BB45350972D29C48E8AFFFFFCF6EEEDF6
        EDEBF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EEEDF6EDEB
        FAF2F0EADEDDBD7473B03D3DAF4546823435FF00FFA0685BB45350972D29C48E
        8AFFFFFEE2DCDABDBBBBBFBDBDBFBDBDBFBDBDBFBDBDBFBDBDBFBDBDBFBDBDBF
        BDBDBFBDBDBBBAB8DED9D9EEE1E0BD7473B03D3DAF4546823435FF00FFA0685B
        B45350972D29C48E8AFFFFFEF2E9E9E7E1E0E7E1E0E7E1E0E7E1E0E7E1E0E7E1
        E0E7E1E0E7E1E0E7E1E0E7E1E0E6E0DEF2EBEBEDE0DEBD7473B03D3DAF454682
        3435FF00FFA0685BB45350972D29C48E8AFFFFFEE6E0DEC7C4C4C9C5C5C9C5C5
        C9C5C5C9C5C5C9C5C5C9C5C5C9C5C5C9C5C5C9C5C5C5C2C2E2DDDDEDE1E0BD74
        73B03D3DAF4546823435FF00FFA0685BB45350972D29C48E8AFFFFFEEEE6E5DD
        D7D5DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DCD5D5
        EEE7E6EDE0DEBD7473B03D3DAF4546823435FF00FFA0685BB45350972D29C48E
        8AFFFFFEEEE6E5DDD7D5DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DDD8D7DD
        D8D7DDD8D7DCD5D5EEE7E6EDE0DEBD7473B03D3DAF4546823435FF00FFA0685B
        B45350972D29C48E8AFFFFFEE5DDDDC5C1C1C6C4C2C6C4C2C6C4C2C6C4C2C6C4
        C2C6C4C2C6C4C2C6C4C2C6C4C2C2C0C0E2DCDAEEE1E0BD7473B03D3DAF454682
        3435FF00FFA0685BB45350972D29C58F8BFFFFFFFBF2F0FCF3F2FCF3F2FCF3F2
        FCF3F2FCF3F2FCF3F2FCF3F2FCF3F2FCF3F2FCF3F2FCF3F2FFF6F4EDE0DEBD74
        73B23F3FB04647823435FF00FFA0685BAD5450952D29BC8783EFEFEEEAE2E1EA
        E2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1EAE2E1
        EBE6E5E1D7D5B87270A53939A54142823435FF00FFFF00FF9858518A2D28A36F
        6DB6BCBCB4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4B2B2B4
        B2B2B4B2B2B4B2B2B2B2B2C1BAB8A56A6A7E2C2D823334FF00FF}
      Layout = blGlyphTop
    end
    object BitBtn3: TBitBtn
      Left = 7
      Top = 229
      Width = 75
      Height = 66
      Caption = 'EXCLUIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFEDA463EDA463EDA463EDA463EDA463EDA463FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFEDA463FBDAAAFEDAB0FED1A7FAC291F3B47BEEA667EDA360EDA4
        63EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFEDA463FCE7B8FFF2C7FEDEB2FCCFA4FAC090F3B47B
        EEA768EDA462EDA462EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463FFFACFFEEEC2FEDCB2FC
        CFA4FAC191F3B47BEEA768EDA463EDA463EDA463FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463FFFC
        D1FEEEC2FEDEB4FCD0A5FAC292F3B57DEEA769EDA462EDA463EDA463EDA463FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        EDA463FAE0AAFFFFD3FEEEC2FEDEB4FCD0A5FAC292F3B57EEEA969EDA462EDA4
        63EDA463EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFEDA463FCEDBBFFFFD4FFEEC2FEE0B4FCD1A6FAC493F3B67F
        EFA96AEDA463EDA463EDA463EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFF0B779FEF7CAFFFFD4FFF3C7FFE3BAFE
        D4ABFBC597F4B781EFA96BEDA462EDA463EDA463EDA463EDA463FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463F4CA92FFFFDCFFFA
        CCFBDEABF6C590F3B77FF2B177F0AC6EEEA667EDA462EDA362EDA463EDA463ED
        A463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463
        F7D39AF2C78CE1954CDC843ADE863CE28F46E79C55EAA965EDB06EEEB170EEAC
        6AEDA564EDA463EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFEDA665D98135C2540AC5570CD06C1FDC8339E59750EAAB67EFBB7B
        F2C78AF3CA8FF2C486EEB573EAA663EDA360FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFDE8941B74401BA4802CA6316D7782BE28E44E9
        A15CEFB675F3C98FF7DCA5FAE2ACF4D59DF0C284EAAB69EAA05DFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE3934CC1530ABB4A03CA63
        16D77A2DE39047E9A45FEFBA7AF4D097FBE9B6FEF2C2F7E0AAF2C78CEDB16DEA
        A35FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        E59650D16F24CC671AD57529E18C43E2A05A015703015703FAE0ABFBE5B2F6D5
        9FF0BB7DEDA767FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFE79954E3914AE5934D0157031E9A3540DC72
        025905F0BA7BEFAD6EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF8B58588B58588B5858FF00FFFF00FFFF00FFFF00FFFF00FF01570318
        902D43E17836D56318A32C015703FF00FFFF00FFFF00FFFF00FFFF00FF925B56
        8B5858C69A7FC6997DC4957A8B5858EEBC76BB8154FF00FFFF00FFFF00FFFF00
        FF0157030B7B1419902D27B24722B63D1299220F951D015703FF00FFFF00FFFF
        00FF9E6D6AE1C6AF8B5858E7BA7DE7BA7DE7BA7D8B5858A35D2CAD6F448B5858
        FF00FFFF00FFFF00FF0157030157030157030C7F1815A5280157030157030157
        03FF00FFFF00FFFF00FFA47674F0E3CAE7BA7DAA68388B58588B5858D9B2928B
        5858CC9A738B5858FF00FFFF00FFFF00FFFF00FFFF00FF01570310841C0A9616
        015703FF00FFFF00FFFF00FFFF00FFFF00FF8B58588B5858C5813AAC5305A46B
        4EE2C4B0E5BC93C78A53B87B468B5858FF00FFFF00FFFF00FFFF00FFFF00FF01
        57030A8313037408015703FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8B5858
        8B5858A75817CA8842D1A0738B58588B58589F6A54FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF015703036F07015703FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF90523CAC5B16AF66288B5858E7BA7DE7BA7D8B5858FF00FF
        FF00FFFF00FFFF00FFFF00FF05730A047F0A015703FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8B58588B5858E7BA7DE7BA7D8B
        5858FF00FFFF00FFFF00FFFF00FF015703015703015703015703FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8B58
        588B58588B58588B5858FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
    end
    object BitBtn4: TBitBtn
      Left = 7
      Top = 306
      Width = 75
      Height = 66
      Caption = 'SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
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
    object BitBtn8: TBitBtn
      Left = 7
      Top = 158
      Width = 75
      Height = 66
      Caption = 'CANCELAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn8Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004EAB004EAB004EAB004E
        AB004EAB004EABFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0077F1006DE40063D8
        005FCD0060C8005CC10054B7004EAB004794003A76FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF007DFD0077F800
        75F32988ED67A9EC91C1F0A3CAF1A2C9F18BBCEC5C9DE01C73CD0053B3004797
        003D7CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF007C
        FF0078FF3597FDAAD3FCF4F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA
        F3FD93BFED2274CB004CA7003C7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF027FFF0982FF8EC5FFF5FAFFFFFFFFFFFFFFD8E8FBD8E8FBC2DCFACEE2
        FAD8E7FBD8E7FBFFFFFFFFFFFFE7F1FC6CA5E00054B1003D7EFF00FFFF00FFFF
        00FFFF00FFFF00FF0A84FF0A84FFA6D2FFFFFFFFFFFFFFE1EDFDB0D3FA1577EB
        086DE8076CE7056AE70469E61876E8C2DCFAFFFFFFFFFFFFFFFFFF72A8E1004E
        AB003E7EFF00FFFF00FFFF00FFFF00FF0380FF7CBDFFFFFFFFFFFFFFE2EEFD5A
        A4F70F75EC0D72EB0C70EA1375EA086DE8076CE7056AE7056AE66EABF2E0ECFC
        FFFFFFF3F8FC2F7DCC004DA5FF00FFFF00FFFF00FF0F86FF2390FFE6F3FFFFFF
        FFE2EFFD52A0F7167AEF1378EE1478EE0E74EC0C72EA0D71E9096EE9076CE706
        6BE70569E661A4F1E0ECFCFFFFFFB6D2EE025ABA0053A9FF00FFFF00FF0A84FF
        79BBFFFFFFFFFFFFFF8CC2FB1B80F39EC8F9FDFEFF8DBEF71277ED1074EC197A
        EC1A79EB9EC6F6E7F1FD066BE8056AE7A4CBF7FFFFFFFDFDFD3F89D40058BEFF
        00FF1B8CFF188BFFC5E1FFFFFFFFFEFFFF2287F61F84F54A9CF7CDE3FCFFFFFF
        68AAF51478EE1277EDAACEF8FFFFFFA1C8F70A6EE9076DE8247FEBE0ECFCFFFF
        FF91BDE90061CF0053A91B8CFF3097FFF1F8FFFFFFFFC4E1FE268AF7278AF620
        86F53690F5C5DFFCF5FAFE6AACF67BB4F6FFFFFFA7CCF81D7CEC0C71EB0A6FEA
        086EE9CAE1FBFFFFFFC9DFF60470DE0069D71D8DFF52A7FFFCFDFFFFFFFF83BF
        FE298EF92F91F8248AF82287F63893F7C3DEFCF6FAFEEDF5FE7DB5F6197DEE11
        76ED0F75EC0D72EB0B70EA96C3F6FFFFFFEAF3FD0E7CEC0073ED2591FF70B7FF
        FEFFFFFFFFFF7FBDFE2C91FC298FFA3393F92A8DF82388F7B3D6FCFFFFFFFCFE
        FF65A9F6197FF1157AEF1377EE1075EC0E73EC89BBF6FFFFFFF1F8FF1081F400
        77F12E95FF82C0FFFFFFFFFFFFFF94C8FF2F94FD2D92FC2B90FB3092FA8AC1FC
        F4F9FFB6D8FCC8E1FDF4F9FE6BACF71D81F1177CF01479EF1277ED9FCAF8FFFF
        FFE8F4FF0D82F70078F53297FF86C2FFFAFDFFFFFFFFD8EBFF3196FD3095FD43
        9EFDB2D7FEFFFFFF8FC4FC268BF83592F8CBE3FDFFFFFF92C3FA1A7FF2187DF1
        177BF0D3E6FCFFFFFFC7E3FF047DFA0079F757AAFF75BAFFEEF7FFFFFFFFFFFF
        FF45A1FF3297FEA0CFFEFFFFFFB4D8FE2C90FB298FFA288DF93A95F9D1E6FDFF
        FFFF1E83F41B81F24297F6FFFFFFFFFFFF8CC5FF0076FD0079F7FF00FF58ABFF
        D9ECFFFFFFFFFFFFFFC1E0FF3398FF5DADFE9DCEFF439FFD2F93FC2D91FB2A90
        FB288DFA469CFAA7D0FC2287F62185F6C3DEFDFFFFFFFCFEFF389BFF007AFFFF
        00FFFF00FF5DADFFACD5FFFEFFFFFFFFFFFFFFFF8EC6FF3398FF3398FF3297FF
        3195FE3095FD2E92FC2C91FB298FFA288CF9288CF7CAE5FFFFFFFFFFFFFFACD5
        FF017FFF017FFFFF00FFFF00FFFF00FF6FB7FFE8F4FFFFFFFFFFFFFFFFFFFFA5
        D1FF3599FF3398FF3398FF3296FE3095FE2F93FD2C92FB2F92FBB9DAFEFFFFFF
        FFFFFFEDF6FF2A94FF027FFFFF00FFFF00FFFF00FFFF00FF77BAFFA3D0FFFAFD
        FFFFFFFFFFFFFFFFFFFFFAFDFF92C8FF56AAFF46A2FF46A1FE5BACFEA1CFFEFF
        FFFFFFFFFFFFFFFFFCFEFF64B1FF017FFF0A84FFFF00FFFF00FFFF00FFFF00FF
        FF00FF76B9FFAFD7FFF5FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDCEDFF60AFFF0782FF0F86FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF79BBFF91C8FFDBEDFFFAFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF6FFA1CFFF3599FF0E85FF1489FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF97CAFF75B9FF9E
        CEFFCAE5FFE3F1FFEDF6FFEDF6FFE6F3FFD4E9FFABD4FF6DB5FF3097FF1D8DFF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF95C9FF75B9FF75B9FF7BBCFF7BBCFF6DB5FF58ABFF44A1FF2D
        95FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphTop
    end
  end
  object PageControl2: TPageControl
    Left = 90
    Top = 6
    Width = 583
    Height = 372
    ActivePage = TabSheet4
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    TabPosition = tpBottom
    object TabSheet3: TTabSheet
      Caption = 'Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnShow = TabSheet3Show
      ExplicitHeight = 346
      object Label2: TLabel
        Left = 14
        Top = 98
        Width = 98
        Height = 18
        Caption = 'Caracter'#237'stica'
        FocusControl = DBMemo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 14
        Top = 39
        Width = 33
        Height = 18
        Caption = 'Rota'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBMemo1: TDBMemo
        Left = 14
        Top = 115
        Width = 545
        Height = 153
        Ctl3D = False
        DataField = 'Caracteristica'
        DataSource = DM.DsRotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 14
        Top = 56
        Width = 199
        Height = 25
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'Rota'
        DataSource = DM.DsRotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = DBEdit1Exit
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      OnShow = TabSheet4Show
      ExplicitHeight = 346
      object DBGrid1: TDBGrid
        Left = 3
        Top = 6
        Width = 569
        Height = 334
        Ctl3D = False
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Rota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Caracteristica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Caracter'#237'stica'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 447
            Visible = True
          end>
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM.LigaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cadrota order by rota')
    Left = 552
    Top = 320
    object ADOQuery1Rota: TWideStringField
      FieldName = 'Rota'
      Size = 15
    end
    object ADOQuery1Caracteristica: TWideMemoField
      FieldName = 'Caracteristica'
      OnGetText = ADOQuery1CaracteristicaGetText
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 584
    Top = 320
  end
end

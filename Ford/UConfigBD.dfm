object FrmConfigBD: TFrmConfigBD
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Configurar BD'
  ClientHeight = 119
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 17
    Width = 178
    Height = 16
    Caption = 'Localiza'#231#227'o do Banco de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 36
    Width = 281
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 316
    Top = 22
    Width = 49
    Height = 49
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      66090000424D660900000000000036000000280000001C0000001C0000000100
      18000000000030090000630B0000630B00000000000000000000FF00FFAD7C79
      676B7026599D235291FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFAD7C79676B702E6CBE2B65B226599D235291
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF676B70328AE4348BE92E7DD52A66B326599D235291FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3A9AF848ADFE3896F634
      8BE92E7CD42A66B326599D235291FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF7EC4FF55BBFF48ADFD3897F5348BE92F7CD32A67B426
      599D235291FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF85C8FF53B9FF49ADFD3997F5348BE92F7BD32A67B426599D235291FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8BCBFF51B7FF49AE
      FD3997F5348BE92F7BD32A67B426599D235291FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF94D0FD5DBCFB49AEFD3997F5348BE92F7B
      D32A67B426599D235291FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFA2D6F95DBCFB49AEFD3997F5348BE92F7CD32A66B3555585FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA2D6F9
      5DBCFB49AEFD3997F5348BE92E7CD48A536DFF00FFFF00FFFF00FFD1A49AC291
      83B68D80AD7C79B68D80C29183D1A49AFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0D5F95DBDFB49ADFD629BF9
      D4A4939B5F7A8A536DB48181C8A3A2D5B1A0E2C2A1EAD6AEE9D9B3EADAB6E2C2
      A1D5B1A0C29183D1A49AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF95D3FD5AB6F9E2C3AEDAB39BC9998EB58383C8968D
      F0CCA3F7E2B9FBF0C7FFFACEFFFDD0FEFBD3FAF3D2F1E7CBEBDEC2C29183D1A4
      9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFE2C3AEB58383DBAB91F7D0A6FFF0C6FFFACAFFFBCCFFFED3
      FFFED7FEFEDCFEFBDFFCF9E2FCFBECF6EFE2C29183D1A49AFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58383DC
      AB91FAD2A5FEF7CBFFF2C0FFF4C3FFFCCDFFFED5FFFFDDFFFEE3FEFEEAFEFEF0
      FEFEFAFEFEFDF8F4E9C29183D4A493FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFD4A493F6CB9FFFE8BAFFEEBEFFEDBBFF
      F5C4FFFCCFFFFFD8FFFFE1FFFFE9FFFFF0FFFFF5FFFFFAFFFFF9FFFFF0F0E7CC
      C29183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFDAB39BDAB6A1F7E0BAFFEDBDFFE8B6FFECB9FFF5C4FFFCD0FFFFDAFFFFE2FF
      FFEBFFFFF2FFFFF5FFFFF6FFFFF1FFFFE1FFFFD7C7A297D4A493FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD1A49AF1CCA5FFF5C7FFEB
      B9FFE6B3FFECB9FFF5C3FFFCCFFFFFD9FFFFE1FFFFE9FFFFEEFFFFF1FFFFF0FF
      FFEAFFFFDFFFFFD9E0C6AFC7A297FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFC29183EED0ACFFF5C4FFE7B5FFE3B1FFEAB7FFF3C1FFFA
      CCFFFED6FFFFDEFFFFE5FFFFE9FFFFEBFFFFE9FFFFE5FFFFDDFFFFD5F8EBC0C2
      9183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC29183
      EED6B3FFF2C2FFE5B4FFE3B1FFE9B7FFF0BEFFF8C8FFFCD1FFFED9FFFFDEFFFF
      E2FFFFE3FFFFE2FFFFDEFFFFD8FFFFD0FFF4C2C29183FF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFC29183EDD5B3FFF1C2FFE7B7FFE4B6
      FFE8B7FFEDBBFFF4C3FFF9CBFFFCD1FFFED6FFFED9FFFFDBFFFFD9FFFFD5FFFF
      D0FFFCCCF8E7B9C29183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFD1A49AEED5AFFEF1C4FEEDC4FFEBC4FFEAC0FFEABCFFEEBDFFF3C3
      FFF8C8FFFACCFFFBCFFFFCD0FFFCCFFFFCCCFFFCCAFFF5C9E4C8AAC7A297FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDAB39BE3C4A9F9
      ECC5FDF6DDFEF2D5FFEECDFFECC4FFEBBDFFEDBCFFF0C0FFF3C2FFF4C3FFF5C4
      FFF5C4FFF6C3FFF9C9FFEDBDC29183D4A493FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFC29183F4E2BCFDF9EBFEF9E8FFF4DCFF
      EFCEFFEBC1FFE7B9FFE9B8FFEAB9FFECBAFFEDBBFFECB9FFF1BFFFF1C1F4D6AB
      C29183FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFD1A49AC29183F8F1E7FEFDF9FFF9EAFFF4DBFFEECAFFE7BBFFE3B3FF
      E4B2FFE6B4FFE9B6FFEFBCFFF2C3FFDEACC29183D4A493FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD1A49AC291
      83FCF9F8FEFDFAFEF8E5FFF4D2FFEEC4FFE7B8FFE8B6FFECBAFFF1C0FFEFC1FF
      DDADC29183D4A493FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD1A49AC29183FEF8DFFEF8DCFFFA
      D4FFF8CEFFF4C6FFF5C7FFF5C7FFEABAFFD9A7C29183D4A493FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFD1A49AC29183DDC1ACF3DEB4FFE9B7FFE5B3FFE3B3F8DD
      B2DDC1ACC29183D4A493FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFD1A49AC29183B68D80AD7C79B68D80C29183D1A49AFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF}
  end
  object BitBtn2: TBitBtn
    Left = 62
    Top = 83
    Width = 105
    Height = 25
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkOK
  end
  object BitBtn3: TBitBtn
    Left = 206
    Top = 83
    Width = 113
    Height = 25
    TabOrder = 3
    OnClick = BitBtn3Click
    Kind = bkCancel
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Banco de Dados (*.mdb)|DBRod.mdb;'
    Left = 336
    Top = 88
  end
end

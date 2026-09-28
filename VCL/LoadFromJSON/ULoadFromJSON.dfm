object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Load From JSON Demo'
  ClientHeight = 760
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001002020000001002000A81000001600000028000000200000004000
    0000010020000000000000100000640000006400000000000000000000000000
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
    00002A2A2A061F1F24311F1F24311F1F24311F1F24311F1F24311F1F24311F1F
    24311F1F24311F1F24311F1F24311F1F24311F1F24311F1F24311F1F24311F1F
    24311F1F24311F1F24311F1F24311F1F24311F1F24311F1F24311F1F24311F1F
    24311F1F24311F1F24311F1F24311F1F24311F1F24312121262E000000000000
    00001E1E1E21201F23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F
    23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F
    23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F23FF201F
    23FF201F23FF201F23FF201F23FF201F23FF201F23FF232225EF000000000000
    00001C1C1C09211E2144211E2144211E2144211E2144211E2144211E2144211E
    2144211E2144211E2144211E2144211E2144211E2144211E2144211E2144211E
    2144211E2144211E2144211E2144211E2144211E2144211E2144211E2144211E
    2144211E2144211E2144211E2144211E2144212124A9232225EF000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000002321268A232225EF000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000002321268A232225EF000000000000
    00000000000000000001242024462320256D242424310000000026262C282525
    285825252A36000000000000000027272B402525285827272720000000000000
    000028282C4B2525285826262614000000003F3F3F04222226422121256C2222
    246122222E160000000000000000000000002321268A232225EF000000000000
    00000000000021212492201F23FF201F23FF201F23FE2323274123202574201F
    23FF201E239D0000000000000000212123B9201F23FF201E235D000000000000
    0000212025DB201F23FF1E1E223B22222734212023DF201F23FF201F23FF201F
    23FF212023EF2323283200000000000000002323264F24222884000000000000
    00003333330F201F23FC201F23FF21212579212125963333330523202574201F
    23FF201E239D0000000000000000212123B9201F23FF201E235D000000000000
    0000212025DB201F23FF1E1E223B2A2A2A12202024C921212469252525292222
    2575201F23FF212124A20000000000000000D4AA0006F0B40F11000000000000
    00001E1E2621201F23FF212024F500000000000000000000000023202574201F
    23FF201E239D0000000000000000212123B9201F23FF201E235D000000000000
    0000212025DB201F23FF1E1E223B00000000000000002626261422222468211F
    23D8201F23FF2120259E00000000E6A90015EFAE01E1EEAE00FCEEAC025D0000
    00001E1E1E21201F23FF212024F500000000000000000000000023202574201F
    23FF2020239F0000000000000000211F23B9201F23FF2020235E000000000000
    0000212024DB201F23FF1E1E223B0000000024212663201F23F5201F23FF201F
    23FF202024C3271F272000000000ECAE0346EFAE00FFEFAE00FFEEAD00A90000
    00001E1E1E21201F23FF212024F500000000000000000000000023202574201F
    23FF202024CB0000000100000000212023CF201F23FF2121248B000000002A2A
    2A06201F24F0201F23FF2520253755555503201F23F6201F23FC232125822727
    2727000000010000000000000000DF9F0008EEAE01AEEFAE01D3EDAB003A0000
    00002422267D201F23FF201F23F92424286A2626294F0000000023202574201F
    23FF201F23FF202024C2211F24AA201F23FF201F22F8201F23FC211F24A8211F
    23C1201F23FF201F23F42727270D00000001201F23EA201F23F8211F23722220
    257C212024D4271F272000000000000000000000000000000000000000000000
    0000201F23FF201F23FF201F23FF201F23FF222125C00000000023202574201F
    23FF1F1F23C8201F23E4201F23FF201F23ED2520253E21202596201F23FC201F
    23FF201F23F32222255800000000000000002222254A201F23EA201F23FF201F
    23FF212023DF2424283F00000000000000000000000000000000000000000000
    00001E1E2333201F23FF212024F6242424151F1F1F10000000001919190A2424
    24152727270D1F1F3F08251F25302727270D000000000000000022222E162424
    24312A2A2A0C000000000000000000000000000000002A2A2A062121272D2626
    2628000000020000000000000000000000000000000000000000000000000000
    00001E1E1E21201F23FF212024F5000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00001919330A2323264F2424284C000000000000000000000000000000000000
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
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OnCreate = FormCreate
  PixelsPerInch = 144
  TextHeight = 25
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 1244
    Height = 85
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 0
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 955
    object Button1: TButton
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 220
      Height = 63
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Load letter.json'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 251
      Top = 11
      Width = 220
      Height = 63
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Load sales.json'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 231
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 491
      Top = 11
      Width = 220
      Height = 63
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Load multiplesales.json'
      TabOrder = 2
      OnClick = Button3Click
      ExplicitLeft = 451
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 731
      Top = 11
      Width = 220
      Height = 63
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Load values.json'
      TabOrder = 3
      OnClick = Button4Click
      ExplicitLeft = 671
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 971
      Top = 11
      Width = 220
      Height = 63
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Load pie.json'
      TabOrder = 4
      OnClick = Button5Click
      ExplicitLeft = 891
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 125
    Width = 1244
    Height = 615
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 955
    object Splitter1: TSplitter
      Left = 873
      Top = 1
      Width = 15
      Height = 613
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      ExplicitLeft = 950
      ExplicitTop = 49
    end
    object TMSFNCBarChart1: TTMSFNCBarChart
      Left = 1
      Top = 1
      Width = 872
      Height = 613
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Appearance.ColorList = <
        item
          Color = 16105559
        end
        item
          Color = 5644279
        end
        item
          Color = 7936771
        end
        item
          Color = 12275349
        end
        item
          Color = 1296366
        end
        item
          Color = 4350195
        end
        item
          Color = 16544551
        end
        item
          Color = 5820321
        end
        item
          Color = 10922240
        end
        item
          Color = 16376965
        end>
      Appearance.GlobalFont.Scale = 1.000000000000000000
      Appearance.GlobalFont.Style = []
      Appearance.ColorScheme = ccsColorList
      Appearance.MonochromeColor = 11829830
      ClickMargin = 15.000000000000000000
      Legend.Fill.Color = 16775416
      Legend.Stroke.Color = clGray
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clWindowText
      Legend.Font.Height = -17
      Legend.Font.Name = 'Segoe UI'
      Legend.Font.Style = []
      Legend.Left = 15.000000000000000000
      Legend.Top = 15.000000000000000000
      Stroke.Color = clGray
      SeriesMargins.Left = 0
      SeriesMargins.Top = 0
      SeriesMargins.Right = 0
      SeriesMargins.Bottom = 0
      Series = <
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 65.000000000000000000
          Bar.Spacing = 30.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 300.000000000000000000
          Pie.Margins.Left = 15
          Pie.Margins.Top = 15
          Pie.Margins.Right = 15
          Pie.Margins.Bottom = 15
          Pie.SweepAngle = 360.000000000000000000
          Fill.Color = 16105559
          LegendText = 'Series 0'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -17
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -15.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 16105559
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = 8020012
          Markers.Width = 15.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 22.500000000000000000
          Offset3DY = 22.500000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 27.000000000000000000
              YValueSecond = 11.000000000000000000
              YValueVariable = 27.000000000000000000
              YValueLow = 3.000000000000000000
              YValueClose = 14.000000000000000000
              YValueHigh = 27.000000000000000000
              YValueOpen = 21.000000000000000000
              YValueMedian = 26.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 116.000000000000000000
              YValueSecond = 104.000000000000000000
              YValueVariable = 116.000000000000000000
              YValueLow = 57.000000000000000000
              YValueClose = 96.000000000000000000
              YValueHigh = 116.000000000000000000
              YValueOpen = 57.000000000000000000
              YValueMedian = 120.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 127.000000000000000000
              YValueSecond = 112.000000000000000000
              YValueVariable = 127.000000000000000000
              YValueLow = 56.000000000000000000
              YValueClose = 123.000000000000000000
              YValueHigh = 127.000000000000000000
              YValueOpen = 120.000000000000000000
              YValueMedian = 126.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 109.000000000000000000
              YValueSecond = 92.000000000000000000
              YValueVariable = 109.000000000000000000
              YValueLow = 35.000000000000000000
              YValueClose = 59.000000000000000000
              YValueHigh = 109.000000000000000000
              YValueOpen = 49.000000000000000000
              YValueMedian = 109.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 60.000000000000000000
              YValueSecond = 49.000000000000000000
              YValueVariable = 60.000000000000000000
              YValueLow = 20.000000000000000000
              YValueClose = 52.000000000000000000
              YValueHigh = 60.000000000000000000
              YValueOpen = 24.000000000000000000
              YValueMedian = 62.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 119.000000000000000000
              YValueSecond = 106.000000000000000000
              YValueVariable = 119.000000000000000000
              YValueLow = 51.000000000000000000
              YValueClose = 110.000000000000000000
              YValueHigh = 119.000000000000000000
              YValueOpen = 72.000000000000000000
              YValueMedian = 114.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 57.000000000000000000
              YValueSecond = 47.000000000000000000
              YValueVariable = 57.000000000000000000
              YValueLow = 16.000000000000000000
              YValueClose = 43.000000000000000000
              YValueHigh = 57.000000000000000000
              YValueOpen = 44.000000000000000000
              YValueMedian = 53.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 44.000000000000000000
              YValueSecond = 28.000000000000000000
              YValueVariable = 44.000000000000000000
              YValueLow = 16.000000000000000000
              YValueClose = 20.000000000000000000
              YValueHigh = 44.000000000000000000
              YValueOpen = 30.000000000000000000
              YValueMedian = 47.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 116.000000000000000000
              YValueSecond = 100.000000000000000000
              YValueVariable = 116.000000000000000000
              YValueLow = 65.000000000000000000
              YValueClose = 73.000000000000000000
              YValueHigh = 116.000000000000000000
              YValueOpen = 87.000000000000000000
              YValueMedian = 115.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 23.000000000000000000
              YValueSecond = 10.000000000000000000
              YValueVariable = 23.000000000000000000
              YValueLow = 5.000000000000000000
              YValueClose = 12.000000000000000000
              YValueHigh = 23.000000000000000000
              YValueOpen = 12.000000000000000000
              YValueMedian = 18.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 30.000000000000000000
              YValueSecond = 15.000000000000000000
              YValueVariable = 30.000000000000000000
              YValueLow = 10.000000000000000000
              YValueClose = 12.000000000000000000
              YValueHigh = 30.000000000000000000
              YValueOpen = 20.000000000000000000
              YValueMedian = 28.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -17
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -15.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 8020012
          XGrid.Visible = True
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clWindowText
          XValues.MajorUnitFont.Height = -17
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 7.500000000000000000
          XValues.MajorUnitTickMarkSize = 15.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clWindowText
          XValues.MinorUnitFont.Height = -17
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 7.500000000000000000
          XValues.MinorUnitTickMarkSize = 10.500000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clWindowText
          XValues.Title.Font.Height = -17
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis Series 1'
          YGrid.Visible = True
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clWindowText
          YValues.MajorUnitFont.Height = -17
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 7.500000000000000000
          YValues.MajorUnitTickMarkSize = 15.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clWindowText
          YValues.MinorUnitFont.Height = -17
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 7.500000000000000000
          YValues.MinorUnitTickMarkSize = 10.500000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clWindowText
          YValues.Title.Font.Height = -17
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis Series 1'
        end
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 65.000000000000000000
          Bar.Spacing = 30.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 300.000000000000000000
          Pie.Margins.Left = 15
          Pie.Margins.Top = 15
          Pie.Margins.Right = 15
          Pie.Margins.Bottom = 15
          Pie.SweepAngle = 360.000000000000000000
          Fill.Color = 5644279
          LegendText = 'Series 1'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clWindowText
          Labels.Font.Height = -17
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -15.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 5644279
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = 2822268
          Markers.Width = 15.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 22.500000000000000000
          Offset3DY = 22.500000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 108.000000000000000000
              YValueSecond = 96.000000000000000000
              YValueVariable = 108.000000000000000000
              YValueLow = 59.000000000000000000
              YValueClose = 84.000000000000000000
              YValueHigh = 108.000000000000000000
              YValueOpen = 63.000000000000000000
              YValueMedian = 109.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 81.000000000000000000
              YValueSecond = 63.000000000000000000
              YValueVariable = 81.000000000000000000
              YValueLow = 35.000000000000000000
              YValueClose = 72.000000000000000000
              YValueHigh = 81.000000000000000000
              YValueOpen = 46.000000000000000000
              YValueMedian = 81.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 47.000000000000000000
              YValueSecond = 29.000000000000000000
              YValueVariable = 47.000000000000000000
              YValueLow = 16.000000000000000000
              YValueClose = 32.000000000000000000
              YValueHigh = 47.000000000000000000
              YValueOpen = 41.000000000000000000
              YValueMedian = 49.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 30.000000000000000000
              YValueSecond = 18.000000000000000000
              YValueVariable = 30.000000000000000000
              YValueLow = 9.000000000000000000
              YValueClose = 27.000000000000000000
              YValueHigh = 30.000000000000000000
              YValueOpen = 18.000000000000000000
              YValueMedian = 26.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 69.000000000000000000
              YValueSecond = 52.000000000000000000
              YValueVariable = 69.000000000000000000
              YValueLow = 34.000000000000000000
              YValueClose = 49.000000000000000000
              YValueHigh = 69.000000000000000000
              YValueOpen = 34.000000000000000000
              YValueMedian = 69.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 115.000000000000000000
              YValueSecond = 97.000000000000000000
              YValueVariable = 115.000000000000000000
              YValueLow = 51.000000000000000000
              YValueClose = 57.000000000000000000
              YValueHigh = 115.000000000000000000
              YValueOpen = 70.000000000000000000
              YValueMedian = 119.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 57.000000000000000000
              YValueSecond = 39.000000000000000000
              YValueVariable = 57.000000000000000000
              YValueLow = 17.000000000000000000
              YValueClose = 54.000000000000000000
              YValueHigh = 57.000000000000000000
              YValueOpen = 50.000000000000000000
              YValueMedian = 59.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 75.000000000000000000
              YValueSecond = 63.000000000000000000
              YValueVariable = 75.000000000000000000
              YValueLow = 37.000000000000000000
              YValueClose = 65.000000000000000000
              YValueHigh = 75.000000000000000000
              YValueOpen = 67.000000000000000000
              YValueMedian = 74.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 36.000000000000000000
              YValueSecond = 24.000000000000000000
              YValueVariable = 36.000000000000000000
              YValueLow = 11.000000000000000000
              YValueClose = 15.000000000000000000
              YValueHigh = 36.000000000000000000
              YValueOpen = 23.000000000000000000
              YValueMedian = 31.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 83.000000000000000000
              YValueSecond = 72.000000000000000000
              YValueVariable = 83.000000000000000000
              YValueLow = 47.000000000000000000
              YValueClose = 68.000000000000000000
              YValueHigh = 83.000000000000000000
              YValueOpen = 77.000000000000000000
              YValueMedian = 87.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 77.000000000000000000
              YValueSecond = 64.000000000000000000
              YValueVariable = 77.000000000000000000
              YValueLow = 38.000000000000000000
              YValueClose = 46.000000000000000000
              YValueHigh = 77.000000000000000000
              YValueOpen = 48.000000000000000000
              YValueMedian = 77.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -17
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -15.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 2822268
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clWindowText
          XValues.MajorUnitFont.Height = -17
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 7.500000000000000000
          XValues.MajorUnitTickMarkSize = 15.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clWindowText
          XValues.MinorUnitFont.Height = -17
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 7.500000000000000000
          XValues.MinorUnitTickMarkSize = 10.500000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clWindowText
          XValues.Title.Font.Height = -17
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis Series 2'
          XValues.Positions = []
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clWindowText
          YValues.MajorUnitFont.Height = -17
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 7.500000000000000000
          YValues.MajorUnitTickMarkSize = 15.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clWindowText
          YValues.MinorUnitFont.Height = -17
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 7.500000000000000000
          YValues.MinorUnitTickMarkSize = 10.500000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clWindowText
          YValues.Title.Font.Height = -17
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis Series 2'
          YValues.Positions = []
        end>
      Title.Fill.Kind = gfkNone
      Title.Fill.Color = 16775416
      Title.Stroke.Color = clGray
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clWindowText
      Title.Font.Height = -17
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Title.Height = 52.500000000000000000
      Title.TextMargins.Left = 5
      Title.TextMargins.Top = 5
      Title.TextMargins.Right = 5
      Title.TextMargins.Bottom = 5
      Title.Text = 'TMS FNC Chart'
      XAxis.Fill.Kind = gfkNone
      XAxis.Fill.Color = 16775416
      XAxis.Stroke.Color = clGray
      XAxis.Height = 52.500000000000000000
      YAxis.Fill.Kind = gfkNone
      YAxis.Fill.Color = 16775416
      YAxis.Stroke.Color = clGray
      YAxis.Width = 52.500000000000000000
      DefaultLoadOptions.XValuesFormatString = '%.0f'
      DefaultLoadOptions.YValuesFormatString = '%.2f'
      OnJSONAddSeries = TMSFNCBarChart1JSONAddSeries
      OnJSONAddPoint = TMSFNCBarChart1JSONAddPoint
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 953
    end
    object Memo1: TMemo
      Left = 888
      Top = 1
      Width = 355
      Height = 613
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      TabOrder = 1
    end
  end
end

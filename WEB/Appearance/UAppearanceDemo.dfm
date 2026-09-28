object Form1: TForm1
  Width = 1349
  Height = 789
  Caption = 'Chart Appearance Demo'
  Color = clBtnFace
  OnCreate = FormCreate
  object Panel1: TWebPanel
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 1309
    Height = 749
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Align = alClient
    BorderColor = clSilver
    BorderStyle = bsSingle
    Caption = 'Panel1'
    ExplicitWidth = 600
    ExplicitHeight = 440
    object Panel2: TWebPanel
      Left = 884
      Top = 0
      Width = 425
      Height = 749
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      Align = alRight
      BorderColor = clSilver
      BorderStyle = bsSingle
      ExplicitLeft = 175
      ExplicitHeight = 440
      object Label1: TWebLabel
        Left = 20
        Top = 20
        Width = 51
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Color:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        HeightPercent = 100.000000000000000000
        ParentFont = False
        WidthPercent = 100.000000000000000000
      end
      object SchemeLbl: TWebLabel
        Left = 40
        Top = 55
        Width = 66
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Scheme:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object ColorLbl: TWebLabel
        Left = 40
        Top = 103
        Width = 85
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Chromatic:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object Label3: TWebLabel
        Left = 20
        Top = 268
        Width = 43
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Font:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        HeightPercent = 100.000000000000000000
        ParentFont = False
        WidthPercent = 100.000000000000000000
      end
      object Label4: TWebLabel
        Left = 40
        Top = 303
        Width = 51
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Name:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object Label5: TWebLabel
        Left = 40
        Top = 351
        Width = 47
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Color:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object Label2: TWebLabel
        Left = 40
        Top = 515
        Width = 35
        Height = 25
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Caption = 'Size:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object Label6: TWebLabel
        Left = 40
        Top = 568
        Width = 44
        Height = 25
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Caption = 'Scale:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object Label7: TWebLabel
        Left = 40
        Top = 624
        Width = 41
        Height = 25
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 8
        Margins.Bottom = 8
        Caption = 'Style:'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
      object SchemeComboBox: TWebComboBox
        Left = 156
        Top = 52
        Width = 230
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        Text = 'Color List'
        WidthPercent = 100.000000000000000000
        OnChange = SchemeComboBoxChange
        ItemIndex = 0
        Items.Strings = (
          'Color List'
          'Excel Colors'
          'Monochromatic color')
      end
      object NameComboBox: TWebComboBox
        Left = 156
        Top = 300
        Width = 230
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        TabOrder = 2
        WidthPercent = 100.000000000000000000
        OnChange = NameComboBoxChange
        ItemIndex = -1
      end
      object BoldCB: TCheckBox
        Left = 156
        Top = 625
        Width = 146
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Bold'
        TabOrder = 2
        OnClick = BoldCBClick
      end
      object UnderlineCB: TCheckBox
        Left = 156
        Top = 661
        Width = 146
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Underline'
        TabOrder = 3
        OnClick = UnderlineCBClick
      end
      object ItalicCB: TCheckBox
        Left = 156
        Top = 697
        Width = 146
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Italic'
        TabOrder = 4
        OnClick = ItalicCBClick
      end
      object ChromColBox: TWebColorPicker
        Left = 152
        Top = 95
        Width = 233
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        ChildOrder = 17
        Color = clWhite
        Role = ''
        OnSelect = ChromColBoxSelect
      end
      object FontColBox: TWebColorPicker
        Left = 160
        Top = 351
        Width = 225
        Height = 34
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        ChildOrder = 17
        Color = clWhite
        Role = ''
        OnSelect = FontColBoxSelect
      end
      object SizeTB: TWebTrackBar
        Left = 156
        Top = 510
        Width = 229
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        ChildOrder = 16
        Max = 30
        Min = 0
        Position = 0
        Role = ''
        OnChange = SizeTBChange
      end
      object ScaleTB: TWebTrackBar
        Left = 156
        Top = 568
        Width = 229
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        ChildOrder = 16
        Max = 350
        Min = 25
        Position = 0
        Role = ''
        OnChange = ScaleTBChange
      end
    end
    object TMSFNCChart1: TTMSFNCChart
      Left = 0
      Top = 0
      Width = 884
      Height = 749
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
      Appearance.MonochromeColor = clBackground
      ClickMargin = 15.000000000000000000
      Legend.Fill.Color = 16775416
      Legend.Stroke.Color = clGray
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clBlack
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
          Labels.Font.Color = clBlack
          Labels.Font.Height = -17
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -15.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 16105559
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = 8020012
          Markers.Visible = True
          Markers.Width = 15.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 22.500000000000000000
          Offset3DY = 22.500000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 96.000000000000000000
              YValueSecond = 86.000000000000000000
              YValueVariable = 96.000000000000000000
              YValueLow = 29.000000000000000000
              YValueClose = 58.000000000000000000
              YValueHigh = 96.000000000000000000
              YValueOpen = 73.000000000000000000
              YValueMedian = 98.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 73.000000000000000000
              YValueSecond = 63.000000000000000000
              YValueVariable = 73.000000000000000000
              YValueLow = 20.000000000000000000
              YValueClose = 60.000000000000000000
              YValueHigh = 73.000000000000000000
              YValueOpen = 59.000000000000000000
              YValueMedian = 70.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 95.000000000000000000
              YValueSecond = 78.000000000000000000
              YValueVariable = 95.000000000000000000
              YValueLow = 43.000000000000000000
              YValueClose = 76.000000000000000000
              YValueHigh = 95.000000000000000000
              YValueOpen = 63.000000000000000000
              YValueMedian = 97.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 68.000000000000000000
              YValueSecond = 54.000000000000000000
              YValueVariable = 68.000000000000000000
              YValueLow = 21.000000000000000000
              YValueClose = 48.000000000000000000
              YValueHigh = 68.000000000000000000
              YValueOpen = 35.000000000000000000
              YValueMedian = 65.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 84.000000000000000000
              YValueSecond = 72.000000000000000000
              YValueVariable = 84.000000000000000000
              YValueLow = 33.000000000000000000
              YValueClose = 50.000000000000000000
              YValueHigh = 84.000000000000000000
              YValueOpen = 36.000000000000000000
              YValueMedian = 85.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 54.000000000000000000
              YValueSecond = 40.000000000000000000
              YValueVariable = 54.000000000000000000
              YValueLow = 15.000000000000000000
              YValueClose = 37.000000000000000000
              YValueHigh = 54.000000000000000000
              YValueOpen = 37.000000000000000000
              YValueMedian = 57.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 40.000000000000000000
              YValueSecond = 27.000000000000000000
              YValueVariable = 40.000000000000000000
              YValueLow = 18.000000000000000000
              YValueClose = 27.000000000000000000
              YValueHigh = 40.000000000000000000
              YValueOpen = 28.000000000000000000
              YValueMedian = 40.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 65.000000000000000000
              YValueSecond = 50.000000000000000000
              YValueVariable = 65.000000000000000000
              YValueLow = 32.000000000000000000
              YValueClose = 52.000000000000000000
              YValueHigh = 65.000000000000000000
              YValueOpen = 47.000000000000000000
              YValueMedian = 63.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 62.000000000000000000
              YValueSecond = 51.000000000000000000
              YValueVariable = 62.000000000000000000
              YValueLow = 16.000000000000000000
              YValueClose = 32.000000000000000000
              YValueHigh = 62.000000000000000000
              YValueOpen = 23.000000000000000000
              YValueMedian = 58.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 123.000000000000000000
              YValueSecond = 113.000000000000000000
              YValueVariable = 123.000000000000000000
              YValueLow = 54.000000000000000000
              YValueClose = 62.000000000000000000
              YValueHigh = 123.000000000000000000
              YValueOpen = 98.000000000000000000
              YValueMedian = 124.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 30.000000000000000000
              YValueSecond = 11.000000000000000000
              YValueVariable = 30.000000000000000000
              YValueLow = 4.000000000000000000
              YValueClose = 5.000000000000000000
              YValueHigh = 30.000000000000000000
              YValueOpen = 26.000000000000000000
              YValueMedian = 28.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -17
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -15.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 16105559
          XGrid.Visible = True
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clBlack
          XValues.MajorUnitFont.Height = -17
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 7.500000000000000000
          XValues.MajorUnitTickMarkSize = 15.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clBlack
          XValues.MinorUnitFont.Height = -17
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 7.500000000000000000
          XValues.MinorUnitTickMarkSize = 10.500000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clBlack
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
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -17
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 7.500000000000000000
          YValues.MajorUnitTickMarkSize = 15.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -17
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 7.500000000000000000
          YValues.MinorUnitTickMarkSize = 10.500000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clBlack
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
          Labels.Font.Color = clBlack
          Labels.Font.Height = -17
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -15.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 5644279
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = 2822268
          Markers.Visible = True
          Markers.Width = 15.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 22.500000000000000000
          Offset3DY = 22.500000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 46.000000000000000000
              YValueSecond = 27.000000000000000000
              YValueVariable = 46.000000000000000000
              YValueLow = 11.000000000000000000
              YValueClose = 14.000000000000000000
              YValueHigh = 46.000000000000000000
              YValueOpen = 44.000000000000000000
              YValueMedian = 50.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 73.000000000000000000
              YValueSecond = 54.000000000000000000
              YValueVariable = 73.000000000000000000
              YValueLow = 35.000000000000000000
              YValueClose = 35.000000000000000000
              YValueHigh = 73.000000000000000000
              YValueOpen = 72.000000000000000000
              YValueMedian = 73.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 97.000000000000000000
              YValueSecond = 81.000000000000000000
              YValueVariable = 97.000000000000000000
              YValueLow = 52.000000000000000000
              YValueClose = 94.000000000000000000
              YValueHigh = 97.000000000000000000
              YValueOpen = 55.000000000000000000
              YValueMedian = 99.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 97.000000000000000000
              YValueSecond = 78.000000000000000000
              YValueVariable = 97.000000000000000000
              YValueLow = 50.000000000000000000
              YValueClose = 50.000000000000000000
              YValueHigh = 97.000000000000000000
              YValueOpen = 80.000000000000000000
              YValueMedian = 101.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 83.000000000000000000
              YValueSecond = 73.000000000000000000
              YValueVariable = 83.000000000000000000
              YValueLow = 46.000000000000000000
              YValueClose = 54.000000000000000000
              YValueHigh = 83.000000000000000000
              YValueOpen = 56.000000000000000000
              YValueMedian = 82.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 43.000000000000000000
              YValueSecond = 33.000000000000000000
              YValueVariable = 43.000000000000000000
              YValueLow = 9.000000000000000000
              YValueClose = 18.000000000000000000
              YValueHigh = 43.000000000000000000
              YValueOpen = 25.000000000000000000
              YValueMedian = 45.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 25.000000000000000000
              YValueSecond = 8.000000000000000000
              YValueVariable = 25.000000000000000000
              YValueLow = 1.000000000000000000
              YValueClose = 4.000000000000000000
              YValueHigh = 25.000000000000000000
              YValueOpen = 3.000000000000000000
              YValueMedian = 21.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 49.000000000000000000
              YValueSecond = 39.000000000000000000
              YValueVariable = 49.000000000000000000
              YValueLow = 19.000000000000000000
              YValueClose = 19.000000000000000000
              YValueHigh = 49.000000000000000000
              YValueOpen = 33.000000000000000000
              YValueMedian = 47.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 34.000000000000000000
              YValueSecond = 22.000000000000000000
              YValueVariable = 34.000000000000000000
              YValueLow = 11.000000000000000000
              YValueClose = 21.000000000000000000
              YValueHigh = 34.000000000000000000
              YValueOpen = 11.000000000000000000
              YValueMedian = 34.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 46.000000000000000000
              YValueSecond = 30.000000000000000000
              YValueVariable = 46.000000000000000000
              YValueLow = 14.000000000000000000
              YValueClose = 15.000000000000000000
              YValueHigh = 46.000000000000000000
              YValueOpen = 17.000000000000000000
              YValueMedian = 48.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 46.000000000000000000
              YValueSecond = 34.000000000000000000
              YValueVariable = 46.000000000000000000
              YValueLow = 21.000000000000000000
              YValueClose = 23.000000000000000000
              YValueHigh = 46.000000000000000000
              YValueOpen = 40.000000000000000000
              YValueMedian = 46.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -17
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -15.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 5644279
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clBlack
          XValues.MajorUnitFont.Height = -17
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 7.500000000000000000
          XValues.MajorUnitTickMarkSize = 15.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clBlack
          XValues.MinorUnitFont.Height = -17
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 7.500000000000000000
          XValues.MinorUnitTickMarkSize = 10.500000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clBlack
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
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -17
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 7.500000000000000000
          YValues.MajorUnitTickMarkSize = 15.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -17
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 7.500000000000000000
          YValues.MinorUnitTickMarkSize = 10.500000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clBlack
          YValues.Title.Font.Height = -17
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis Series 2'
          YValues.Positions = []
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
          Fill.Color = 7936771
          LegendText = 'Series 2'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clBlack
          Labels.Font.Height = -17
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -15.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 7936771
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = 3935746
          Markers.Visible = True
          Markers.Width = 15.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Offset3DX = 22.500000000000000000
          Offset3DY = 22.500000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 112.000000000000000000
              YValueSecond = 94.000000000000000000
              YValueVariable = 112.000000000000000000
              YValueLow = 63.000000000000000000
              YValueClose = 90.000000000000000000
              YValueHigh = 112.000000000000000000
              YValueOpen = 71.000000000000000000
              YValueMedian = 109.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 86.000000000000000000
              YValueSecond = 67.000000000000000000
              YValueVariable = 86.000000000000000000
              YValueLow = 40.000000000000000000
              YValueClose = 74.000000000000000000
              YValueHigh = 86.000000000000000000
              YValueOpen = 85.000000000000000000
              YValueMedian = 89.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 55.000000000000000000
              YValueSecond = 37.000000000000000000
              YValueVariable = 55.000000000000000000
              YValueLow = 25.000000000000000000
              YValueClose = 33.000000000000000000
              YValueHigh = 55.000000000000000000
              YValueOpen = 37.000000000000000000
              YValueMedian = 55.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 109.000000000000000000
              YValueSecond = 93.000000000000000000
              YValueVariable = 109.000000000000000000
              YValueLow = 38.000000000000000000
              YValueClose = 107.000000000000000000
              YValueHigh = 109.000000000000000000
              YValueOpen = 67.000000000000000000
              YValueMedian = 105.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 63.000000000000000000
              YValueSecond = 49.000000000000000000
              YValueVariable = 63.000000000000000000
              YValueLow = 25.000000000000000000
              YValueClose = 52.000000000000000000
              YValueHigh = 63.000000000000000000
              YValueOpen = 57.000000000000000000
              YValueMedian = 60.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 43.000000000000000000
              YValueSecond = 27.000000000000000000
              YValueVariable = 43.000000000000000000
              YValueLow = 15.000000000000000000
              YValueClose = 38.000000000000000000
              YValueHigh = 43.000000000000000000
              YValueOpen = 19.000000000000000000
              YValueMedian = 47.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 52.000000000000000000
              YValueSecond = 39.000000000000000000
              YValueVariable = 52.000000000000000000
              YValueLow = 25.000000000000000000
              YValueClose = 33.000000000000000000
              YValueHigh = 52.000000000000000000
              YValueOpen = 44.000000000000000000
              YValueMedian = 50.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 114.000000000000000000
              YValueSecond = 98.000000000000000000
              YValueVariable = 114.000000000000000000
              YValueLow = 65.000000000000000000
              YValueClose = 66.000000000000000000
              YValueHigh = 114.000000000000000000
              YValueOpen = 73.000000000000000000
              YValueMedian = 115.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 47.000000000000000000
              YValueSecond = 33.000000000000000000
              YValueVariable = 47.000000000000000000
              YValueLow = 18.000000000000000000
              YValueClose = 30.000000000000000000
              YValueHigh = 47.000000000000000000
              YValueOpen = 34.000000000000000000
              YValueMedian = 44.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 47.000000000000000000
              YValueSecond = 35.000000000000000000
              YValueVariable = 47.000000000000000000
              YValueLow = 18.000000000000000000
              YValueClose = 20.000000000000000000
              YValueHigh = 47.000000000000000000
              YValueOpen = 20.000000000000000000
              YValueMedian = 44.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 66.000000000000000000
              YValueSecond = 52.000000000000000000
              YValueVariable = 66.000000000000000000
              YValueLow = 30.000000000000000000
              YValueClose = 46.000000000000000000
              YValueHigh = 66.000000000000000000
              YValueOpen = 60.000000000000000000
              YValueMedian = 64.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -17
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -15.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 7936771
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clBlack
          XValues.MajorUnitFont.Height = -17
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 7.500000000000000000
          XValues.MajorUnitTickMarkSize = 15.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clBlack
          XValues.MinorUnitFont.Height = -17
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 7.500000000000000000
          XValues.MinorUnitTickMarkSize = 10.500000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clBlack
          XValues.Title.Font.Height = -17
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis Series 3'
          XValues.Positions = []
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -17
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 7.500000000000000000
          YValues.MajorUnitTickMarkSize = 15.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -17
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 7.500000000000000000
          YValues.MinorUnitTickMarkSize = 10.500000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clBlack
          YValues.Title.Font.Height = -17
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis Series 3'
          YValues.Positions = []
        end
        item
          AnimationFactor = 4.000000000000000000
          Bar.Width = 65.000000000000000000
          Bar.Spacing = 20.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 200.000000000000000000
          Pie.Margins.Left = 10
          Pie.Margins.Top = 10
          Pie.Margins.Right = 10
          Pie.Margins.Bottom = 10
          Pie.SweepAngle = 360.000000000000000000
          Fill.Color = 12275349
          LegendText = 'Series 3'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clBlack
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 12275349
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = 6170442
          Markers.Visible = True
          Markers.Width = 15.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 96.000000000000000000
              YValueSecond = 76.000000000000000000
              YValueVariable = 96.000000000000000000
              YValueLow = 76.000000000000000000
              YValueClose = 100.000000000000000000
              YValueHigh = 96.000000000000000000
              YValueOpen = 93.000000000000000000
              YValueMedian = 89.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 57.000000000000000000
              YValueSecond = 37.000000000000000000
              YValueVariable = 57.000000000000000000
              YValueLow = 37.000000000000000000
              YValueClose = 54.000000000000000000
              YValueHigh = 57.000000000000000000
              YValueOpen = 57.000000000000000000
              YValueMedian = 60.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 82.000000000000000000
              YValueSecond = 62.000000000000000000
              YValueVariable = 82.000000000000000000
              YValueLow = 62.000000000000000000
              YValueClose = 83.000000000000000000
              YValueHigh = 82.000000000000000000
              YValueOpen = 78.000000000000000000
              YValueMedian = 78.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 34.000000000000000000
              YValueSecond = 14.000000000000000000
              YValueVariable = 34.000000000000000000
              YValueLow = 14.000000000000000000
              YValueClose = 25.000000000000000000
              YValueHigh = 34.000000000000000000
              YValueOpen = 36.000000000000000000
              YValueMedian = 38.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 56.000000000000000000
              YValueSecond = 36.000000000000000000
              YValueVariable = 56.000000000000000000
              YValueLow = 36.000000000000000000
              YValueClose = 65.000000000000000000
              YValueHigh = 56.000000000000000000
              YValueOpen = 57.000000000000000000
              YValueMedian = 60.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 11.000000000000000000
              YValueSecond = -9.000000000000000000
              YValueVariable = 11.000000000000000000
              YValueLow = -9.000000000000000000
              YValueClose = 13.000000000000000000
              YValueHigh = 11.000000000000000000
              YValueOpen = 6.000000000000000000
              YValueMedian = 8.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 75.000000000000000000
              YValueSecond = 55.000000000000000000
              YValueVariable = 75.000000000000000000
              YValueLow = 55.000000000000000000
              YValueClose = 84.000000000000000000
              YValueHigh = 75.000000000000000000
              YValueOpen = 74.000000000000000000
              YValueMedian = 78.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 21.000000000000000000
              YValueSecond = 1.000000000000000000
              YValueVariable = 21.000000000000000000
              YValueLow = 1.000000000000000000
              YValueClose = 31.000000000000000000
              YValueHigh = 21.000000000000000000
              YValueOpen = 24.000000000000000000
              YValueMedian = 20.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 76.000000000000000000
              YValueSecond = 56.000000000000000000
              YValueVariable = 76.000000000000000000
              YValueLow = 56.000000000000000000
              YValueClose = 67.000000000000000000
              YValueHigh = 76.000000000000000000
              YValueOpen = 80.000000000000000000
              YValueMedian = 80.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 64.000000000000000000
              YValueSecond = 44.000000000000000000
              YValueVariable = 64.000000000000000000
              YValueLow = 44.000000000000000000
              YValueClose = 69.000000000000000000
              YValueHigh = 64.000000000000000000
              YValueOpen = 65.000000000000000000
              YValueMedian = 64.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 55.000000000000000000
              YValueSecond = 35.000000000000000000
              YValueVariable = 55.000000000000000000
              YValueLow = 35.000000000000000000
              YValueClose = 57.000000000000000000
              YValueHigh = 55.000000000000000000
              YValueOpen = 51.000000000000000000
              YValueMedian = 51.000000000000000000
            end
            item
              Annotations = <>
              XValue = 11.000000000000000000
              YValue = 77.000000000000000000
              YValueSecond = 57.000000000000000000
              YValueVariable = 77.000000000000000000
              YValueLow = 57.000000000000000000
              YValueClose = 70.000000000000000000
              YValueHigh = 77.000000000000000000
              YValueOpen = 84.000000000000000000
              YValueMedian = 84.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 12275349
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clBlack
          XValues.MajorUnitFont.Height = -11
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 5.000000000000000000
          XValues.MajorUnitTickMarkSize = 10.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clBlack
          XValues.MinorUnitFont.Height = -11
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 5.000000000000000000
          XValues.MinorUnitTickMarkSize = 7.000000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clBlack
          XValues.Title.Font.Height = -11
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis'
          XValues.Positions = []
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -11
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 5.000000000000000000
          YValues.MajorUnitTickMarkSize = 10.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -11
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 5.000000000000000000
          YValues.MinorUnitTickMarkSize = 7.000000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clBlack
          YValues.Title.Font.Height = -11
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis'
          YValues.Positions = []
        end
        item
          AnimationFactor = 4.000000000000000000
          Bar.Width = 65.000000000000000000
          Bar.Spacing = 20.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 200.000000000000000000
          Pie.Margins.Left = 10
          Pie.Margins.Top = 10
          Pie.Margins.Right = 10
          Pie.Margins.Bottom = 10
          Pie.SweepAngle = 360.000000000000000000
          Fill.Color = 1296366
          LegendText = 'Series 4'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clBlack
          Labels.Font.Height = -11
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.2f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Stroke.Color = clGray
          Markers.Fill.Color = 1296366
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = 681079
          Markers.Visible = True
          Markers.Width = 15.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 79.000000000000000000
              YValueSecond = 59.000000000000000000
              YValueVariable = 79.000000000000000000
              YValueLow = 59.000000000000000000
              YValueClose = 80.000000000000000000
              YValueHigh = 79.000000000000000000
              YValueOpen = 72.000000000000000000
              YValueMedian = 73.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 35.000000000000000000
              YValueSecond = 15.000000000000000000
              YValueVariable = 35.000000000000000000
              YValueLow = 15.000000000000000000
              YValueClose = 42.000000000000000000
              YValueHigh = 35.000000000000000000
              YValueOpen = 39.000000000000000000
              YValueMedian = 36.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 30.000000000000000000
              YValueSecond = 10.000000000000000000
              YValueVariable = 30.000000000000000000
              YValueLow = 10.000000000000000000
              YValueClose = 36.000000000000000000
              YValueHigh = 30.000000000000000000
              YValueOpen = 21.000000000000000000
              YValueMedian = 19.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 83.000000000000000000
              YValueSecond = 63.000000000000000000
              YValueVariable = 83.000000000000000000
              YValueLow = 63.000000000000000000
              YValueClose = 89.000000000000000000
              YValueHigh = 83.000000000000000000
              YValueOpen = 75.000000000000000000
              YValueMedian = 74.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 77.000000000000000000
              YValueSecond = 57.000000000000000000
              YValueVariable = 77.000000000000000000
              YValueLow = 57.000000000000000000
              YValueClose = 85.000000000000000000
              YValueHigh = 77.000000000000000000
              YValueOpen = 81.000000000000000000
              YValueMedian = 77.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 8.000000000000000000
              YValueSecond = -12.000000000000000000
              YValueVariable = 8.000000000000000000
              YValueLow = -12.000000000000000000
              YValueClose = 10.000000000000000000
              YValueHigh = 8.000000000000000000
              YValueOpen = 5.000000000000000000
              YValueMedian = 1.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 83.000000000000000000
              YValueSecond = 63.000000000000000000
              YValueVariable = 83.000000000000000000
              YValueLow = 63.000000000000000000
              YValueClose = 79.000000000000000000
              YValueHigh = 83.000000000000000000
              YValueOpen = 84.000000000000000000
              YValueMedian = 88.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 24.000000000000000000
              YValueSecond = 4.000000000000000000
              YValueVariable = 24.000000000000000000
              YValueLow = 4.000000000000000000
              YValueClose = 26.000000000000000000
              YValueHigh = 24.000000000000000000
              YValueOpen = 25.000000000000000000
              YValueMedian = 28.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 41.000000000000000000
              YValueSecond = 21.000000000000000000
              YValueVariable = 41.000000000000000000
              YValueLow = 21.000000000000000000
              YValueClose = 46.000000000000000000
              YValueHigh = 41.000000000000000000
              YValueOpen = 31.000000000000000000
              YValueMedian = 29.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 8.000000000000000000
              YValueSecond = -12.000000000000000000
              YValueVariable = 8.000000000000000000
              YValueLow = -12.000000000000000000
              YValueClose = 18.000000000000000000
              YValueHigh = 8.000000000000000000
              YValueOpen = 2.000000000000000000
              YValueMedian = -1.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 41.000000000000000000
              YValueSecond = 21.000000000000000000
              YValueVariable = 41.000000000000000000
              YValueLow = 21.000000000000000000
              YValueClose = 44.000000000000000000
              YValueHigh = 41.000000000000000000
              YValueOpen = 44.000000000000000000
              YValueMedian = 42.000000000000000000
            end
            item
              Annotations = <>
              XValue = 11.000000000000000000
              YValue = 55.000000000000000000
              YValueSecond = 35.000000000000000000
              YValueVariable = 55.000000000000000000
              YValueLow = 35.000000000000000000
              YValueClose = 61.000000000000000000
              YValueHigh = 55.000000000000000000
              YValueOpen = 64.000000000000000000
              YValueMedian = 62.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -11
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 1296366
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clBlack
          XValues.MajorUnitFont.Height = -11
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 5.000000000000000000
          XValues.MajorUnitTickMarkSize = 10.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clBlack
          XValues.MinorUnitFont.Height = -11
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 5.000000000000000000
          XValues.MinorUnitTickMarkSize = 7.000000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clBlack
          XValues.Title.Font.Height = -11
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'X-Axis'
          XValues.Positions = []
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -11
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.2f'
          YValues.MajorUnitSpacing = 5.000000000000000000
          YValues.MajorUnitTickMarkSize = 10.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -11
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.2f'
          YValues.MinorUnitSpacing = 5.000000000000000000
          YValues.MinorUnitTickMarkSize = 7.000000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clBlack
          YValues.Title.Font.Height = -11
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Y-Axis'
          YValues.Positions = []
        end>
      Title.Fill.Kind = gfkNone
      Title.Fill.Color = 16775416
      Title.Stroke.Color = clGray
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
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
      DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 175
      ExplicitHeight = 440
    end
  end
end

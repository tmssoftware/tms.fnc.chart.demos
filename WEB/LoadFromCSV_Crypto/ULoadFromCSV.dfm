object Form1: TForm1
  Width = 951
  Height = 732
  Caption = 'Load From CSV Demo'
  Color = clBtnFace
  OnCreate = FormCreate
  object Panel1: TWebPanel
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 911
    Height = 85
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 0
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Align = alTop
    BorderColor = clSilver
    BorderStyle = bsSingle
    object Button1: TWebButton
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 200
      Height = 65
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Load Data'
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = Button1Click
    end
    object Button2: TWebButton
      AlignWithMargins = True
      Left = 230
      Top = 10
      Width = 200
      Height = 65
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Set Appearance'
      HeightPercent = 100.000000000000000000
      TabOrder = 1
      WidthPercent = 100.000000000000000000
      OnClick = Button2Click
    end
    object Button3: TWebButton
      AlignWithMargins = True
      Left = 450
      Top = 10
      Width = 200
      Height = 65
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Add Average'
      HeightPercent = 100.000000000000000000
      TabOrder = 2
      WidthPercent = 100.000000000000000000
      OnClick = Button3Click
    end
  end
  object Panel2: TWebPanel
    AlignWithMargins = True
    Left = 20
    Top = 125
    Width = 911
    Height = 587
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Align = alClient
    BorderColor = clSilver
    BorderStyle = bsSingle
    Caption = 'Panel2'
    object TMSFNCCandleStickChart1: TTMSFNCCandleStickChart
      Left = 0
      Top = 0
      Width = 911
      Height = 587
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
      Appearance.GlobalFont.Color = -1
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
          LegendText = 'Serie 0'
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
          MaxX = 20.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Mode = smStatistical
          Offset3DX = 22.500000000000000000
          Offset3DY = 22.500000000000000000
          Points = <
            item
              Annotations = <>
              YValue = 94.000000000000000000
              YValueSecond = 80.000000000000000000
              YValueVariable = 94.000000000000000000
              YValueLow = 38.000000000000000000
              YValueClose = 41.000000000000000000
              YValueHigh = 94.000000000000000000
              YValueOpen = 45.000000000000000000
              YValueMedian = 89.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              YValue = 120.000000000000000000
              YValueSecond = 105.000000000000000000
              YValueVariable = 120.000000000000000000
              YValueLow = 57.000000000000000000
              YValueClose = 74.000000000000000000
              YValueHigh = 120.000000000000000000
              YValueOpen = 73.000000000000000000
              YValueMedian = 120.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              YValue = 114.000000000000000000
              YValueSecond = 102.000000000000000000
              YValueVariable = 114.000000000000000000
              YValueLow = 50.000000000000000000
              YValueClose = 61.000000000000000000
              YValueHigh = 114.000000000000000000
              YValueOpen = 68.000000000000000000
              YValueMedian = 114.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              YValue = 34.000000000000000000
              YValueSecond = 16.000000000000000000
              YValueVariable = 34.000000000000000000
              YValueLow = 8.000000000000000000
              YValueClose = 30.000000000000000000
              YValueHigh = 34.000000000000000000
              YValueOpen = 29.000000000000000000
              YValueMedian = 32.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              YValue = 125.000000000000000000
              YValueSecond = 108.000000000000000000
              YValueVariable = 125.000000000000000000
              YValueLow = 67.000000000000000000
              YValueClose = 89.000000000000000000
              YValueHigh = 125.000000000000000000
              YValueOpen = 118.000000000000000000
              YValueMedian = 128.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              YValue = 78.000000000000000000
              YValueSecond = 65.000000000000000000
              YValueVariable = 78.000000000000000000
              YValueLow = 35.000000000000000000
              YValueClose = 62.000000000000000000
              YValueHigh = 78.000000000000000000
              YValueOpen = 71.000000000000000000
              YValueMedian = 79.000000000000000000
            end
            item
              Annotations = <>
              XValue = 6.000000000000000000
              YValue = 63.000000000000000000
              YValueSecond = 46.000000000000000000
              YValueVariable = 63.000000000000000000
              YValueLow = 29.000000000000000000
              YValueClose = 52.000000000000000000
              YValueHigh = 63.000000000000000000
              YValueOpen = 43.000000000000000000
              YValueMedian = 66.000000000000000000
            end
            item
              Annotations = <>
              XValue = 7.000000000000000000
              YValue = 90.000000000000000000
              YValueSecond = 71.000000000000000000
              YValueVariable = 90.000000000000000000
              YValueLow = 34.000000000000000000
              YValueClose = 86.000000000000000000
              YValueHigh = 90.000000000000000000
              YValueOpen = 61.000000000000000000
              YValueMedian = 90.000000000000000000
            end
            item
              Annotations = <>
              XValue = 8.000000000000000000
              YValue = 70.000000000000000000
              YValueSecond = 57.000000000000000000
              YValueVariable = 70.000000000000000000
              YValueLow = 26.000000000000000000
              YValueClose = 53.000000000000000000
              YValueHigh = 70.000000000000000000
              YValueOpen = 66.000000000000000000
              YValueMedian = 67.000000000000000000
            end
            item
              Annotations = <>
              XValue = 9.000000000000000000
              YValue = 119.000000000000000000
              YValueSecond = 102.000000000000000000
              YValueVariable = 119.000000000000000000
              YValueLow = 63.000000000000000000
              YValueClose = 104.000000000000000000
              YValueHigh = 119.000000000000000000
              YValueOpen = 75.000000000000000000
              YValueMedian = 121.000000000000000000
            end
            item
              Annotations = <>
              XValue = 10.000000000000000000
              YValue = 47.000000000000000000
              YValueSecond = 33.000000000000000000
              YValueVariable = 47.000000000000000000
              YValueLow = 19.000000000000000000
              YValueClose = 34.000000000000000000
              YValueHigh = 47.000000000000000000
              YValueOpen = 39.000000000000000000
              YValueMedian = 46.000000000000000000
            end
            item
              Annotations = <>
              XValue = 11.000000000000000000
              YValue = 40.000000000000000000
              YValueSecond = 24.000000000000000000
              YValueVariable = 40.000000000000000000
              YValueLow = 7.000000000000000000
              YValueClose = 32.000000000000000000
              YValueHigh = 40.000000000000000000
              YValueOpen = 9.000000000000000000
              YValueMedian = 44.000000000000000000
            end
            item
              Annotations = <>
              XValue = 12.000000000000000000
              YValue = 65.000000000000000000
              YValueSecond = 51.000000000000000000
              YValueVariable = 65.000000000000000000
              YValueLow = 18.000000000000000000
              YValueClose = 36.000000000000000000
              YValueHigh = 65.000000000000000000
              YValueOpen = 44.000000000000000000
              YValueMedian = 61.000000000000000000
            end
            item
              Annotations = <>
              XValue = 13.000000000000000000
              YValue = 78.000000000000000000
              YValueSecond = 59.000000000000000000
              YValueVariable = 78.000000000000000000
              YValueLow = 22.000000000000000000
              YValueClose = 28.000000000000000000
              YValueHigh = 78.000000000000000000
              YValueOpen = 38.000000000000000000
              YValueMedian = 78.000000000000000000
            end
            item
              Annotations = <>
              XValue = 14.000000000000000000
              YValue = 109.000000000000000000
              YValueSecond = 95.000000000000000000
              YValueVariable = 109.000000000000000000
              YValueLow = 49.000000000000000000
              YValueClose = 56.000000000000000000
              YValueHigh = 109.000000000000000000
              YValueOpen = 102.000000000000000000
              YValueMedian = 111.000000000000000000
            end
            item
              Annotations = <>
              XValue = 15.000000000000000000
              YValue = 82.000000000000000000
              YValueSecond = 68.000000000000000000
              YValueVariable = 82.000000000000000000
              YValueLow = 24.000000000000000000
              YValueClose = 81.000000000000000000
              YValueHigh = 82.000000000000000000
              YValueOpen = 38.000000000000000000
              YValueMedian = 84.000000000000000000
            end
            item
              Annotations = <>
              XValue = 16.000000000000000000
              YValue = 106.000000000000000000
              YValueSecond = 91.000000000000000000
              YValueVariable = 106.000000000000000000
              YValueLow = 42.000000000000000000
              YValueClose = 93.000000000000000000
              YValueHigh = 106.000000000000000000
              YValueOpen = 93.000000000000000000
              YValueMedian = 102.000000000000000000
            end
            item
              Annotations = <>
              XValue = 17.000000000000000000
              YValue = 25.000000000000000000
              YValueSecond = 6.000000000000000000
              YValueVariable = 25.000000000000000000
              YValueLow = 2.000000000000000000
              YValueClose = 4.000000000000000000
              YValueHigh = 25.000000000000000000
              YValueOpen = 23.000000000000000000
              YValueMedian = 24.000000000000000000
            end
            item
              Annotations = <>
              XValue = 18.000000000000000000
              YValue = 89.000000000000000000
              YValueSecond = 76.000000000000000000
              YValueVariable = 89.000000000000000000
              YValueLow = 38.000000000000000000
              YValueClose = 51.000000000000000000
              YValueHigh = 89.000000000000000000
              YValueOpen = 61.000000000000000000
              YValueMedian = 88.000000000000000000
            end
            item
              Annotations = <>
              XValue = 19.000000000000000000
              YValue = 80.000000000000000000
              YValueSecond = 61.000000000000000000
              YValueVariable = 80.000000000000000000
              YValueLow = 39.000000000000000000
              YValueClose = 51.000000000000000000
              YValueHigh = 80.000000000000000000
              YValueOpen = 44.000000000000000000
              YValueMedian = 80.000000000000000000
            end
            item
              Annotations = <>
              XValue = 20.000000000000000000
              YValue = 49.000000000000000000
              YValueSecond = 31.000000000000000000
              YValueVariable = 49.000000000000000000
              YValueLow = 16.000000000000000000
              YValueClose = 26.000000000000000000
              YValueHigh = 49.000000000000000000
              YValueOpen = 39.000000000000000000
              YValueMedian = 53.000000000000000000
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
          Stroke.Width = 2.000000000000000000
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
          XValues.Title.Text = 'X-Axis Serie 1'
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
          YValues.Title.Text = 'Y-Axis Serie 1'
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
      Title.Text = 'Terra Historical Data'
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
      OnBeforeDrawSerieMultiPoint = TMSFNCCandleStickChart1BeforeDrawSerieMultiPoint
      Align = alClient
      TabOrder = 0
    end
  end
end

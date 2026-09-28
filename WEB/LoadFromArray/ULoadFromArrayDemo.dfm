object Form1: TForm1
  Width = 975
  Height = 658
  Caption = 'Load From Array Demo'
  Color = clBtnFace
  OnCreate = FormCreate
  object Panel1: TWebPanel
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 935
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
      Caption = 'Load Series with Labels'
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
      Caption = 'Add Series'
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
      Caption = 'Load Multipoint Serie'
      HeightPercent = 100.000000000000000000
      TabOrder = 2
      WidthPercent = 100.000000000000000000
      OnClick = Button3Click
    end
    object Button4: TWebButton
      AlignWithMargins = True
      Left = 670
      Top = 10
      Width = 200
      Height = 65
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Append Multipoint'
      HeightPercent = 100.000000000000000000
      TabOrder = 3
      WidthPercent = 100.000000000000000000
      OnClick = Button4Click
    end
  end
  object Panel2: TWebPanel
    AlignWithMargins = True
    Left = 20
    Top = 125
    Width = 935
    Height = 513
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
    object TMSFNCBarChart1: TTMSFNCBarChart
      Left = 0
      Top = 0
      Width = 935
      Height = 513
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
          Mode = smStatistical
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
          Mode = smStatistical
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
      DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
      Align = alClient
      TabOrder = 0
    end
  end
end

object Form1166: TForm1166
  Width = 1200
  Height = 842
  Caption = 'TMS FNC Chart Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Tahoma'
  Font.Style = []
  FormContainer = 'appcontent'
  ParentFont = False
  OnCreate = FormCreate
  object Label1: TWebLabel
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 1184
    Height = 21
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 5
    Align = alTop
    Caption = 'Hover the series area to view the crosshair'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    HeightPercent = 100.000000000000000000
    ParentFont = False
    WidthPercent = 100.000000000000000000
    ExplicitWidth = 319
  end
  object TMSFNCChart1: TTMSFNCChart
    AlignWithMargins = True
    Left = 306
    Top = 42
    Width = 886
    Height = 792
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
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
    ClickMargin = 22.500000000000000000
    Legend.Fill.Color = 16775416
    Legend.Stroke.Color = clGray
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clWindowText
    Legend.Font.Height = -26
    Legend.Font.Name = 'Segoe UI'
    Legend.Font.Style = []
    Legend.Left = 22.500000000000000000
    Legend.Top = 22.500000000000000000
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
        Bar.Spacing = 45.000000000000000000
        MultiPoint.Width = 65.000000000000000000
        Pie.Size = 450.000000000000000000
        Pie.Margins.Left = 23
        Pie.Margins.Top = 23
        Pie.Margins.Right = 23
        Pie.Margins.Bottom = 23
        Pie.SweepAngle = 360.000000000000000000
        ChartType = ctStackedBar
        Fill.Color = 16105559
        LegendText = 'Series 0'
        Labels.Fill.Color = 16775416
        Labels.Font.Charset = DEFAULT_CHARSET
        Labels.Font.Color = clWindowText
        Labels.Font.Height = -26
        Labels.Font.Name = 'Segoe UI'
        Labels.Font.Style = []
        Labels.Format = '%.2f'
        Labels.OffsetY = -22.500000000000000000
        Labels.Stroke.Color = clGray
        Markers.Fill.Color = 16105559
        Markers.Height = 22.500000000000000000
        Markers.Stroke.Color = 8020012
        Markers.Visible = True
        Markers.Width = 22.500000000000000000
        MaxX = 10.000000000000000000
        MaxY = 10.000000000000000000
        MaxYOffsetPercentage = 10.000000000000000000
        Offset3DX = 33.750000000000000000
        Offset3DY = 33.750000000000000000
        Points = <
          item
            Annotations = <>
            YValue = 69.000000000000000000
            YValueSecond = 51.000000000000000000
            YValueVariable = 69.000000000000000000
            YValueLow = 32.000000000000000000
            YValueClose = 41.000000000000000000
            YValueHigh = 69.000000000000000000
            YValueOpen = 37.000000000000000000
            YValueMedian = 73.000000000000000000
          end
          item
            Annotations = <>
            XValue = 1.000000000000000000
            YValue = 24.000000000000000000
            YValueSecond = 8.000000000000000000
            YValueVariable = 24.000000000000000000
            YValueLow = 1.000000000000000000
            YValueClose = 9.000000000000000000
            YValueHigh = 24.000000000000000000
            YValueOpen = 6.000000000000000000
            YValueMedian = 20.000000000000000000
          end
          item
            Annotations = <>
            XValue = 2.000000000000000000
            YValue = 42.000000000000000000
            YValueSecond = 26.000000000000000000
            YValueVariable = 42.000000000000000000
            YValueLow = 13.000000000000000000
            YValueClose = 39.000000000000000000
            YValueHigh = 42.000000000000000000
            YValueOpen = 40.000000000000000000
            YValueMedian = 46.000000000000000000
          end
          item
            Annotations = <>
            XValue = 3.000000000000000000
            YValue = 95.000000000000000000
            YValueSecond = 79.000000000000000000
            YValueVariable = 95.000000000000000000
            YValueLow = 38.000000000000000000
            YValueClose = 82.000000000000000000
            YValueHigh = 95.000000000000000000
            YValueOpen = 87.000000000000000000
            YValueMedian = 91.000000000000000000
          end
          item
            Annotations = <>
            XValue = 4.000000000000000000
            YValue = 40.000000000000000000
            YValueSecond = 22.000000000000000000
            YValueVariable = 40.000000000000000000
            YValueLow = 16.000000000000000000
            YValueClose = 18.000000000000000000
            YValueHigh = 40.000000000000000000
            YValueOpen = 18.000000000000000000
            YValueMedian = 44.000000000000000000
          end
          item
            Annotations = <>
            XValue = 5.000000000000000000
            YValue = 74.000000000000000000
            YValueSecond = 59.000000000000000000
            YValueVariable = 74.000000000000000000
            YValueLow = 28.000000000000000000
            YValueClose = 30.000000000000000000
            YValueHigh = 74.000000000000000000
            YValueOpen = 46.000000000000000000
            YValueMedian = 78.000000000000000000
          end
          item
            Annotations = <>
            XValue = 6.000000000000000000
            YValue = 127.000000000000000000
            YValueSecond = 108.000000000000000000
            YValueVariable = 127.000000000000000000
            YValueLow = 75.000000000000000000
            YValueClose = 91.000000000000000000
            YValueHigh = 127.000000000000000000
            YValueOpen = 91.000000000000000000
            YValueMedian = 130.000000000000000000
          end
          item
            Annotations = <>
            XValue = 7.000000000000000000
            YValue = 71.000000000000000000
            YValueSecond = 59.000000000000000000
            YValueVariable = 71.000000000000000000
            YValueLow = 21.000000000000000000
            YValueClose = 40.000000000000000000
            YValueHigh = 71.000000000000000000
            YValueOpen = 58.000000000000000000
            YValueMedian = 67.000000000000000000
          end
          item
            Annotations = <>
            XValue = 8.000000000000000000
            YValue = 21.000000000000000000
            YValueSecond = 8.000000000000000000
            YValueVariable = 21.000000000000000000
            YValueLow = 1.000000000000000000
            YValueClose = 20.000000000000000000
            YValueHigh = 21.000000000000000000
            YValueOpen = 16.000000000000000000
            YValueMedian = 20.000000000000000000
          end
          item
            Annotations = <>
            XValue = 9.000000000000000000
            YValue = 20.000000000000000000
            YValueSecond = 3.000000000000000000
            YValueVariable = 20.000000000000000000
            YValueLow = 1.000000000000000000
            YValueClose = 4.000000000000000000
            YValueHigh = 20.000000000000000000
            YValueOpen = 1.000000000000000000
            YValueMedian = 18.000000000000000000
          end
          item
            Annotations = <>
            XValue = 10.000000000000000000
            YValue = 38.000000000000000000
            YValueSecond = 19.000000000000000000
            YValueVariable = 38.000000000000000000
            YValueLow = 9.000000000000000000
            YValueClose = 14.000000000000000000
            YValueHigh = 38.000000000000000000
            YValueOpen = 10.000000000000000000
            YValueMedian = 36.000000000000000000
          end>
        Legend.Fill.Color = 16775416
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clWindowText
        Legend.Font.Height = -26
        Legend.Font.Name = 'Segoe UI'
        Legend.Font.Style = []
        Legend.Left = -22.500000000000000000
        Legend.Stroke.Color = clGray
        Stroke.Color = 16105559
        XGrid.Visible = True
        XValues.MajorUnit = 1.000000000000000000
        XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
        XValues.MajorUnitFont.Color = clWindowText
        XValues.MajorUnitFont.Height = -26
        XValues.MajorUnitFont.Name = 'Segoe UI'
        XValues.MajorUnitFont.Style = []
        XValues.MajorUnitFormat = '%.0f'
        XValues.MajorUnitSpacing = 11.250000000000000000
        XValues.MajorUnitTickMarkSize = 22.500000000000000000
        XValues.MajorUnitTickMarkColor = clSilver
        XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
        XValues.MinorUnitFont.Color = clWindowText
        XValues.MinorUnitFont.Height = -26
        XValues.MinorUnitFont.Name = 'Segoe UI'
        XValues.MinorUnitFont.Style = []
        XValues.MinorUnitFormat = '%.0f'
        XValues.MinorUnitSpacing = 11.250000000000000000
        XValues.MinorUnitTickMarkSize = 15.750000000000000000
        XValues.MinorUnitTickMarkColor = clSilver
        XValues.Title.Font.Charset = DEFAULT_CHARSET
        XValues.Title.Font.Color = clWindowText
        XValues.Title.Font.Height = -26
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
        YValues.MajorUnitFont.Height = -26
        YValues.MajorUnitFont.Name = 'Segoe UI'
        YValues.MajorUnitFont.Style = []
        YValues.MajorUnitFormat = '%.2f'
        YValues.MajorUnitSpacing = 11.250000000000000000
        YValues.MajorUnitTickMarkSize = 22.500000000000000000
        YValues.MajorUnitTickMarkColor = clSilver
        YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
        YValues.MinorUnitFont.Color = clWindowText
        YValues.MinorUnitFont.Height = -26
        YValues.MinorUnitFont.Name = 'Segoe UI'
        YValues.MinorUnitFont.Style = []
        YValues.MinorUnitFormat = '%.2f'
        YValues.MinorUnitSpacing = 11.250000000000000000
        YValues.MinorUnitTickMarkSize = 15.750000000000000000
        YValues.MinorUnitTickMarkColor = clSilver
        YValues.Title.Font.Charset = DEFAULT_CHARSET
        YValues.Title.Font.Color = clWindowText
        YValues.Title.Font.Height = -26
        YValues.Title.Font.Name = 'Segoe UI'
        YValues.Title.Font.Style = []
        YValues.Title.TextMargins.Left = 0
        YValues.Title.TextMargins.Top = 0
        YValues.Title.TextMargins.Right = 0
        YValues.Title.TextMargins.Bottom = 0
        YValues.Title.Text = 'Y-Axis Series 1'
        Crosshair.XTextStroke.Color = 16105559
        Crosshair.XTextFill.Color = 16105559
        Crosshair.XTextFont.Charset = DEFAULT_CHARSET
        Crosshair.XTextFont.Color = clWhite
        Crosshair.XTextFont.Height = -26
        Crosshair.XTextFont.Name = 'Segoe UI'
        Crosshair.XTextFont.Style = []
        Crosshair.YTextStroke.Color = 16105559
        Crosshair.YTextFill.Color = 16105559
        Crosshair.YTextFont.Charset = DEFAULT_CHARSET
        Crosshair.YTextFont.Color = clWhite
        Crosshair.YTextFont.Height = -26
        Crosshair.YTextFont.Name = 'Segoe UI'
        Crosshair.YTextFont.Style = []
        Crosshair.HorizontalLineStroke.Color = 16105559
        Crosshair.VerticalLineStroke.Color = 16105559
      end
      item
        AnimationFactor = 4.000000000000000000
        AutoYRange = arCommonZeroBased
        Bar.Width = 65.000000000000000000
        Bar.Spacing = 45.000000000000000000
        MultiPoint.Width = 65.000000000000000000
        Pie.Size = 450.000000000000000000
        Pie.Margins.Left = 23
        Pie.Margins.Top = 23
        Pie.Margins.Right = 23
        Pie.Margins.Bottom = 23
        Pie.SweepAngle = 360.000000000000000000
        ChartType = ctStackedBar
        Fill.Color = 5644279
        LegendText = 'Series 1'
        Labels.Fill.Color = 16775416
        Labels.Font.Charset = DEFAULT_CHARSET
        Labels.Font.Color = clWindowText
        Labels.Font.Height = -26
        Labels.Font.Name = 'Segoe UI'
        Labels.Font.Style = []
        Labels.Format = '%.2f'
        Labels.OffsetY = -22.500000000000000000
        Labels.Stroke.Color = clGray
        Markers.Fill.Color = 5644279
        Markers.Height = 22.500000000000000000
        Markers.Stroke.Color = 2822268
        Markers.Visible = True
        Markers.Width = 22.500000000000000000
        MaxX = 10.000000000000000000
        MaxY = 10.000000000000000000
        MaxYOffsetPercentage = 10.000000000000000000
        Offset3DX = 33.750000000000000000
        Offset3DY = 33.750000000000000000
        Points = <
          item
            Annotations = <>
            YValue = 47.000000000000000000
            YValueSecond = 34.000000000000000000
            YValueVariable = 47.000000000000000000
            YValueLow = 19.000000000000000000
            YValueClose = 44.000000000000000000
            YValueHigh = 47.000000000000000000
            YValueOpen = 46.000000000000000000
            YValueMedian = 45.000000000000000000
          end
          item
            Annotations = <>
            XValue = 1.000000000000000000
            YValue = 27.000000000000000000
            YValueSecond = 16.000000000000000000
            YValueVariable = 27.000000000000000000
            YValueLow = 9.000000000000000000
            YValueClose = 22.000000000000000000
            YValueHigh = 27.000000000000000000
            YValueOpen = 16.000000000000000000
            YValueMedian = 31.000000000000000000
          end
          item
            Annotations = <>
            XValue = 2.000000000000000000
            YValue = 53.000000000000000000
            YValueSecond = 40.000000000000000000
            YValueVariable = 53.000000000000000000
            YValueLow = 21.000000000000000000
            YValueClose = 44.000000000000000000
            YValueHigh = 53.000000000000000000
            YValueOpen = 50.000000000000000000
            YValueMedian = 48.000000000000000000
          end
          item
            Annotations = <>
            XValue = 3.000000000000000000
            YValue = 90.000000000000000000
            YValueSecond = 72.000000000000000000
            YValueVariable = 90.000000000000000000
            YValueLow = 27.000000000000000000
            YValueClose = 48.000000000000000000
            YValueHigh = 90.000000000000000000
            YValueOpen = 34.000000000000000000
            YValueMedian = 88.000000000000000000
          end
          item
            Annotations = <>
            XValue = 4.000000000000000000
            YValue = 111.000000000000000000
            YValueSecond = 100.000000000000000000
            YValueVariable = 111.000000000000000000
            YValueLow = 43.000000000000000000
            YValueClose = 99.000000000000000000
            YValueHigh = 111.000000000000000000
            YValueOpen = 84.000000000000000000
            YValueMedian = 111.000000000000000000
          end
          item
            Annotations = <>
            XValue = 5.000000000000000000
            YValue = 78.000000000000000000
            YValueSecond = 66.000000000000000000
            YValueVariable = 78.000000000000000000
            YValueLow = 44.000000000000000000
            YValueClose = 48.000000000000000000
            YValueHigh = 78.000000000000000000
            YValueOpen = 57.000000000000000000
            YValueMedian = 79.000000000000000000
          end
          item
            Annotations = <>
            XValue = 6.000000000000000000
            YValue = 116.000000000000000000
            YValueSecond = 98.000000000000000000
            YValueVariable = 116.000000000000000000
            YValueLow = 48.000000000000000000
            YValueClose = 67.000000000000000000
            YValueHigh = 116.000000000000000000
            YValueOpen = 79.000000000000000000
            YValueMedian = 114.000000000000000000
          end
          item
            Annotations = <>
            XValue = 7.000000000000000000
            YValue = 70.000000000000000000
            YValueSecond = 53.000000000000000000
            YValueVariable = 70.000000000000000000
            YValueLow = 39.000000000000000000
            YValueClose = 59.000000000000000000
            YValueHigh = 70.000000000000000000
            YValueOpen = 63.000000000000000000
            YValueMedian = 65.000000000000000000
          end
          item
            Annotations = <>
            XValue = 8.000000000000000000
            YValue = 32.000000000000000000
            YValueSecond = 20.000000000000000000
            YValueVariable = 32.000000000000000000
            YValueLow = 5.000000000000000000
            YValueClose = 28.000000000000000000
            YValueHigh = 32.000000000000000000
            YValueOpen = 31.000000000000000000
            YValueMedian = 36.000000000000000000
          end
          item
            Annotations = <>
            XValue = 9.000000000000000000
            YValue = 102.000000000000000000
            YValueSecond = 89.000000000000000000
            YValueVariable = 102.000000000000000000
            YValueLow = 55.000000000000000000
            YValueClose = 94.000000000000000000
            YValueHigh = 102.000000000000000000
            YValueOpen = 63.000000000000000000
            YValueMedian = 100.000000000000000000
          end
          item
            Annotations = <>
            XValue = 10.000000000000000000
            YValue = 106.000000000000000000
            YValueSecond = 89.000000000000000000
            YValueVariable = 106.000000000000000000
            YValueLow = 39.000000000000000000
            YValueClose = 104.000000000000000000
            YValueHigh = 106.000000000000000000
            YValueOpen = 85.000000000000000000
            YValueMedian = 106.000000000000000000
          end>
        Legend.Fill.Color = 16775416
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clWindowText
        Legend.Font.Height = -26
        Legend.Font.Name = 'Segoe UI'
        Legend.Font.Style = []
        Legend.Left = -22.500000000000000000
        Legend.Stroke.Color = clGray
        Stroke.Color = 5644279
        XValues.MajorUnit = 1.000000000000000000
        XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
        XValues.MajorUnitFont.Color = clWindowText
        XValues.MajorUnitFont.Height = -26
        XValues.MajorUnitFont.Name = 'Segoe UI'
        XValues.MajorUnitFont.Style = []
        XValues.MajorUnitFormat = '%.0f'
        XValues.MajorUnitSpacing = 11.250000000000000000
        XValues.MajorUnitTickMarkSize = 22.500000000000000000
        XValues.MajorUnitTickMarkColor = clSilver
        XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
        XValues.MinorUnitFont.Color = clWindowText
        XValues.MinorUnitFont.Height = -26
        XValues.MinorUnitFont.Name = 'Segoe UI'
        XValues.MinorUnitFont.Style = []
        XValues.MinorUnitFormat = '%.0f'
        XValues.MinorUnitSpacing = 11.250000000000000000
        XValues.MinorUnitTickMarkSize = 15.750000000000000000
        XValues.MinorUnitTickMarkColor = clSilver
        XValues.Title.Font.Charset = DEFAULT_CHARSET
        XValues.Title.Font.Color = clWindowText
        XValues.Title.Font.Height = -26
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
        YValues.MajorUnitFont.Height = -26
        YValues.MajorUnitFont.Name = 'Segoe UI'
        YValues.MajorUnitFont.Style = []
        YValues.MajorUnitFormat = '%.2f'
        YValues.MajorUnitSpacing = 11.250000000000000000
        YValues.MajorUnitTickMarkSize = 22.500000000000000000
        YValues.MajorUnitTickMarkColor = clSilver
        YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
        YValues.MinorUnitFont.Color = clWindowText
        YValues.MinorUnitFont.Height = -26
        YValues.MinorUnitFont.Name = 'Segoe UI'
        YValues.MinorUnitFont.Style = []
        YValues.MinorUnitFormat = '%.2f'
        YValues.MinorUnitSpacing = 11.250000000000000000
        YValues.MinorUnitTickMarkSize = 15.750000000000000000
        YValues.MinorUnitTickMarkColor = clSilver
        YValues.Title.Font.Charset = DEFAULT_CHARSET
        YValues.Title.Font.Color = clWindowText
        YValues.Title.Font.Height = -26
        YValues.Title.Font.Name = 'Segoe UI'
        YValues.Title.Font.Style = []
        YValues.Title.TextMargins.Left = 0
        YValues.Title.TextMargins.Top = 0
        YValues.Title.TextMargins.Right = 0
        YValues.Title.TextMargins.Bottom = 0
        YValues.Title.Text = 'Y-Axis Series 2'
        YValues.Positions = []
        Crosshair.XTextStroke.Color = 5644279
        Crosshair.XTextFill.Color = 5644279
        Crosshair.XTextFont.Charset = DEFAULT_CHARSET
        Crosshair.XTextFont.Color = clWhite
        Crosshair.XTextFont.Height = -26
        Crosshair.XTextFont.Name = 'Segoe UI'
        Crosshair.XTextFont.Style = []
        Crosshair.YTextStroke.Color = 5644279
        Crosshair.YTextFill.Color = 5644279
        Crosshair.YTextFont.Charset = DEFAULT_CHARSET
        Crosshair.YTextFont.Color = clWhite
        Crosshair.YTextFont.Height = -26
        Crosshair.YTextFont.Name = 'Segoe UI'
        Crosshair.YTextFont.Style = []
        Crosshair.HorizontalLineStroke.Color = 5644279
        Crosshair.VerticalLineStroke.Color = 5644279
      end>
    Title.Fill.Kind = gfkNone
    Title.Fill.Color = 16775416
    Title.Stroke.Color = clGray
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -26
    Title.Font.Name = 'Segoe UI'
    Title.Font.Style = []
    Title.Height = 78.750000000000000000
    Title.TextMargins.Left = 8
    Title.TextMargins.Top = 8
    Title.TextMargins.Right = 8
    Title.TextMargins.Bottom = 8
    Title.Text = 'TMS FNC Chart'
    XAxis.Fill.Kind = gfkNone
    XAxis.Fill.Color = 16775416
    XAxis.Stroke.Color = clGray
    XAxis.Height = 78.750000000000000000
    YAxis.Fill.Kind = gfkNone
    YAxis.Fill.Color = 16775416
    YAxis.Stroke.Color = clGray
    YAxis.Width = 78.750000000000000000
    DefaultLoadOptions.XValuesFormatString = '%.0f'
    DefaultLoadOptions.YValuesFormatString = '%.2f'
    DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
    OnGetSerieXAxisCrosshairText = TMSFNCChart1GetSerieXAxisCrosshairText
    Align = alClient
    TabOrder = 1
    ExplicitTop = 264
    ExplicitHeight = 570
  end
  object Panel1: TWebPanel
    AlignWithMargins = True
    Left = 8
    Top = 42
    Width = 282
    Height = 792
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Align = alLeft
    BorderColor = clSilver
    BorderStyle = bsSingle
    ExplicitTop = 264
    ExplicitHeight = 570
    object Label3: TWebLabel
      Left = 12
      Top = 12
      Width = 114
      Height = 21
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Show Crosshair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      WidthPercent = 100.000000000000000000
    end
    object Label2: TWebLabel
      Left = 12
      Top = 53
      Width = 127
      Height = 21
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Continuous Mode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      WidthPercent = 100.000000000000000000
    end
    object Label4: TWebLabel
      Left = 12
      Top = 96
      Width = 132
      Height = 21
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Point Based Mode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      WidthPercent = 100.000000000000000000
    end
    object Label5: TWebLabel
      Left = 12
      Top = 137
      Width = 94
      Height = 21
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Caption = 'Custom Text'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      WidthPercent = 100.000000000000000000
    end
    object CheckBox1: TWebCheckBox
      Left = 234
      Top = 11
      Width = 42
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Checked = True
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      WidthPercent = 100.000000000000000000
      OnClick = CheckBox1Click
    end
    object CheckBox2: TWebCheckBox
      Left = 234
      Top = 51
      Width = 42
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Checked = True
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      State = cbChecked
      TabOrder = 4
      WidthPercent = 100.000000000000000000
      OnClick = CheckBox2Click
    end
    object CheckBox3: TWebCheckBox
      Left = 234
      Top = 95
      Width = 42
      Height = 28
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      State = cbUnchecked
      TabOrder = 1
      WidthPercent = 100.000000000000000000
      OnClick = CheckBox3Click
    end
    object CheckBox4: TWebCheckBox
      Left = 234
      Top = 135
      Width = 42
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      State = cbUnchecked
      WidthPercent = 100.000000000000000000
    end
    object ComboBox1: TWebComboBox
      Left = 12
      Top = 176
      Width = 252
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      HeightPercent = 100.000000000000000000
      ParentFont = False
      TabOrder = 3
      Text = 'Stacked Bar'
      WidthPercent = 100.000000000000000000
      OnChange = ComboBox1Change
      ItemIndex = 2
      Items.Strings = (
        'Line'
        'Bar'
        'Stacked Bar'
        'Area'
        'Stacked Area')
    end
  end
end

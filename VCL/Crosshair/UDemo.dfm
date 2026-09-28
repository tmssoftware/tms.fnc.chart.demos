object Form1166: TForm1166
  Left = 0
  Top = 0
  Caption = 'TMS FNC Chart Demo'
  ClientHeight = 719
  ClientWidth = 1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 144
  TextHeight = 21
  object Label1: TLabel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1092
    Height = 21
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Align = alTop
    Caption = 'Hover the series area to view the crosshair'
    ExplicitWidth = 319
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 34
    Width = 188
    Height = 680
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 114
      Height = 21
      Caption = 'Show Crosshair'
    end
    object Label2: TLabel
      Left = 8
      Top = 35
      Width = 127
      Height = 21
      Caption = 'Continuous Mode'
    end
    object Label4: TLabel
      Left = 8
      Top = 64
      Width = 132
      Height = 21
      Caption = 'Point Based Mode'
    end
    object Label5: TLabel
      Left = 8
      Top = 91
      Width = 94
      Height = 21
      Caption = 'Custom Text'
    end
    object CheckBox1: TCheckBox
      Left = 156
      Top = 7
      Width = 28
      Height = 19
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 156
      Top = 34
      Width = 28
      Height = 19
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 156
      Top = 63
      Width = 28
      Height = 19
      TabOrder = 1
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 156
      Top = 90
      Width = 28
      Height = 19
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 117
      Width = 168
      Height = 29
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 3
      Text = 'Stacked Bar'
      OnChange = ComboBox1Change
      Items.Strings = (
        'Line'
        'Bar'
        'Stacked Bar'
        'Area'
        'Stacked Area')
    end
  end
  object TMSFNCChart1: TTMSFNCChart
    AlignWithMargins = True
    Left = 203
    Top = 34
    Width = 894
    Height = 680
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
    NativeCanvas = True
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
        ChartType = ctStackedBar
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
        Legend.Font.Height = -17
        Legend.Font.Name = 'Segoe UI'
        Legend.Font.Style = []
        Legend.Left = -15.000000000000000000
        Legend.Stroke.Color = clGray
        Stroke.Color = 16105559
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
        Crosshair.XTextStroke.Color = 16105559
        Crosshair.XTextFill.Color = 16105559
        Crosshair.XTextFont.Charset = DEFAULT_CHARSET
        Crosshair.XTextFont.Color = clWhite
        Crosshair.XTextFont.Height = -17
        Crosshair.XTextFont.Name = 'Segoe UI'
        Crosshair.XTextFont.Style = []
        Crosshair.YTextStroke.Color = 16105559
        Crosshair.YTextFill.Color = 16105559
        Crosshair.YTextFont.Charset = DEFAULT_CHARSET
        Crosshair.YTextFont.Color = clWhite
        Crosshair.YTextFont.Height = -17
        Crosshair.YTextFont.Name = 'Segoe UI'
        Crosshair.YTextFont.Style = []
        Crosshair.HorizontalLineStroke.Color = 16105559
        Crosshair.VerticalLineStroke.Color = 16105559
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
        ChartType = ctStackedBar
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
        Legend.Font.Height = -17
        Legend.Font.Name = 'Segoe UI'
        Legend.Font.Style = []
        Legend.Left = -15.000000000000000000
        Legend.Stroke.Color = clGray
        Stroke.Color = 5644279
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
        Crosshair.XTextStroke.Color = 5644279
        Crosshair.XTextFill.Color = 5644279
        Crosshair.XTextFont.Charset = DEFAULT_CHARSET
        Crosshair.XTextFont.Color = clWhite
        Crosshair.XTextFont.Height = -17
        Crosshair.XTextFont.Name = 'Segoe UI'
        Crosshair.XTextFont.Style = []
        Crosshair.YTextStroke.Color = 5644279
        Crosshair.YTextFill.Color = 5644279
        Crosshair.YTextFont.Charset = DEFAULT_CHARSET
        Crosshair.YTextFont.Color = clWhite
        Crosshair.YTextFont.Height = -17
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
    OnGetSerieXAxisCrosshairText = TMSFNCChart1GetSerieXAxisCrosshairText
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 156
    ExplicitTop = 120
    ExplicitWidth = 825
    ExplicitHeight = 525
  end
end

object Form1: TForm1
  Width = 800
  Height = 600
  Caption = 'Chart Orientation Demo'
  OnCreate = WebFormCreate
  object Panel1: TWebPanel
    Left = 20
    Top = 20
    Width = 760
    Height = 560
    ElementClassName = 'card'
    ChildOrder = 1
    TabOrder = 0
    object Panel2: TWebPanel
      Left = 560
      Top = 0
      Width = 200
      Height = 560
      ElementClassName = 'card'
      Align = alRight
      ChildOrder = 1
      TabOrder = 0
      object Label1: TWebLabel
        Left = 16
        Top = 16
        Width = 92
        Height = 21
        Caption = 'Orientation:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        HeightPercent = 100.000000000000000000
        ParentFont = False
        WidthPercent = 100.000000000000000000
      end
      object OrientationLbl: TWebLabel
        Left = 16
        Top = 48
        Width = 50
        Height = 21
        Caption = 'Layout:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        HeightPercent = 100.000000000000000000
        ParentFont = False
        WidthPercent = 100.000000000000000000
      end
      object OrientationComboBox: TWebComboBox
        Left = 16
        Top = 80
        Width = 160
        Height = 23
        HeightPercent = 100.000000000000000000
        Text = 'Vertical'
        WidthPercent = 100.000000000000000000
        OnChange = OrientationComboBoxChange
        ItemIndex = 0
        Items.Strings = (
          'Vertical'
          'Horizontal')
      end
    end
    object TMSFNCChart1: TTMSFNCChart
      Left = 0
      Top = 0
      Width = 560
      Height = 560
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
      Appearance.MonochromeColor = clSteelblue
      ClickMargin = 10.000000000000000000
      Legend.Fill.Kind = gfkSolid
      Legend.Stroke.Kind = gskSolid
      Legend.Font.Charset = DEFAULT_CHARSET
      Legend.Font.Color = clBlack
      Legend.Font.Height = -13
      Legend.Font.Name = 'Segoe UI'
      Legend.Font.Style = []
      Legend.Left = 10.000000000000000000
      Legend.Top = 10.000000000000000000
      SeriesMargins.Left = 0
      SeriesMargins.Top = 0
      SeriesMargins.Right = 0
      SeriesMargins.Bottom = 0
      Series = <
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 40.000000000000000000
          Bar.Spacing = 20.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 200.000000000000000000
          Pie.Margins.Left = 10
          Pie.Margins.Top = 10
          Pie.Margins.Right = 10
          Pie.Margins.Bottom = 10
          Pie.SweepAngle = 360.000000000000000000
          ChartType = ctBar
          Fill.Color = 16744448
          LegendText = 'Sales 2024'
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clBlack
          Labels.Font.Height = -13
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.0f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Visible = True
          Markers.Fill.Color = 16744448
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = clBlack
          Markers.Width = 10.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Mode = smStatistical
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              XValueText = 'Jan'
              YValue = 120.000000000000000000
              YValueSecond = 6.000000000000000000
              YValueVariable = 26.000000000000000000
              YValueLow = 6.000000000000000000
              YValueClose = 23.000000000000000000
              YValueHigh = 120.000000000000000000
              YValueOpen = 24.000000000000000000
              YValueMedian = 27.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              XValueText = 'Feb'
              YValue = 150.000000000000000000
              YValueSecond = 52.000000000000000000
              YValueVariable = 72.000000000000000000
              YValueLow = 52.000000000000000000
              YValueClose = 66.000000000000000000
              YValueHigh = 150.000000000000000000
              YValueOpen = 69.000000000000000000
              YValueMedian = 66.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              XValueText = 'Mar'
              YValue = 180.000000000000000000
              YValueSecond = 36.000000000000000000
              YValueVariable = 56.000000000000000000
              YValueLow = 36.000000000000000000
              YValueClose = 57.000000000000000000
              YValueHigh = 180.000000000000000000
              YValueOpen = 65.000000000000000000
              YValueMedian = 66.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              XValueText = 'Apr'
              YValue = 140.000000000000000000
              YValueSecond = 59.000000000000000000
              YValueVariable = 79.000000000000000000
              YValueLow = 59.000000000000000000
              YValueClose = 85.000000000000000000
              YValueHigh = 140.000000000000000000
              YValueOpen = 84.000000000000000000
              YValueMedian = 85.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              XValueText = 'May'
              YValue = 200.000000000000000000
              YValueSecond = -14.000000000000000000
              YValueVariable = 6.000000000000000000
              YValueLow = -14.000000000000000000
              YValueClose = 13.000000000000000000
              YValueHigh = 200.000000000000000000
              YValueOpen = 14.000000000000000000
              YValueMedian = 13.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              XValueText = 'Jun'
              YValue = 170.000000000000000000
              YValueSecond = 29.000000000000000000
              YValueVariable = 49.000000000000000000
              YValueLow = 29.000000000000000000
              YValueClose = 43.000000000000000000
              YValueHigh = 170.000000000000000000
              YValueOpen = 39.000000000000000000
              YValueMedian = 37.000000000000000000
            end>
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -13
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Stroke.Color = 16744448
          XGrid.Visible = True
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clBlack
          XValues.MajorUnitFont.Height = -13
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 5.000000000000000000
          XValues.MajorUnitTickMarkSize = 10.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clBlack
          XValues.MinorUnitFont.Height = -13
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 5.000000000000000000
          XValues.MinorUnitTickMarkSize = 7.000000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clBlack
          XValues.Title.Font.Height = -13
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Title.Text = 'Month'
          XValues.SmartLabels.MinLabelSpacing = 5.000000000000000000
          YGrid.Visible = True
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -13
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.0f'
          YValues.MajorUnitSpacing = 5.000000000000000000
          YValues.MajorUnitTickMarkSize = 10.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -13
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.0f'
          YValues.MinorUnitSpacing = 5.000000000000000000
          YValues.MinorUnitTickMarkSize = 7.000000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clBlack
          YValues.Title.Font.Height = -13
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Title.Text = 'Sales'
          YValues.SmartLabels.MinLabelSpacing = 5.000000000000000000
          Crosshair.XTextStroke.Color = 16105559
          Crosshair.XTextFill.Color = 16105559
          Crosshair.XTextFont.Charset = DEFAULT_CHARSET
          Crosshair.XTextFont.Color = clWhite
          Crosshair.XTextFont.Height = -12
          Crosshair.XTextFont.Name = 'Segoe UI'
          Crosshair.XTextFont.Style = []
          Crosshair.YTextStroke.Color = 16105559
          Crosshair.YTextFill.Color = 16105559
          Crosshair.YTextFont.Charset = DEFAULT_CHARSET
          Crosshair.YTextFont.Color = clWhite
          Crosshair.YTextFont.Height = -12
          Crosshair.YTextFont.Name = 'Segoe UI'
          Crosshair.YTextFont.Style = []
          Crosshair.HorizontalLineStroke.Color = 16105559
          Crosshair.VerticalLineStroke.Color = 16105559
        end
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 40.000000000000000000
          Bar.Spacing = 20.000000000000000000
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 200.000000000000000000
          Pie.Margins.Left = 10
          Pie.Margins.Top = 10
          Pie.Margins.Right = 10
          Pie.Margins.Bottom = 10
          Pie.SweepAngle = 360.000000000000000000
          ChartType = ctBar
          Fill.Color = 5644279
          LegendText = 'Sales 2025'
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clBlack
          Labels.Font.Height = -13
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.0f'
          Labels.OffsetY = -10.000000000000000000
          Labels.Visible = True
          Markers.Fill.Color = 5644279
          Markers.Height = 10.000000000000000000
          Markers.Stroke.Color = clBlack
          Markers.Width = 10.000000000000000000
          MaxX = 10.000000000000000000
          MaxY = 10.000000000000000000
          MaxYOffsetPercentage = 10.000000000000000000
          Mode = smStatistical
          Offset3DX = 15.000000000000000000
          Offset3DY = 15.000000000000000000
          Points = <
            item
              Annotations = <>
              XValueText = 'Jan'
              YValue = 140.000000000000000000
              YValueSecond = 5.000000000000000000
              YValueVariable = 25.000000000000000000
              YValueLow = 5.000000000000000000
              YValueClose = 23.000000000000000000
              YValueHigh = 140.000000000000000000
              YValueOpen = 24.000000000000000000
              YValueMedian = 21.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              XValueText = 'Feb'
              YValue = 180.000000000000000000
              YValueVariable = 20.000000000000000000
              YValueClose = 15.000000000000000000
              YValueHigh = 180.000000000000000000
              YValueOpen = 29.000000000000000000
              YValueMedian = 24.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              XValueText = 'Mar'
              YValue = 160.000000000000000000
              YValueSecond = 9.000000000000000000
              YValueVariable = 29.000000000000000000
              YValueLow = 9.000000000000000000
              YValueClose = 26.000000000000000000
              YValueHigh = 160.000000000000000000
              YValueOpen = 28.000000000000000000
              YValueMedian = 32.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              XValueText = 'Apr'
              YValue = 190.000000000000000000
              YValueSecond = 8.000000000000000000
              YValueVariable = 28.000000000000000000
              YValueLow = 8.000000000000000000
              YValueClose = 23.000000000000000000
              YValueHigh = 190.000000000000000000
              YValueOpen = 20.000000000000000000
              YValueMedian = 16.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              XValueText = 'May'
              YValue = 220.000000000000000000
              YValueSecond = -15.000000000000000000
              YValueVariable = 5.000000000000000000
              YValueLow = -15.000000000000000000
              YValueClose = 9.000000000000000000
              YValueHigh = 220.000000000000000000
              YValueOpen = 9.000000000000000000
              YValueMedian = 7.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              XValueText = 'Jun'
              YValue = 210.000000000000000000
              YValueSecond = 39.000000000000000000
              YValueVariable = 59.000000000000000000
              YValueLow = 39.000000000000000000
              YValueClose = 58.000000000000000000
              YValueHigh = 210.000000000000000000
              YValueOpen = 57.000000000000000000
              YValueMedian = 58.000000000000000000
            end>
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -13
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -10.000000000000000000
          Stroke.Color = 5644279
          XValues.MajorUnit = 1.000000000000000000
          XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MajorUnitFont.Color = clBlack
          XValues.MajorUnitFont.Height = -13
          XValues.MajorUnitFont.Name = 'Segoe UI'
          XValues.MajorUnitFont.Style = []
          XValues.MajorUnitFormat = '%.0f'
          XValues.MajorUnitSpacing = 5.000000000000000000
          XValues.MajorUnitTickMarkSize = 10.000000000000000000
          XValues.MajorUnitTickMarkColor = clSilver
          XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          XValues.MinorUnitFont.Color = clBlack
          XValues.MinorUnitFont.Height = -13
          XValues.MinorUnitFont.Name = 'Segoe UI'
          XValues.MinorUnitFont.Style = []
          XValues.MinorUnitFormat = '%.0f'
          XValues.MinorUnitSpacing = 5.000000000000000000
          XValues.MinorUnitTickMarkSize = 7.000000000000000000
          XValues.MinorUnitTickMarkColor = clSilver
          XValues.Title.Font.Charset = DEFAULT_CHARSET
          XValues.Title.Font.Color = clBlack
          XValues.Title.Font.Height = -13
          XValues.Title.Font.Name = 'Segoe UI'
          XValues.Title.Font.Style = []
          XValues.Title.TextMargins.Left = 0
          XValues.Title.TextMargins.Top = 0
          XValues.Title.TextMargins.Right = 0
          XValues.Title.TextMargins.Bottom = 0
          XValues.Positions = []
          XValues.SmartLabels.MinLabelSpacing = 5.000000000000000000
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -13
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.0f'
          YValues.MajorUnitSpacing = 5.000000000000000000
          YValues.MajorUnitTickMarkSize = 10.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -13
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.0f'
          YValues.MinorUnitSpacing = 5.000000000000000000
          YValues.MinorUnitTickMarkSize = 7.000000000000000000
          YValues.MinorUnitTickMarkColor = clSilver
          YValues.Title.Font.Charset = DEFAULT_CHARSET
          YValues.Title.Font.Color = clBlack
          YValues.Title.Font.Height = -13
          YValues.Title.Font.Name = 'Segoe UI'
          YValues.Title.Font.Style = []
          YValues.Title.TextMargins.Left = 0
          YValues.Title.TextMargins.Top = 0
          YValues.Title.TextMargins.Right = 0
          YValues.Title.TextMargins.Bottom = 0
          YValues.Positions = []
          YValues.SmartLabels.MinLabelSpacing = 5.000000000000000000
          Crosshair.XTextStroke.Color = 5644279
          Crosshair.XTextFill.Color = 5644279
          Crosshair.XTextFont.Charset = DEFAULT_CHARSET
          Crosshair.XTextFont.Color = clWhite
          Crosshair.XTextFont.Height = -12
          Crosshair.XTextFont.Name = 'Segoe UI'
          Crosshair.XTextFont.Style = []
          Crosshair.YTextStroke.Color = 5644279
          Crosshair.YTextFill.Color = 5644279
          Crosshair.YTextFont.Charset = DEFAULT_CHARSET
          Crosshair.YTextFont.Color = clWhite
          Crosshair.YTextFont.Height = -12
          Crosshair.YTextFont.Name = 'Segoe UI'
          Crosshair.YTextFont.Style = []
          Crosshair.HorizontalLineStroke.Color = 5644279
          Crosshair.VerticalLineStroke.Color = 5644279
        end>
      Title.Stroke.Kind = gskSolid
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -13
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Title.Height = 35.000000000000000000
      Title.TextMargins.Left = 3
      Title.TextMargins.Top = 3
      Title.TextMargins.Right = 3
      Title.TextMargins.Bottom = 3
      Title.Text = 'Monthly Sales Comparison'
      XAxis.Stroke.Kind = gskSolid
      XAxis.Height = 35.000000000000000000
      YAxis.Stroke.Kind = gskSolid
      YAxis.Width = 35.000000000000000000
      DefaultLoadOptions.XValuesFormatString = '%.0f'
      DefaultLoadOptions.YValuesFormatString = '%.2f'
      DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
      Align = alClient
      TabOrder = 1
    end
  end
end

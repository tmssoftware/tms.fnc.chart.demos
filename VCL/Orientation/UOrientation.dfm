object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Chart Orientation Demo'
  ClientHeight = 600
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 144
  TextHeight = 25
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 960
    Height = 560
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 759
      Top = 1
      Width = 200
      Height = 558
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      TabOrder = 0
      object Label1: TLabel
        Left = 20
        Top = 20
        Width = 93
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Orientation:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object OrientationLbl: TLabel
        Left = 20
        Top = 55
        Width = 59
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Layout:'
      end
      object OrientationComboBox: TComboBox
        Left = 20
        Top = 85
        Width = 160
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Vertical'
        OnChange = OrientationComboBoxChange
        Items.Strings = (
          'Vertical'
          'Horizontal')
      end
    end
    object TMSFNCChart1: TTMSFNCChart
      Left = 1
      Top = 1
      Width = 758
      Height = 558
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Appearance.GlobalFont.Scale = 1.000000000000000000
      Appearance.GlobalFont.Style = []
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
      Legend.Visible = True
      Stroke.Color = clGray
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
          ChartType = ctBar
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 300.000000000000000000
          Pie.Margins.Left = 15
          Pie.Margins.Top = 15
          Pie.Margins.Right = 15
          Pie.Margins.Bottom = 15
          Pie.SweepAngle = 360.000000000000000000
          Fill.Color = 16744448
          LegendText = 'Sales 2024'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clBlack
          Labels.Font.Height = -17
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.0f'
          Labels.OffsetY = -15.000000000000000000
          Labels.Stroke.Color = clGray
          Labels.Visible = True
          Markers.Fill.Color = 16744448
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = clBlack
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
              XValueText = 'Jan'
              YValue = 120.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              XValueText = 'Feb'
              YValue = 150.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              XValueText = 'Mar'
              YValue = 180.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              XValueText = 'Apr'
              YValue = 140.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              XValueText = 'May'
              YValue = 200.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              XValueText = 'Jun'
              YValue = 170.000000000000000000
            end>
          Legend.Fill.Color = 16775416
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -17
          Legend.Font.Name = 'Segoe UI'
          Legend.Font.Style = []
          Legend.Left = -15.000000000000000000
          Legend.Stroke.Color = clGray
          Stroke.Color = 16744448
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
          XValues.Title.Text = 'Month'
          XValues.Positions = [xpBottom]
          YGrid.Visible = True
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -17
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.0f'
          YValues.MajorUnitSpacing = 7.500000000000000000
          YValues.MajorUnitTickMarkSize = 15.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -17
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.0f'
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
          YValues.Title.Text = 'Sales'
          YValues.Positions = [ypLeft]
        end
        item
          AnimationFactor = 4.000000000000000000
          AutoYRange = arCommonZeroBased
          Bar.Width = 40.000000000000000000
          Bar.Spacing = 20.000000000000000000
          ChartType = ctBar
          MultiPoint.Width = 65.000000000000000000
          Pie.Size = 300.000000000000000000
          Pie.Margins.Left = 15
          Pie.Margins.Top = 15
          Pie.Margins.Right = 15
          Pie.Margins.Bottom = 15
          Pie.SweepAngle = 360.000000000000000000
          Fill.Color = 5644279
          LegendText = 'Sales 2025'
          Labels.Fill.Color = 16775416
          Labels.Font.Charset = DEFAULT_CHARSET
          Labels.Font.Color = clBlack
          Labels.Font.Height = -17
          Labels.Font.Name = 'Segoe UI'
          Labels.Font.Style = []
          Labels.Format = '%.0f'
          Labels.OffsetY = -15.000000000000000000
          Labels.Stroke.Color = clGray
          Labels.Visible = True
          Markers.Fill.Color = 5644279
          Markers.Height = 15.000000000000000000
          Markers.Stroke.Color = clBlack
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
              XValueText = 'Jan'
              YValue = 140.000000000000000000
            end
            item
              Annotations = <>
              XValue = 1.000000000000000000
              XValueText = 'Feb'
              YValue = 180.000000000000000000
            end
            item
              Annotations = <>
              XValue = 2.000000000000000000
              XValueText = 'Mar'
              YValue = 160.000000000000000000
            end
            item
              Annotations = <>
              XValue = 3.000000000000000000
              XValueText = 'Apr'
              YValue = 190.000000000000000000
            end
            item
              Annotations = <>
              XValue = 4.000000000000000000
              XValueText = 'May'
              YValue = 220.000000000000000000
            end
            item
              Annotations = <>
              XValue = 5.000000000000000000
              XValueText = 'Jun'
              YValue = 210.000000000000000000
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
          XValues.Positions = []
          YValues.MajorUnit = 1.000000000000000000
          YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MajorUnitFont.Color = clBlack
          YValues.MajorUnitFont.Height = -17
          YValues.MajorUnitFont.Name = 'Segoe UI'
          YValues.MajorUnitFont.Style = []
          YValues.MajorUnitFormat = '%.0f'
          YValues.MajorUnitSpacing = 7.500000000000000000
          YValues.MajorUnitTickMarkSize = 15.000000000000000000
          YValues.MajorUnitTickMarkColor = clSilver
          YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
          YValues.MinorUnitFont.Color = clBlack
          YValues.MinorUnitFont.Height = -17
          YValues.MinorUnitFont.Name = 'Segoe UI'
          YValues.MinorUnitFont.Style = []
          YValues.MinorUnitFormat = '%.0f'
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
      Title.Text = 'Monthly Sales Comparison'
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
    end
  end
end

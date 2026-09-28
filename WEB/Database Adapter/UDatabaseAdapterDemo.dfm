object Form1: TForm1
  Width = 1307
  Height = 689
  Caption = 'Chart Database Adapter Demo'
  Color = clBtnFace
  OnCreate = FormCreate
  object Panel1: TWebPanel
    AlignWithMargins = True
    Left = 30
    Top = 30
    Width = 1247
    Height = 629
    Margins.Left = 30
    Margins.Top = 30
    Margins.Right = 30
    Margins.Bottom = 30
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Align = alClient
    BorderColor = clSilver
    BorderStyle = bsSingle
    Caption = 'Panel1'
    ExplicitWidth = 580
    ExplicitHeight = 420
    object TMSFNCChart1: TTMSFNCChart
      Left = 0
      Top = 0
      Width = 858
      Height = 629
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
      Series = <>
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
      Adapter = TMSFNCChartDatabaseAdapter1
      DefaultLoadOptions.XValuesFormatString = '%.0f'
      DefaultLoadOptions.YValuesFormatString = '%.2f'
      DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 191
      ExplicitHeight = 420
    end
    object Panel2: TWebPanel
      Left = 858
      Top = 0
      Width = 389
      Height = 629
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      Align = alRight
      BorderColor = clSilver
      BorderStyle = bsSingle
      ExplicitLeft = 191
      ExplicitHeight = 420
      object Label1: TLabel
        Left = 34
        Top = 180
        Width = 63
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Y-Value:'
      end
      object Label2: TLabel
        Left = 34
        Top = 236
        Width = 64
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'X-Value:'
      end
      object Label3: TLabel
        Left = 34
        Top = 292
        Width = 63
        Height = 25
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'X-Label:'
      end
      object ConnectButton: TWebButton
        Left = 34
        Top = 24
        Width = 319
        Height = 57
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Connect Database'
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = ConnectButtonClick
      end
      object AutoCreateCB: TCheckBox
        Left = 34
        Top = 120
        Width = 319
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Auto Create Series'
        TabOrder = 1
        OnClick = AutoCreateCBClick
      end
      object YValCombo: TWebComboBox
        Left = 128
        Top = 177
        Width = 225
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        TabOrder = 2
        WidthPercent = 100.000000000000000000
        ItemIndex = -1
      end
      object XValCombo: TWebComboBox
        Left = 128
        Top = 233
        Width = 225
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        TabOrder = 3
        WidthPercent = 100.000000000000000000
        ItemIndex = -1
      end
      object XLabCombo: TWebComboBox
        Left = 128
        Top = 289
        Width = 225
        Height = 33
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        HeightPercent = 100.000000000000000000
        TabOrder = 4
        WidthPercent = 100.000000000000000000
        ItemIndex = -1
      end
      object TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter
        Left = 156
        Top = 484
        Width = 26
        Height = 26
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Visible = True
        Source.DataSource = WebDataSource1
        Source.Series = <>
        OnFieldsToSeries = TMSFNCChartDatabaseAdapter1FieldsToSeries
        OnSetFieldValueType = TMSFNCChartDatabaseAdapter1SetFieldValueType
      end
    end
  end
  object ClientDataSet1: TWebClientDataSet
    Params = <>
    Left = 632
    Top = 320
    object ClientDataSet1Id: TStringField
      FieldName = 'Id'
      Size = 255
    end
    object ClientDataSet1Date: TDateField
      FieldName = 'Date'
    end
    object ClientDataSet1Type: TStringField
      FieldName = 'Type'
      Size = 255
    end
    object ClientDataSet1Distance: TFloatField
      FieldName = 'Distance'
    end
    object ClientDataSet1Time: TFloatField
      FieldName = 'Time'
    end
  end
  object WebDataSource1: TWebDataSource
    DataSet = ClientDataSet1
    Left = 1040
    Top = 576
  end
end

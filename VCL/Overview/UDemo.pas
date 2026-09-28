unit UDemo;

interface

uses
  Classes, VCL.TMSFNCChart, VCL.TMSFNCChartEditor, StdCtrls, ExtCtrls,
  Controls, Forms, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, UITypes, SysUtils, DateUtils,
  Math, Dialogs, Graphics, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils;

type
  TForm1166 = class(TForm)
    TMSFNCChart1: TTMSFNCChart;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    TMSFNCChartEditorDialog1: TTMSFNCChartEditorDialog;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure TMSFNCChart1SeriePointClick(Sender: TObject;
      APoint: TTMSFNCChartPoint);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TMSFNCChart1BeforeDrawSerieXValue(Sender: TObject;
      AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
      APosition: TTMSFNCChartXAxisPosition;
      var ADrawValue: TTMSFNCChartDrawXYValue; var ADefaultDraw: Boolean);
    procedure TMSFNCChart1GetSerieYValue(Sender: TObject;
      ASerie: TTMSFNCChartSerie; AIndex: Integer;
      AKind: TTMSFNCChartDrawXYValueKind; AValue: Double;
      var AValueString: string);
    procedure CheckBox1Change(Sender: TObject);
    procedure TMSFNCChart1BeforeDrawSerieMarker(Sender: TObject;
      AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
      var ADrawPoint: TTMSFNCChartDrawPoint; var ADefaultDraw: Boolean);
    procedure RadioButton1Change(Sender: TObject);
    procedure TMSFNCChart1GetSerieLegendText(Sender: TObject;
      ASerie: TTMSFNCChartSerie; APoint: TTMSFNCChartPoint;
      var ALegendText: string);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    cbo: TComboBox;
    procedure CBOChanged(Sender: TObject);
  public
    { Public declarations }
    procedure BuildChart;
  end;

var
  Form1166: TForm1166;

implementation

{$R *.dfm}

procedure TForm1166.BuildChart;
var
  I, J: Integer;
  s, si: TTMSFNCChartSerie;
  sl: TStringList;
  a: TArray<string>;
  pt: TTMSFNCChartPoint;
  an: TTMSFNCChartAnnotation;
  c: TTMSFNCGraphicsColor;
  idx: Integer;
begin
  TMSFNCChart1.BeginUpdate;
  TMSFNCChart1.Clear;
  idx := RadioGroup1.ItemIndex;
  case idx of
    0:
    begin
      TMSFNCChart1.Title.Text := 'Monthly Car Sales';
      TMSFNCChart1.Title.Height := 50;
      TMSFNCChart1.Title.TextHorizontalAlignment := gtaLeading;
      TMSFNCChart1.Title.Font.Color := gcDarkslategray;
      TMSFNCChart1.Title.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Title.Font.Size := 18;
      TMSFNCChart1.Title.Font.Style := TMSFNCChart1.Title.Font.Style + [TFontStyle.fsBold];
      TMSFNCChart1.Legend.Position := lpTopRight;
      TMSFNCChart1.Legend.Left := -10;
      TMSFNCChart1.Legend.Font.Size := 13;
      TMSFNCChart1.Legend.Visible := True;
      TMSFNCChart1.Legend.Font.Color := gcDarkslategray;
      TMSFNCChart1.Legend.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.YAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.XAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.YAxis.Positions := [ypLeft];
      TMSFNCChart1.XAxis.Positions := [xpBottom];
      TMSFNCChart1.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Fill.Color := gcWhite;

      TMSFNCChart1.SeriesMargins.Left := 0;
      TMSFNCChart1.SeriesMargins.Top := 0;
      TMSFNCChart1.SeriesMargins.Right := 0;
      TMSFNCChart1.SeriesMargins.Bottom := 0;

      TMSFNCChart1.Series.Clear;
      for I := 0 to 2 do
      begin
        s := TMSFNCChart1.Series.Add;
        if I = 0 then
        begin
          s.YValues.Positions := [ypLeft];
          s.XValues.Positions := [xpBottom];
          s.XGrid.Visible := True;
          s.YGrid.Visible := True;
          s.XValues.Title.Text := 'Months of the year '+ inttostr(YearOf(Now));
          s.XValues.Title.Font.Color := gcDarkslategray;
          s.XValues.Title.Font.Size := 14;
          s.XValues.Title.Font.Style := s.YValues.Title.Font.Style + [TFontStyle.fsBold];
          s.XValues.Title.TextHorizontalAlignment := gtaTrailing;
          s.XValues.Title.TextMargins.Right := 10;

          s.YValues.Title.Text := 'Amount of cars';
          s.YValues.Title.Font.Color := gcDarkslategray;
          s.YValues.Title.Font.Size := 14;
          s.YValues.Title.Font.Style := s.YValues.Title.Font.Style + [TFontStyle.fsBold];
          s.YValues.Title.TextVerticalAlignment := gtaLeading;
        end
        else
        begin
          s.YValues.Positions := [];
          s.XValues.Positions := [];
        end;

        s.AutoXRange := arDisabled;
        s.AutoYRange := arDisabled;
        s.MinX := 0;
        s.MaxX := 11;
        s.MinY := 0;
        s.MaxY := 300;
        s.Mode := smStatistical;
        s.ChartType := ctBar;

        case I of
          0:
          begin
            s.LegendText := 'Mercedes';
            s.Fill.Kind := gfkGradient;
            s.Fill.Orientation := gfoHorizontal;
            s.Fill.Color := gcLightslategray;
            s.Fill.Color := gcLightslategray;
            s.Fill.ColorTo := gcDarkslategray;
            s.Stroke.Color := gcBlack;
            s.Labels.Font.Color := gcWhite;
          end;
          1:
          begin
            s.LegendText := 'Bugatti';
            s.Fill.Kind := gfkGradient;
            s.Fill.Orientation := gfoHorizontal;
            s.Fill.Color := gcOrange;
            s.Fill.Color := gcOrange;
            s.Fill.ColorTo := gcOrangered;
            s.Stroke.Color := gcDarkred;
          end;
          2:
          begin
            s.LegendText := 'Audi';
            s.Fill.Kind := gfkGradient;
            s.Fill.Orientation := gfoHorizontal;
            s.Fill.Color := gcLimegreen;
            s.Fill.Color := gcLimeGreen;
            s.Fill.ColorTo := gcGreenyellow;
            s.Stroke.Color := gcDarkgreen;
          end;
        end;

        s.Bar.Spacing := 0;

        s.Labels.Fill.Color := s.Fill.Color;
        s.Labels.Stroke.Color := s.Stroke.Color;

        s.XValues.Angle := -90;
        s.YValues.MajorUnitFormat := '%g';
        s.Labels.Visible := True;
        s.Labels.Format := '%g';
        s.XValues.MajorUnitFont.Size := 12;
        s.YValues.MajorUnitFont.Size := 12;
        s.XValues.MinorUnitFont.Size := 12;
        s.YValues.MinorUnitFont.Size := 12;
        s.XValues.MajorUnitFont.Color := gcDarkslategray;
        s.XValues.MajorUnitTickMarkColor := gcDarkslategray;
        s.YValues.MajorUnitFont.Color := gcDarkslategray;
        s.YValues.MajorUnitTickMarkColor := gcDarkslategray;

        for J := 1 to 12 do
          s.AddPoint(RandomRange(50, 250), FormatSettings.LongMonthNames[J]);
      end;
    end;
    1:
    begin
      TMSFNCChart1.YAxis.Positions := [ypCenter];
      TMSFNCChart1.XAxis.Positions := [xpCenter];
      TMSFNCChart1.Title.TextHorizontalAlignment := gtaCenter;
      TMSFNCChart1.Title.Text := 'Sine && Cosine';
      TMSFNCChart1.Title.Font.Color := gcDarkslategray;
      TMSFNCChart1.Title.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Title.Font.Size := 18;
      TMSFNCChart1.Title.Font.Style := TMSFNCChart1.Title.Font.Style + [TFontStyle.fsBold];
      TMSFNCChart1.Legend.Visible := False;
      TMSFNCChart1.YAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.XAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Fill.Color := gcWhite;

      TMSFNCChart1.SeriesMargins.Left := 10;
      TMSFNCChart1.SeriesMargins.Top := 10;
      TMSFNCChart1.SeriesMargins.Right := 10;
      TMSFNCChart1.SeriesMargins.Bottom := 10;

      for I := 0 to 1 do
      begin
        s := TMSFNCChart1.Series.Add;
        case cbo.ItemIndex of
         0: s.ChartType := ctXYLine;
         1: s.ChartType := ctBand;
        end;
        s.AutoXRange := arDisabled;
        s.MinX := -5;
        s.MaxX := 5;
        s.AutoYRange := arCommon;
        if I = 0 then
        begin
          s.YValues.Positions := [ypCenter];
          s.XValues.Positions := [xpCenter];
          s.XGrid.Visible := True;
          s.YGrid.Visible := True;
          s.Stroke.Color := gcRed;
          s.LegendText := 'Sine';
        end
        else
        begin
          s.YValues.Positions := [];
          s.XValues.Positions := [];
          s.Stroke.Color := gcBlue;
          s.LegendText := 'Cosine';
        end;

        s.Markers.Fill.Kind := gfkGradient;
        s.Markers.Fill.Color := s.Stroke.Color;
        s.Markers.Fill.Color := s.Stroke.Color;
        s.Markers.Fill.ColorTo := gcWhite;

        s.Fill.Assign(s.Markers.Fill);

        s.Markers.Stroke.Color := gcBlack;

        s.XValues.MajorUnitFormat := '%.2f';
        s.Markers.Visible := True;

        for J := -500 to 500 do
        begin
          an := nil;
          if I = 0 then
          begin
            pt := s.AddXYPoint(J / 100, sin(J / 100));
            pt.YValueSecond := pt.YValue - 0.1;
            if J = -350 then
            begin
              an := pt.Annotations.Add;
              an.Text := 'The sine of an angle is the ratio '+#13#10+'of the length of the opposite side '+#13#10+'to the length of the hypotenuse.';
              an.OffsetY := -60;
              an.OffsetX := 100;
            end;
          end
          else
          begin
            pt := s.AddXYPoint(J / 100, cos(J / 100));
             pt.YValueSecond := pt.YValue - 0.1;
            if J = 200 then
            begin
              an := pt.Annotations.Add;
              an.Text := 'The cosine of an angle is the ratio '+#13#10+'of the length of the adjacent side '+#13#10+'to the length of the hypotenuse';
              an.OffsetX := 100;
              an.OffsetY := -30;
            end;
          end;

          if Assigned(an) then
          begin
            an.AutoSize := True;
            an.WordWrap := True;
            an.Font.Size := 8;
            an.Font.Color := s.Stroke.Color;
            an.Stroke.Color := s.Stroke.Color;
            an.LineColor := s.Stroke.Color;
          end;
        end;
      end;
    end;
    2:
    begin
      TMSFNCChart1.Title.Text := 'Highest temperature in week ' + inttostr(WeekOf(Now)) + ' of ' + FormatSettings.LongMonthNames[MonthOf(Now)];
      TMSFNCChart1.Title.Font.Color := gcGreen;
      TMSFNCChart1.Title.Height := 50;
      TMSFNCChart1.Legend.Visible := True;
      TMSFNCChart1.YAxis.Positions := [ypLeft];
      TMSFNCChart1.XAxis.Positions := [xpBottom];
      TMSFNCChart1.Fill.Color := gcLightgoldenrodyellow;

      TMSFNCChart1.SeriesMargins.Left := 0;
      TMSFNCChart1.SeriesMargins.Top := 0;
      TMSFNCChart1.SeriesMargins.Right := 0;
      TMSFNCChart1.SeriesMargins.Bottom := 0;

      for I := 0 to 2 do
      begin
        s := TMSFNCChart1.Series.Add;
        s.ChartType := ctStackedArea;
        s.AutoXRange := arCommon;
        s.AutoYRange := arCommonZeroBased;
        s.Enable3D := True;
        s.Mode := smStatistical;

        if I = 0 then
        begin
          s.YValues.Positions := [ypLeft];
          s.XValues.Positions := [xpBottom];
          s.XGrid.Visible := True;
          s.YGrid.Visible := True;
        end
        else
        begin
          s.YValues.Positions := [];
          s.XValues.Positions := [];
        end;

        s.Labels.Visible := True;
        s.Labels.Format := '%g C°';
        s.Labels.Mode := lmStacked;
        s.YValues.Title.Text := 'Temperature in degrees (C°)';
        s.YValues.Title.Font.Color := gcGreen;
        s.XValues.Title.Text := 'Week '+IntToStr(WeekOf(Now))+' of '+ FormatSettings.LongMonthNames[MonthOf(Now)];
        s.XValues.Title.Font.Color := gcGreen;
        s.YValues.MajorUnitFont.Color := gcGreen;
        s.XValues.MajorUnitFont.Color := gcGreen;
        s.YValues.MajorUnitFont.Size := 12;
        s.YValues.MinorUnitFont.Color := gcGreen;
        s.YValues.AutoUnits := False;
        s.YValues.MajorUnit := 5;
        s.YValues.MinorUnit := 1;
        s.YValues.MajorUnitFormat := '%g';
        s.MaxYOffsetPercentage := 10;

        case I of
          0:
          begin
            s.Fill.Color := gcYellowgreen;
            s.Stroke.Color := gcGreen;
            s.LegendText := 'Paris';
            for J := 1 to 7 do
              s.AddPoint(RandomRange(1, 10), FormatSettings.LongDayNames[J]);
          end;
          1:
          begin
            s.Fill.Color := gcGreen;
            s.Stroke.Color := gcDarkgreen;
            s.LegendText := 'Barcelona';
            for J := 1 to 7 do
              s.AddPoint(RandomRange(10, 20), FormatSettings.LongDayNames[J]);
          end;
          2:
          begin
            c := MakeGraphicsColor(64, 93, 169);
            s.Fill.Color := c;
            s.Stroke.Color := gcDarkblue;

            s.LegendText := 'Shanghai';
            for J := 1 to 7 do
              s.AddPoint(RandomRange(10, 30), FormatSettings.LongDayNames[J]);
          end;
        end;
      end;
    end;
    3:
    begin
      TMSFNCChart1.Title.Text := 'Customer Satisfaction / Expenses';
      TMSFNCChart1.Title.Height := 50;
      TMSFNCChart1.Title.TextHorizontalAlignment := gtaCenter;
      TMSFNCChart1.Title.Font.Color := gcDarkslategray;
      TMSFNCChart1.Title.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Title.Font.Size := 18;
      TMSFNCChart1.Title.Font.Style := TMSFNCChart1.Title.Font.Style + [TFontStyle.fsBold];
      TMSFNCChart1.Legend.Position := lpTopRight;
      TMSFNCChart1.Legend.Left := -10;
      TMSFNCChart1.Legend.Font.Size := 13;
      TMSFNCChart1.Legend.Visible := True;
      TMSFNCChart1.Legend.Font.Color := gcDarkslategray;
      TMSFNCChart1.Legend.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.YAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.XAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.YAxis.Positions := [ypLeft];
      TMSFNCChart1.XAxis.Positions := [xpBottom];
      TMSFNCChart1.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Fill.Color := gcWhite;

      TMSFNCChart1.SeriesMargins.Left := 0;
      TMSFNCChart1.SeriesMargins.Top := 0;
      TMSFNCChart1.SeriesMargins.Right := 0;
      TMSFNCChart1.SeriesMargins.Bottom := 0;

      TMSFNCChart1.Series.Clear;
      s := TMSFNCChart1.Series.Add;
      s.ChartType := ctPie;
      s.AddPoint(9, MakeGraphicsColor(254, 0, 0), 'Very dissatisfied').Annotations.Add.Text := 'Very dissatisfied ' + Format('%g%%', [9.0]);
      s.AddPoint(50, MakeGraphicsColor(76, 118, 32), 'Very satisfied').Annotations.Add.Text := 'Very satisfied ' + Format('%g%%', [50.0]);
      s.AddPoint(14, MakeGraphicsColor(113, 176, 46), 'Somewhat satisfied').Annotations.Add.Text := 'Somewhat satisfied ' + Format('%g%%', [14.0]);
      s.AddPoint(27, MakeGraphicsColor(255, 192, 0), 'Somewhat dissatisfied').Annotations.Add.Text := 'Somewhat dissatisfied ' + Format('%g%%', [27.0]);
      s.Stroke.Color := gcBlack;
      s.Pie.Size := 350;
      s.Pie.AutoSize := False;
      s.Legend.Visible := True;
      s.LegendText := '';
      s.Pie.StartAngle := 90;
      s.Legend.Font.Size := 10;
      s.Pie.InnerSize := 200;
      s.Legend.Position := lpCenterCenter;
      s.Legend.Left := 0;
      s.Pie.Margins.Left := 75;
      si := TMSFNCChart1.Series.Add;
      si.ChartType := ctSizedPie;
      si.Pie.AutoSize := False;
      si.Labels.Visible := True;
      si.Labels.OffsetX := 0;
      si.Labels.OffsetY := 0;
      si.Labels.Format := '%.0m';
      si.Labels.Fill.Kind := gfkNone;
      si.Labels.Stroke.Kind := gskNone;
      si.Stroke.Kind := gskSolid;
      si.Labels.Font.Color := gcWhite;
      si.Labels.Font.Size := 12;
      si.Labels.Font.Style := [TFontStyle.fsBold];
      si.Pie.Size := 300;
      si.LegendText := '';
      si.AddPoint(Random(100) + 40, MakeGraphicsColor(69, 115, 167) , 'Meat and Fish').Explode := 30;
      si.AddPoint(Random(100) + 40, MakeGraphicsColor(190, 20, 245), 'Fruit and Vegetables');
      si.AddPoint(Random(100) + 40, MakeGraphicsColor(95, 52, 95), 'Meals out');
      si.AddPoint(Random(100) + 40, MakeGraphicsColor(76, 132, 209), 'Groceries');
      si.AddPoint(Random(100) + 40, MakeGraphicsColor(76, 200, 209), 'Alcohol');
      si.Legend.Font.Size := 12;
      si.Legend.Visible := True;
      si.Legend.Position := lpBottomCenter;
      si.Pie.Position := ppTopCenter;
      si.Pie.Margins.Top := 50;
      si.Pie.Margins.Bottom := 50;
    end;
    4:
    begin
      TMSFNCChart1.Title.Text := 'Budget Spending';
      TMSFNCChart1.Title.Height := 50;
      TMSFNCChart1.Title.TextHorizontalAlignment := gtaCenter;
      TMSFNCChart1.Title.Font.Color := gcDarkslategray;
      TMSFNCChart1.Title.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Title.Font.Size := 18;
      TMSFNCChart1.Title.Font.Style := TMSFNCChart1.Title.Font.Style + [TFontStyle.fsBold];
      TMSFNCChart1.Legend.Position := lpTopLeft;
      TMSFNCChart1.Legend.Left := 10;
      TMSFNCChart1.Legend.Font.Size := 13;
      TMSFNCChart1.Legend.Visible := True;
      TMSFNCChart1.Legend.Fill.Color := gcWhite;
      TMSFNCChart1.Legend.Font.Color := gcDarkslategray;
      TMSFNCChart1.Legend.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.YAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.XAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.YAxis.Positions := [ypLeft];
      TMSFNCChart1.XAxis.Positions := [xpBottom];
      TMSFNCChart1.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Fill.Color := gcWhite;

      TMSFNCChart1.SeriesMargins.Left := 0;
      TMSFNCChart1.SeriesMargins.Top := 0;
      TMSFNCChart1.SeriesMargins.Right := 0;
      TMSFNCChart1.SeriesMargins.Bottom := 0;

      TMSFNCChart1.Series.Clear;
      s := TMSFNCChart1.Series.Add;
      s.ChartType := ctSpider;
      s.AutoYRange := arCommonZeroBased;
      s.Pie.Stacked := True;
      s.Pie.AutoSize := False;
      s.Legend.Visible := True;
      s.Pie.Position := ppCenterLeft;
      s.Pie.Margins.Left := 100;
      s.Pie.Size := 500;
      s.Legend.Fill.Color := gcWhite;
      s.LegendText := 'Allocated Budget';
      s.Legend.Position := lpTopRight;
      s.YValues.MajorUnitFont.Size := 10;
      s.YValues.MajorUnitFormat := '%.0m';
      s.Stroke.Color := gcSteelBlue;
      s.Fill.Color := s.Stroke.Color;
      s.YGrid.SpiderLegend := True;
      s.Legend.Font.Size := 12;
      s.Pie.StartAngle := 90;
      s.YValues.MajorUnitFont.Color := gcSteelBlue;
      s.Legend.Font.Color := gcDarkslategray;


      s.Stroke.Width := 1;
      s.AddPoint(Random(1000), gcNull, 'Sales');
      s.AddPoint(Random(1000), gcNull, 'Administration');
      s.AddPoint(Random(1000), gcNull, 'Marketing');
      s.AddPoint(Random(1000), gcNull, 'Information Technology');
      s.AddPoint(Random(1000), gcNull, 'Customer Support');
      s.AddPoint(995, gcNull, 'Development');

      si := TMSFNCChart1.Series.Add;
      si.Assign(s);
      si.Points.Clear;
      si.LegendText := 'Actual Budget';
      si.Legend.Font.Color := gcDarkslategray;
      si.YGrid.SpiderVisible := False;
      si.Legend.Position := lpBottomRight;
      si.Stroke.Color := gcDarkOrange;
      si.Fill.Color := si.Stroke.Color;
      si.AddPoint(Random(1000), gcNull, 'Sales');
      si.AddPoint(Random(1000), gcNull, 'Administration');
      si.AddPoint(995, gcNull, 'Marketing');
      si.AddPoint(Random(1000), gcNull, 'Information Technology');
      si.AddPoint(Random(1000), gcNull, 'Customer Support');
      si.AddPoint(Random(1000), gcNull, 'Development');
    end;
    5:
    begin
      FormatSettings.DecimalSeparator := '.';
      TMSFNCChart1.Title.Text := 'Financial Data';
      TMSFNCChart1.Title.Height := 50;
      TMSFNCChart1.Title.TextHorizontalAlignment := gtaCenter;
      TMSFNCChart1.Title.Font.Color := gcDarkslategray;
      TMSFNCChart1.Title.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Title.Font.Size := 20;
      TMSFNCChart1.Title.Font.Style := TMSFNCChart1.Title.Font.Style + [TFontStyle.fsBold];
      TMSFNCChart1.Legend.Position := lpTopLeft;
      TMSFNCChart1.Legend.Left := 10;
      TMSFNCChart1.Legend.Font.Size := 15;
      TMSFNCChart1.Legend.Visible := True;
      TMSFNCChart1.Legend.Fill.Color := gcWhite;
      TMSFNCChart1.Legend.Font.Color := gcDarkslategray;
      TMSFNCChart1.Legend.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.YAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.XAxis.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.YAxis.Positions := [ypLeft];
      TMSFNCChart1.XAxis.Positions := [xpBottom];
      TMSFNCChart1.Stroke.Color := gcDarkslategray;
      TMSFNCChart1.Fill.Color := gcWhite;

      TMSFNCChart1.SeriesMargins.Left := 10;
      TMSFNCChart1.SeriesMargins.Top := 10;
      TMSFNCChart1.SeriesMargins.Right := 10;
      TMSFNCChart1.SeriesMargins.Bottom := 10;

      TMSFNCChart1.Series.Clear;
      s := TMSFNCChart1.Series.Add;
      s.ChartType := ctOHLC;
      s.AutoXRange := arCommonZeroBased;
      s.AutoYRange := arCommon;
      s.XValues.Angle := -90;
      s.LegendText := 'OHLC';
      s.XGrid.Visible := True;
      s.YGrid.Visible := True;
      s.Stroke.Width := 3;
      s.MultiPoint.IncreaseStrokeColor := s.MultiPoint.IncreaseFillColor;
      s.MultiPoint.DecreaseStrokeColor := s.MultiPoint.DecreaseFillColor;
      s.XValues.AutoUnits := True;
      sl := TStringList.Create;
      try
        sl.LoadFromFile('ohlcdata.csv');
        for I := 1 to sl.Count - 1 do
        begin
          a := sl[I].Split([',']);
          s.AddMultiPoint(StrToFloat(a[1]), StrToFloat(a[2]), StrToFloat(a[3]), StrToFloat(a[4]), DateToStr(Now + I));
        end;
      finally
        sl.Free;
      end;
    end;
  end;
  TMSFNCChart1.EndUpdate;
end;

procedure TForm1166.Button1Click(Sender: TObject);
begin
  TMSFNCChartEditorDialog1.Execute;
end;

procedure TForm1166.CBOChanged(Sender: TObject);
begin
  BuildChart;
end;

procedure TForm1166.CheckBox1Change(Sender: TObject);
begin
  TMSFNCChart1.Interaction := CheckBox1.Checked;
  Label1.Visible := CheckBox1.Checked;
end;

procedure TForm1166.ComboBox1Change(Sender: TObject);
begin
  BuildChart;
end;

procedure TForm1166.FormCreate(Sender: TObject);
begin
  BuildChart;

  cbo := TComboBox.Create(Self);
  cbo.Parent := Panel1;
  cbo.Visible := False;
  cbo.Align := alTop;
  cbo.Margins.Left := 5;
  cbo.Margins.Top := 0;
  cbo.Margins.Right := 5;
  cbo.Margins.Bottom := 5;
  cbo.Items.Add('Line');
  cbo.Items.Add('Band');
  cbo.ItemIndex := 0;
  cbo.OnChange := CBOChanged;
  cbo.Top := 500;
end;

procedure TForm1166.FormDestroy(Sender: TObject);
begin
  cbo.Free;
end;

procedure TForm1166.RadioButton1Change(Sender: TObject);
begin
  Label1.Visible := not RadioGroup1.ItemIndex = 3;
  CheckBox1.Visible := not RadioGroup1.ItemIndex = 3;
  BuildChart;
  cbo.Visible := RadioGroup1.ItemIndex = 2;
end;

procedure TForm1166.TMSFNCChart1BeforeDrawSerieMarker(Sender: TObject;
  AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
  var ADrawPoint: TTMSFNCChartDrawPoint; var ADefaultDraw: Boolean);
begin
  ADefaultDraw := Frac(ADrawPoint.Reference.XValue) = 0;
end;

procedure TForm1166.TMSFNCChart1BeforeDrawSerieXValue(Sender: TObject;
  AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
  APosition: TTMSFNCChartXAxisPosition; var ADrawValue: TTMSFNCChartDrawXYValue;
  var ADefaultDraw: Boolean);
begin
  ADefaultDraw := not ((RadioGroup1.ItemIndex = 2) and (ADrawValue.Value = 0));
end;

procedure TForm1166.TMSFNCChart1GetSerieLegendText(Sender: TObject;
  ASerie: TTMSFNCChartSerie; APoint: TTMSFNCChartPoint;
  var ALegendText: string);
begin
  ALegendText := ALegendText + ': ' + Format('%.0m', [APoint.YValue]);
end;

procedure TForm1166.TMSFNCChart1GetSerieYValue(Sender: TObject;
  ASerie: TTMSFNCChartSerie; AIndex: Integer;
  AKind: TTMSFNCChartDrawXYValueKind; AValue: Double; var AValueString: string);
begin
  if AKind = vkMinor then
    AValueString := '';
end;

procedure TForm1166.TMSFNCChart1SeriePointClick(Sender: TObject;
  APoint: TTMSFNCChartPoint);
var
  xv: String;
begin
  if RadioGroup1.ItemIndex = 3 then
    Exit;

  xv := APoint.XValueText;
  if xv = '' then
    xv := floattostr(APoint.XValue);

  ShowMessage(APoint.Serie.LegendText + ' Point at '+xv +' with value ' + floattostr(APoint.YValue) + ' Clicked');
end;

end.

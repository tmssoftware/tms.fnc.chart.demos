unit UDemo;

interface

uses
  Classes, FMX.Types, FMX.Forms, FMX.Controls, SysUtils, Math,
  FMX.TMSFNCChart, UITypes, DateUtils, FMX.TMSFNCTypes,
  FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes;

type
  TForm1166 = class(TForm)
    TMSFNCChart1: TTMSFNCChart;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1166: TForm1166;

implementation

{$R *.fmx}

procedure TForm1166.FormCreate(Sender: TObject);
var
  I, J: Integer;
  s: TTMSFNCChartSerie;
begin
  TMSFNCChart1.BeginUpdate;
  TMSFNCChart1.Clear;
  TMSFNCChart1.Title.Text := 'Daily Car Sales';
  TMSFNCChart1.Title.Height := 30;
  TMSFNCChart1.Title.TextHorizontalAlignment := gtaLeading;
  TMSFNCChart1.Title.Font.Color := gcDarkslategray;
  TMSFNCChart1.Title.Stroke.Color := gcDarkslategray;
  TMSFNCChart1.Title.Font.Size := 16;
  TMSFNCChart1.Title.Font.Style := TMSFNCChart1.Title.Font.Style + [TFontStyle.fsBold];
  TMSFNCChart1.Legend.Position := lpTopRight;
  TMSFNCChart1.Legend.Left := -3;
  TMSFNCChart1.Legend.Top := 3;
  TMSFNCChart1.Legend.Font.Size := 10;
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
  for I := 0 to 1 do
  begin
    s := TMSFNCChart1.Series.Add;
    if I = 0 then
    begin
      s.YValues.Positions := [ypLeft];
      s.XValues.Positions := [xpBottom];
      s.XGrid.Visible := True;
      s.YGrid.Visible := True;
      s.XValues.Title.Text := 'Week '+ inttostr(WeekOf(Now)) + ' of '+ FormatSettings.LongMonthNames[MonthOf(Now)];
      s.XValues.Title.Font.Color := gcDarkSlateGray;
      s.XValues.Title.Font.Size := 12;
      s.XValues.Title.Font.Style := s.YValues.Title.Font.Style + [TFontStyle.fsBold];
      s.XValues.Title.TextHorizontalAlignment := gtaTrailing;
      s.XValues.Title.TextMargins.Right := 10;

      s.YValues.Title.Text := 'Amount of cars';
      s.YValues.Title.Font.Color := gcDarkSlateGray;
      s.YValues.Title.Font.Size := 12;
      s.YValues.Title.Font.Style := s.YValues.Title.Font.Style + [TFontStyle.fsBold];
      s.YValues.Title.TextHorizontalAlignment := gtaLeading;
    end
    else
    begin
      s.YValues.Positions := [];
      s.XValues.Positions := [];
    end;

    s.AutoXRange := arEnabled;
    s.AutoYRange := arDisabled;
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
        s.Fill.ColorTo := gcDarkslategray;
        s.Stroke.Color := gcBlack;
        s.Labels.Font.Color := gcWhite;
      end;
      1:
      begin
        s.LegendText := 'Audi';
        s.Fill.Kind := gfkGradient;
        s.Fill.Orientation := gfoHorizontal;
        s.Fill.Color := gcLimeGreen;
        s.Fill.ColorTo := gcGreenyellow;
        s.Stroke.Color := gcDarkgreen;
      end;
    end;

    s.Labels.Fill.Color := s.Fill.Color;
    s.Labels.Stroke.Color := s.Stroke.Color;

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

    for J := 1 to 7 do
      s.AddPoint(RandomRange(50, 250), FormatSettings.ShortDayNames[J]);
  end;


  s := TMSFNCChart1.Series.Add;
  s.ChartType := ctLine;
  s.ShowInLegend := False;
  s.Stroke.Color := gcRed;
  s.AutoYRange := arDisabled;
  s.YValues.Positions := [];
  s.XValues.Positions := [];
  s.Mode := smStatistical;
  s.AutoXRange := arCommonZeroBased;
  s.Markers.Visible := True;
  s.Markers.Fill.Color := gcRed;
  s.Markers.Stroke.Color := gcDarkred;
  s.MinY := 0;
  s.MaxY := 300;

  for J := 1 to 7 do
  begin
    s.Points.Add.YValue := RandomRange(40, 150);
  end;

  TMSFNCChart1.EndUpdate;
end;

end.

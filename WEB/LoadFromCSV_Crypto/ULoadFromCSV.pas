unit ULoadFromCSV;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, Vcl.StdCtrls,
  WEBLib.StdCtrls, Vcl.Controls, WEBLib.ExtCtrls;

type
  TForm1 = class(TWebForm)
    Panel1: TWebPanel;
    Button1: TWebButton;
    Button2: TWebButton;
    Button3: TWebButton;
    Panel2: TWebPanel;
    TMSFNCCandleStickChart1: TTMSFNCCandleStickChart;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TMSFNCCandleStickChart1BeforeDrawSerieMultiPoint(Sender: TObject;
      AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
      var ADrawMultiPoint: TTMSFNCChartDrawMultiPoint;
      var ADefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FAppearance: Boolean;
    FAvg: Boolean;
  end;

var
  Form1: TForm1;

implementation

uses
  Generics.Defaults, DateUtils;

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  ds: Char;
begin
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  ds := FormatSettings.DateSeparator;
  FormatSettings.DateSeparator := '/';

  TMSFNCCandleStickChart1.DefaultLoadOptions.YRange := arDisabled;

  TMSFNCCandleStickChart1.DefaultLoadOptions.XValuesFormatType := vftDateTime;
  TMSFNCCandleStickChart1.DefaultLoadOptions.XValuesFormatString := 'dd-mm';
  TMSFNCCandleStickChart1.LoadFromCSVMultiPointData('LUNA.csv', 3, 4, 2, 1, -1, 0);

  FormatSettings.DateSeparator := ds;

  TMSFNCCandleStickChart1.BeginUpdate;

  TMSFNCCandleStickChart1.Series[0].XValues.Angle := 90;
  TMSFNCCandleStickChart1.Series[0].LegendText := 'Terra (LUNA)';
  TMSFNCCandleStickChart1.Series[0].Stroke.Width := 2;
  TMSFNCCandleStickChart1.Series[0].MinY := -10;
  TMSFNCCandleStickChart1.Series[0].MaxY := 110;
  TMSFNCCandleStickChart1.Series[0].MaxXOffsetPercentage := 5;

  TMSFNCCandleStickChart1.EndUpdate;

  if FAppearance then
    Button2Click(Self);
  if FAvg then
    Button3Click(Self);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FAppearance := True;

  TMSFNCCandleStickChart1.Fill.Kind := gfkGradient;
  TMSFNCCandleStickChart1.Fill.Color := $8D510A;
  TMSFNCCandleStickChart1.Fill.ColorTo := $5F3707;
  TMSFNCCandleStickChart1.Title.Height := 60;

  TMSFNCCandleStickChart1.Legend.Visible := False;

  TMSFNCCandleStickChart1.XAxis.Stroke.Color := gcWhite;
  TMSFNCCandleStickChart1.YAxis.Stroke.Color := gcWhite;
  TMSFNCCandleStickChart1.XAxis.AutoSize := False;
  TMSFNCCandleStickChart1.XAxis.Height := 60;
  TMSFNCCandleStickChart1.SeriesMargins.Right := 20;
  TMSFNCCandleStickChart1.SeriesMargins.Top := 20;
  TMSFNCCandleStickChart1.Title.Stroke.Color := gcWhite;
  TMSFNCCandleStickChart1.Title.Font.Size := 24;
  TMSFNCCandleStickChart1.Title.Height := 60;
  TMSFNCCandleStickChart1.Title.Line := False;

  TMSFNCCandleStickChart1.Series[0].YValues.MajorUnitFormatType := vftFloat;
  TMSFNCCandleStickChart1.Series[0].YValues.MajorUnitFormat := '$ 0.00';
  TMSFNCCandleStickChart1.Series[0].XGrid.Visible := True;
  TMSFNCCandleStickChart1.Series[0].YGrid.Visible := True;
  TMSFNCCandleStickChart1.Series[0].XGrid.MajorUnitStroke.Color := $937B5E;
  TMSFNCCandleStickChart1.Series[0].YGrid.MajorUnitStroke.Color := $937B5E;
  TMSFNCCandleStickChart1.Series[0].XGrid.Extended := False;
  TMSFNCCandleStickChart1.Series[0].YGrid.Extended := False;
  TMSFNCCandleStickChart1.Series[0].YValues.Title.Text := 'Price ($)';
  TMSFNCCandleStickChart1.Series[0].YValues.Title.TextMargins.Left := 10;
  TMSFNCCandleStickChart1.Series[0].XValues.Title.TextMargins.Bottom := 10;
  TMSFNCCandleStickChart1.Series[0].YValues.Title.Font.Size := 14;

  TMSFNCCandleStickChart1.Appearance.GlobalFont.Color := gcWhite;
  TMSFNCCandleStickChart1.Appearance.GlobalFont.Name := 'Gill Sans Nova';
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
begin
  FAvg := True;
  TMSFNCCandleStickChart1.AddMovingAverage(0, 0, TMSFNCCandleStickChart1.Series[0].Points.Count - 1, 2, False, $40cbf9, 2);

  for I := 0 to TMSFNCCandleStickChart1.Series.Count - 1 do
  begin
    TMSFNCCandleStickChart1.Series[I].AutoYRange := arDisabled;
    TMSFNCCandleStickChart1.Series[I].MinY := -10;
    TMSFNCCandleStickChart1.Series[I].MaxY := 110;
    TMSFNCCandleStickChart1.Series[I].MaxXOffsetPercentage := 5;
  end;

  TMSFNCCandleStickChart1.Series[1].Stroke.Kind := gskDash;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FAppearance := False;
  FAvg := False;
end;

procedure TForm1.TMSFNCCandleStickChart1BeforeDrawSerieMultiPoint(
  Sender: TObject; AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
  var ADrawMultiPoint: TTMSFNCChartDrawMultiPoint; var ADefaultDraw: Boolean);
begin
  if FAppearance then
  begin
    AGraphics.Fill.Kind := gfkGradient;

    if ADrawMultiPoint.PointOpen.Y >= ADrawMultiPoint.PointClose.Y then
    begin
      AGraphics.Fill.Color := $FBD871;
      AGraphics.Fill.ColorTo := $F9CB40;
      AGraphics.Stroke.Color := $FBD871;
    end
    else
    begin
      AGraphics.Fill.Color := $6432FC;
      AGraphics.Fill.ColorTo := $6F40F9;
      AGraphics.Stroke.Color := $6F40F9;
    end;
  end;
end;

end.

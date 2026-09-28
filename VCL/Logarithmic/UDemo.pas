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
    TMSFNCChart2: TTMSFNCChart;
    TMSFNCChart3: TTMSFNCChart;
    TMSFNCChart4: TTMSFNCChart;
    procedure FormResize(Sender: TObject);
    procedure TMSFNCChart1BeforeDrawSerieMarker(Sender: TObject;
      AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
      var ADrawPoint: TTMSFNCChartDrawPoint; var ADefaultDraw: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
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
  V, VV: Extended;
begin
  TMSFNCChart1.BeginUpdate;
  TMSFNCChart1.Title.Text := 'Linear';
  TMSFNCChart1.Title.Line := False;
  TMSFNCChart1.Legend.Position := lpTopRight;
  TMSFNCChart1.Legend.Left := -10;

  TMSFNCChart1.Series[0].XValues.MajorUnitFormat := TMSFNCChart1.Series[0].YValues.MajorUnitFormat;
  TMSFNCChart1.Series[1].XValues.MajorUnitFormat := TMSFNCChart1.Series[1].YValues.MajorUnitFormat;
  TMSFNCChart1.Series[2].XValues.MajorUnitFormat := TMSFNCChart1.Series[2].YValues.MajorUnitFormat;

  TMSFNCChart1.Series[0].MaxYOffsetPercentage := 0;
  TMSFNCChart1.Series[1].MaxYOffsetPercentage := 0;
  TMSFNCChart1.Series[2].MaxYOffsetPercentage := 0;

  TMSFNCChart1.Legend.Top := 10;

  TMSFNCChart1.Stroke.Color := gcWhite;

  TMSFNCChart1.Series[0].YValues.Title.Text := '';
  TMSFNCChart1.Series[1].YValues.Title.Text := '';
  TMSFNCChart1.Series[2].YValues.Title.Text := '';

  TMSFNCChart1.Series[0].XValues.Title.Text := '';
  TMSFNCChart1.Series[1].XValues.Title.Text := '';
  TMSFNCChart1.Series[2].XValues.Title.Text := '';

  TMSFNCChart1.Series[2].LegendText := 'exponential f(x) = 10x';
  TMSFNCChart1.Series[0].LegendText := 'linear f(x) = x';
  TMSFNCChart1.Series[1].LegendText := 'logarithmic f(x) = ln(x)';

  TMSFNCChart1.Series[0].ChartType := ctXYLine;

  TMSFNCChart1.Series[1].ChartType := ctXYLine;
  TMSFNCChart1.Series[2].ChartType := ctXYLine;

  TMSFNCChart1.Series[0].AutoXRange := arDisabled;
  TMSFNCChart1.Series[0].AutoYRange := arDisabled;
  TMSFNCChart1.Series[1].AutoXRange := arDisabled;
  TMSFNCChart1.Series[1].AutoYRange := arDisabled;
  TMSFNCChart1.Series[2].AutoXRange := arDisabled;
  TMSFNCChart1.Series[2].AutoYRange := arDisabled;

  TMSFNCChart1.Series[0].Points.Clear;
  TMSFNCChart1.Series[1].Points.Clear;
  TMSFNCChart1.Series[2].Points.Clear;

  TMSFNCChart1.Series[0].MaxX := 10;
  TMSFNCChart1.Series[0].MaxY := 10;
  TMSFNCChart1.Series[1].MaxX := 10;
  TMSFNCChart1.Series[1].MaxY := 10;
  TMSFNCChart1.Series[2].MaxX := 10;
  TMSFNCChart1.Series[2].MaxY := 10;

  TMSFNCChart1.Series[0].MinX := -1;
  TMSFNCChart1.Series[0].MinY := -1;
  TMSFNCChart1.Series[1].MinX := -1;
  TMSFNCChart1.Series[1].MinY := -1;
  TMSFNCChart1.Series[2].MinX := -1;
  TMSFNCChart1.Series[2].MinY := -1;

  v := -1;
  while v < 100 do
  begin
    Randomize;
    if v >= 1 then
    begin
      vv := Log10(v);
      TMSFNCChart1.Series[1].AddXYPoint(v, vv);
    end;

    if v > 0 then
      TMSFNCChart1.Series[0].AddXYPoint(v, v);

    if (v >= 0) and (v <= 10) then
      TMSFNCChart1.Series[2].AddXYPoint(v, Power(10, v));

    if v < 1 then
      v := v + 0.1
    else
      v := v + 1;
  end;

  TMSFNCChart1.EndUpdate;

  TMSFNCChart2.BeginUpdate;
  TMSFNCChart2.Assign(TMSFNCChart1);
  TMSFNCChart2.Title.Text := 'Semi-Log X';
  TMSFNCChart2.Series[0].LogarithmicX := True;
  TMSFNCChart2.Series[1].LogarithmicX := True;
  TMSFNCChart2.Series[2].LogarithmicX := True;

  TMSFNCChart2.Series[0].MaxX := 1000;
  TMSFNCChart2.Series[1].MaxX := 1000;
  TMSFNCChart2.Series[2].MaxX := 1000;

  TMSFNCChart2.Series[0].MinX := 0.01;
  TMSFNCChart2.Series[1].MinX := 0.01;
  TMSFNCChart2.Series[2].MinX := 0.01;

  TMSFNCChart2.EndUpdate;

  TMSFNCChart3.BeginUpdate;
  TMSFNCChart3.Assign(TMSFNCChart1);
  TMSFNCChart3.Title.Text := 'Semi-Log Y';
  TMSFNCChart3.Series[0].LogarithmicY := True;
  TMSFNCChart3.Series[1].LogarithmicY := True;
  TMSFNCChart3.Series[2].LogarithmicY := True;

  TMSFNCChart3.Series[0].MaxY := 1000;
  TMSFNCChart3.Series[1].MaxY := 1000;
  TMSFNCChart3.Series[2].MaxY := 1000;

  TMSFNCChart3.Series[0].MinY := 0.01;
  TMSFNCChart3.Series[1].MinY := 0.01;
  TMSFNCChart3.Series[2].MinY := 0.01;

  TMSFNCChart3.EndUpdate;

  TMSFNCChart4.BeginUpdate;
  TMSFNCChart4.Assign(TMSFNCChart1);
  TMSFNCChart4.Series[0].LogarithmicX := True;
  TMSFNCChart4.Series[1].LogarithmicX := True;
  TMSFNCChart4.Series[2].LogarithmicX := True;
  TMSFNCChart4.Series[0].LogarithmicY := True;
  TMSFNCChart4.Series[1].LogarithmicY := True;
  TMSFNCChart4.Series[2].LogarithmicY := True;
  TMSFNCChart4.Title.Text := 'Log-Log';

  TMSFNCChart4.Series[0].MaxX := 1000;
  TMSFNCChart4.Series[1].MaxX := 1000;
  TMSFNCChart4.Series[2].MaxX := 1000;

  TMSFNCChart4.Series[0].MinX := 0.01;
  TMSFNCChart4.Series[1].MinX := 0.01;
  TMSFNCChart4.Series[2].MinX := 0.01;

  TMSFNCChart4.Series[0].MaxY := 1000;
  TMSFNCChart4.Series[1].MaxY := 1000;
  TMSFNCChart4.Series[2].MaxY := 1000;

  TMSFNCChart4.Series[0].MinY := 0.01;
  TMSFNCChart4.Series[1].MinY := 0.01;
  TMSFNCChart4.Series[2].MinY := 0.01;

  TMSFNCChart4.EndUpdate;

  TMSFNCChart1.Appearance.ColorScheme := ccsExcel;
  TMSFNCChart2.Appearance.ColorScheme := ccsExcel;
  TMSFNCChart3.Appearance.ColorScheme := ccsExcel;
  TMSFNCChart4.Appearance.ColorScheme := ccsExcel;
end;

procedure TForm1166.FormCreate(Sender: TObject);
begin
  BuildChart;
end;

procedure TForm1166.FormResize(Sender: TObject);
begin
  BuildChart;

  TMSFNCChart1.BeginUpdate;
  TMSFNCChart1.Left := 0;
  TMSFNCChart1.Top := 0;
  TMSFNCChart1.Width := ClientWidth div 2;
  TMSFNCChart1.Height := ClientHeight div 2;
  TMSFNCChart1.EndUpdate;

  TMSFNCChart2.BeginUpdate;
  TMSFNCChart2.Left := 0;
  TMSFNCChart2.Top := TMSFNCChart1.Height;
  TMSFNCChart2.Width := ClientWidth div 2;
  TMSFNCChart2.Height := ClientHeight div 2;
  TMSFNCChart2.EndUpdate;

  TMSFNCChart3.BeginUpdate;
  TMSFNCChart3.Left := TMSFNCChart1.Width;
  TMSFNCChart3.Top := 0;
  TMSFNCChart3.Width := ClientWidth div 2;
  TMSFNCChart3.Height := ClientHeight div 2;
  TMSFNCChart3.EndUpdate;

  TMSFNCChart4.BeginUpdate;
  TMSFNCChart4.Left := TMSFNCChart1.Width;
  TMSFNCChart4.Top := TMSFNCChart1.Height;
  TMSFNCChart4.Width := ClientWidth div 2;
  TMSFNCChart4.Height := ClientHeight div 2;
  TMSFNCChart4.EndUpdate;
end;

procedure TForm1166.TMSFNCChart1BeforeDrawSerieMarker(Sender: TObject;
  AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
  var ADrawPoint: TTMSFNCChartDrawPoint; var ADefaultDraw: Boolean);
begin
  if ASerie.Index = 1 then
    ADefaultDraw := (ADrawPoint.Reference.Index mod 10) = 0
  else
    ADefaultDraw := (ADrawPoint.Reference.Index mod 4) = 0;
end;

end.

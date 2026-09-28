unit UExportSVG;

interface

uses
  System.Classes,
  System.IOUtils,
  System.SysUtils,
  System.Types,
  System.UITypes,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.StdCtrls,
  VCL.TMSFNCChart,
  VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsSVGEngine,
  VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCTypes,
  VCL.TMSFNCUtils;

type
  TFormExportSVG = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    FChart: TTMSFNCChart;
    FStatusLabel: TLabel;
    procedure AddData;
    procedure BuildInterface;
    procedure ConfigureChart;
    procedure ExportChartToSVG(Sender: TObject);
    function ExportFileName: string;
  end;

var
  FormExportSVG: TFormExportSVG;

implementation

{$R *.dfm}

procedure TFormExportSVG.AddData;
const
  Periods: array[0..7] of string = (
    'Q1 25', 'Q2 25', 'Q3 25', 'Q4 25',
    'Q1 26', 'Q2 26', 'Q3 26', 'Q4 26');
  Revenue: array[0..7] of Double = (
    128, 136, 149, 158, 171, 184, 193, 207);
  Target: array[0..7] of Double = (
    124, 133, 143, 154, 166, 178, 190, 202);
  Margin: array[0..7] of Double = (
    31, 34, 37, 39, 42, 45, 47, 51);
var
  I: Integer;
  MarginSerie: TTMSFNCChartSerie;
  RevenueSerie: TTMSFNCChartSerie;
  TargetSerie: TTMSFNCChartSerie;
begin
  MarginSerie := FChart.Series.Add;
  MarginSerie.LegendText := 'Operating margin';
  MarginSerie.ChartType := ctArea;
  MarginSerie.AutoYRange := arCommonZeroBased;
  MarginSerie.Mode := smStatistical;
  MarginSerie.AutoXRange := arCommon;
  MarginSerie.YValues.Positions := [ypLeft];
  MarginSerie.XValues.Positions := [xpBottom];
  MarginSerie.XGrid.Visible := True;
  MarginSerie.YGrid.Visible := True;
  MarginSerie.XValues.Title.Text := 'Fiscal quarter';
  MarginSerie.YValues.Title.Text := 'Value in millions';
  MarginSerie.Fill.Color := MakeGraphicsColor(219, 235, 244);
  MarginSerie.Fill.ColorTo := MakeGraphicsColor(247, 250, 252);
  MarginSerie.Stroke.Color := MakeGraphicsColor(116, 151, 169);
  MarginSerie.Stroke.Width := 2;
  MarginSerie.MaxYOffsetPercentage := 20;

  RevenueSerie := FChart.Series.Add;
  RevenueSerie.LegendText := 'Revenue';
  RevenueSerie.ChartType := ctBar;
  RevenueSerie.Mode := smStatistical;
  RevenueSerie.AutoYRange := arCommonZeroBased;
  RevenueSerie.AutoXRange := arCommon;
  RevenueSerie.YValues.Positions := [];
  RevenueSerie.XValues.Positions := [];
  RevenueSerie.Bar.Width := 54;
  RevenueSerie.Fill.Color := MakeGraphicsColor(48, 88, 121);
  RevenueSerie.Fill.ColorTo := MakeGraphicsColor(79, 125, 159);
  RevenueSerie.Stroke.Color := MakeGraphicsColor(36, 66, 92);
  RevenueSerie.Labels.Visible := True;
  RevenueSerie.Labels.Format := '%.0f';
  RevenueSerie.Labels.Font.Color := MakeGraphicsColor(40, 54, 65);
  RevenueSerie.MaxYOffsetPercentage := 20;

  TargetSerie := FChart.Series.Add;
  TargetSerie.LegendText := 'Plan';
  TargetSerie.ChartType := ctLine;
  TargetSerie.Mode := smStatistical;
  TargetSerie.AutoYRange := arCommonZeroBased;
  TargetSerie.AutoXRange := arCommon;
  TargetSerie.YValues.Positions := [];
  TargetSerie.XValues.Positions := [];
  TargetSerie.Stroke.Color := MakeGraphicsColor(202, 119, 48);
  TargetSerie.Stroke.Width := 3;
  TargetSerie.Markers.Visible := True;
  TargetSerie.Markers.Width := 9;
  TargetSerie.Markers.Height := 9;
  TargetSerie.Markers.Fill.Color := gcWhite;
  TargetSerie.Markers.Stroke.Color := MakeGraphicsColor(202, 119, 48);
  TargetSerie.MaxYOffsetPercentage := 20;

  for I := Low(Periods) to High(Periods) do
  begin
    MarginSerie.AddPoint(Margin[I], Periods[I]);
    RevenueSerie.AddPoint(Revenue[I], Periods[I]);
    TargetSerie.AddPoint(Target[I], Periods[I]);
  end;
end;

procedure TFormExportSVG.BuildInterface;
var
  Button: TButton;
  HeaderPanel: TPanel;
  StatusPanel: TPanel;
  SubtitleLabel: TLabel;
  TitleLabel: TLabel;
begin
  HeaderPanel := TPanel.Create(Self);
  HeaderPanel.Parent := Self;
  HeaderPanel.Align := alTop;
  HeaderPanel.Height := 94;
  HeaderPanel.BevelOuter := bvNone;
  HeaderPanel.Color := clWhite;

  TitleLabel := TLabel.Create(HeaderPanel);
  TitleLabel.Parent := HeaderPanel;
  TitleLabel.Align := alTop;
  TitleLabel.Height := 48;
  TitleLabel.Margins.Left := 18;
  TitleLabel.Margins.Top := 12;
  TitleLabel.Caption := 'TMS FNC Chart SVG Export';
  TitleLabel.Font.Size := 20;
  TitleLabel.Font.Style := [fsBold];
  TitleLabel.Layout := tlCenter;

  SubtitleLabel := TLabel.Create(HeaderPanel);
  SubtitleLabel.Parent := HeaderPanel;
  SubtitleLabel.Align := alClient;
  SubtitleLabel.Margins.Left := 18;
  SubtitleLabel.Margins.Right := 18;
  SubtitleLabel.Caption := 'A polished revenue dashboard exported as a scalable vector graphic.';
  SubtitleLabel.Font.Size := 10;
  SubtitleLabel.Layout := tlCenter;

  StatusPanel := TPanel.Create(Self);
  StatusPanel.Parent := Self;
  StatusPanel.Align := alTop;
  StatusPanel.Height := 64;
  StatusPanel.BevelOuter := bvNone;
  StatusPanel.Color := clWhite;

  Button := TButton.Create(StatusPanel);
  Button.Parent := StatusPanel;
  Button.Align := alLeft;
  Button.AlignWithMargins := True;
  Button.Width := 180;
  Button.Margins.Left := 18;
  Button.Margins.Top := 10;
  Button.Margins.Bottom := 10;
  Button.Caption := 'Export SVG';
  Button.OnClick := ExportChartToSVG;

  FStatusLabel := TLabel.Create(StatusPanel);
  FStatusLabel.Parent := StatusPanel;
  FStatusLabel.Align := alClient;
  FStatusLabel.AlignWithMargins := True;
  FStatusLabel.Margins.Left := 16;
  FStatusLabel.Margins.Right := 18;
  FStatusLabel.Caption := 'SVG output preserves chart text, paths, markers, labels, and annotations.';
  FStatusLabel.Font.Size := 10;
  FStatusLabel.Layout := tlCenter;

  FChart := TTMSFNCChart.Create(Self);
  FChart.Parent := Self;
  FChart.Align := alClient;
  FChart.AlignWithMargins := True;
  FChart.Margins.Left := 18;
  FChart.Margins.Top := 14;
  FChart.Margins.Right := 18;
  FChart.Margins.Bottom := 18;
end;

procedure TFormExportSVG.ConfigureChart;
begin
  FChart.BeginUpdate;
  try
    FChart.Clear;
    FChart.Fill.Color := gcWhite;
    FChart.Stroke.Color := MakeGraphicsColor(205, 214, 222);
    FChart.Title.Text := 'Quarterly Revenue Performance';
    FChart.Title.Height := 72;
    FChart.Title.Font.Size := 20;
    FChart.Title.Font.Style := FChart.Title.Font.Style + [TFontStyle.fsBold];
    FChart.Title.Font.Color := MakeGraphicsColor(27, 49, 76);
    FChart.Legend.Visible := True;
    FChart.Legend.Position := lpTopLeft;
    FChart.Legend.Fill.Color := gcWhite;
    FChart.Legend.Stroke.Color := MakeGraphicsColor(215, 224, 231);
    FChart.Legend.Font.Color := gcDarkslategray;
    FChart.XAxis.Positions := [xpBottom];
    FChart.YAxis.Positions := [ypLeft];
    FChart.XAxis.Stroke.Color := MakeGraphicsColor(146, 160, 174);
    FChart.YAxis.Stroke.Color := MakeGraphicsColor(146, 160, 174);
    AddData;
  finally
    FChart.EndUpdate;
  end;
end;

function TFormExportSVG.ExportFileName: string;
begin
  Result := TPath.Combine(TPath.GetDocumentsPath, 'TMSFNCChart_SVG_Export.svg');
end;

procedure TFormExportSVG.ExportChartToSVG(Sender: TObject);
var
  Exporter: ITMSFNCGraphicsExport;
  ExportHeight: Integer;
  ExportWidth: Integer;
  FileName: string;
  SVG: TTMSFNCGraphicsSVG;
begin
  ExportWidth := Round(FChart.Width);
  ExportHeight := Round(FChart.Height);
  if ExportWidth <= 0 then
    ExportWidth := 1120;
  if ExportHeight <= 0 then
    ExportHeight := 620;

  SVG := TTMSFNCGraphicsSVG.Create(ExportWidth, ExportHeight);
  try
    SVG.BeginScene;
    try
      Exporter := FChart as ITMSFNCGraphicsExport;
      Exporter.Export(SVG, RectF(0, 0, ExportWidth, ExportHeight));
    finally
      SVG.EndScene;
    end;

    FileName := ExportFileName;
    TFile.WriteAllText(FileName, SVG.Build, TEncoding.UTF8);
    FStatusLabel.Caption := 'Exported to ' + FileName;
    TTMSFNCUtils.OpenFile(FileName);
  finally
    SVG.Free;
  end;
end;

procedure TFormExportSVG.FormCreate(Sender: TObject);
begin
  BuildInterface;
  ConfigureChart;
end;

end.

unit ULoadFromCSV;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCChart, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    AppBtn: TButton;
    AvgBtn: TButton;
    LoadBtn: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    TMSFNCCandleStickChart1: TTMSFNCCandleStickChart;
    procedure FormCreate(Sender: TObject);
    procedure TMSFNCCandleStickChart1BeforeDrawSerieMultiPoint(Sender: TObject;
      AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie;
      var ADrawMultiPoint: TTMSFNCChartDrawMultiPoint;
      var ADefaultDraw: Boolean);
    procedure AppBtnClick(Sender: TObject);
    procedure AvgBtnClick(Sender: TObject);
    procedure LoadBtnClick(Sender: TObject);
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

{$R *.fmx}

uses
  Generics.Defaults, DateUtils;

procedure TForm1.AppBtnClick(Sender: TObject);
begin
  FAppearance := True;

  TMSFNCCandleStickChart1.Fill.Kind := gfkGradient;
  TMSFNCCandleStickChart1.Fill.Color := $FF0A518D;
  TMSFNCCandleStickChart1.Fill.ColorTo := $FF07375F;
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
  TMSFNCCandleStickChart1.Series[0].XGrid.MajorUnitStroke.Color := $4BFFFFFF;
  TMSFNCCandleStickChart1.Series[0].YGrid.MajorUnitStroke.Color := $4BFFFFFF;
  TMSFNCCandleStickChart1.Series[0].XGrid.Extended := False;
  TMSFNCCandleStickChart1.Series[0].YGrid.Extended := False;
  TMSFNCCandleStickChart1.Series[0].YValues.Title.Text := 'Price ($)';
  TMSFNCCandleStickChart1.Series[0].YValues.Title.TextMargins.Left := 10;
  TMSFNCCandleStickChart1.Series[0].XValues.Title.TextMargins.Bottom := 10;
  TMSFNCCandleStickChart1.Series[0].YValues.Title.Font.Size := 14;

  TMSFNCCandleStickChart1.Appearance.GlobalFont.Color := gcWhite;
  TMSFNCCandleStickChart1.Appearance.GlobalFont.Name := 'Gill Sans Nova';
end;

procedure TForm1.AvgBtnClick(Sender: TObject);
var
  I: Integer;
begin
  FAvg := True;
  TMSFNCCandleStickChart1.AddMovingAverage(0, 0, TMSFNCCandleStickChart1.Series[0].Points.Count - 1, 2, False, $FFf9cb40, 2);

  for I := 0 to TMSFNCCandleStickChart1.Series.Count - 1 do
  begin
    TMSFNCCandleStickChart1.Series[I].AutoYRange := arDisabled;
    TMSFNCCandleStickChart1.Series[I].MinY := -10;
    TMSFNCCandleStickChart1.Series[I].MaxY := 110;
    TMSFNCCandleStickChart1.Series[I].MaxXOffsetPercentage := 5;
  end;

  TMSFNCCandleStickChart1.Series[1].Stroke.Kind := gskDash;
end;

procedure TForm1.LoadBtnClick(Sender: TObject);
var
  c: IComparer<TCollectionItem>;
begin
  c := TDelegatedComparer<TCollectionItem>.Create(
    function(const Item1, Item2: TCollectionItem): Integer
    begin
      Result := CompareValueEx(TTMSFNCChartPoint(Item1).XValue, TTMSFNCChartPoint(Item2).XValue);
    end
    );

  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  TMSFNCCandleStickChart1.DefaultLoadOptions.CSVDelimiter := ',';
  TMSFNCCandleStickChart1.DefaultLoadOptions.XRange := arEnabled;
  TMSFNCCandleStickChart1.DefaultLoadOptions.YRange := arDisabled;

  TMSFNCCandleStickChart1.DefaultLoadOptions.XValuesFormatType := vftDateTime;
  TMSFNCCandleStickChart1.DefaultLoadOptions.XValuesFormatString := 'dd-mm';
  TMSFNCCandleStickChart1.LoadFromCSVMultiPointData('..\..\LUNA.csv', 3, 4, 2, 1, -1, 0);

  TMSFNCCandleStickChart1.Series[0].Points.Sort(c);

  TMSFNCCandleStickChart1.Series[0].XValues.Angle := 90;
  TMSFNCCandleStickChart1.Series[0].LegendText := 'Terra (LUNA)';
  TMSFNCCandleStickChart1.Series[0].Stroke.Width := 2;
  TMSFNCCandleStickChart1.Series[0].MinY := -10;
  TMSFNCCandleStickChart1.Series[0].MaxY := 110;
  TMSFNCCandleStickChart1.Series[0].MaxXOffsetPercentage := 5;

  if FAppearance then
    AppBtnClick(Self);
  if FAvg then
    AvgBtnClick(Self);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FAppearance := False;
  FAvg := False;
end;

procedure TForm1.TMSFNCCandleStickChart1BeforeDrawSerieMultiPoint(Sender: TObject; AGraphics: TTMSFNCGraphics; ASerie: TTMSFNCChartSerie; var ADrawMultiPoint: TTMSFNCChartDrawMultiPoint; var ADefaultDraw: Boolean);
begin
  if FAppearance then
  begin
    AGraphics.Fill.Kind := gfkGradient;

    if ADrawMultiPoint.PointOpen.Y >= ADrawMultiPoint.PointClose.Y then
    begin
      AGraphics.Fill.Color := $FF71d8fb;
      AGraphics.Fill.ColorTo := $FF40CBF9;
      AGraphics.Stroke.Color := $FF71d8fb;
    end
    else
    begin
      AGraphics.Fill.Color := $FFFC3264;
      AGraphics.Fill.ColorTo := $FFf9406f;
      AGraphics.Stroke.Color := $FFf9406f;
    end;
  end;
end;

end.

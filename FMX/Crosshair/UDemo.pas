unit UDemo;

interface

uses
  Classes, FMX.TMSFNCChart, FMX.TMSFNCChartEditor, FMX.StdCtrls, FMX.Controls,
  FMX.Types, FMX.ListBox, FMX.Forms, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes, UITypes, SysUtils,
  DateUtils, Math, FMX.Dialogs, FMX.TMSFNCTypes, FMX.TMSFNCUtils,
  FMX.Controls.Presentation;

type
  TForm1166 = class(TForm)
    Panel1: TPanel;
    TMSFNCChart1: TTMSFNCChart;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    Label2: TLabel;
    CheckBox3: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox4: TCheckBox;
    ComboBox1: TComboBox;
    procedure CheckBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure TMSFNCChart1GetSerieXAxisCrosshairText(Sender: TObject;
      ASerie: TTMSFNCChartSerie; AValue: Double;
      APosition: TTMSFNCChartXAxisPosition; AMode: TTMSFNCChartCrosshairMode;
      var AText: string);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuildChart;
  end;

var
  Form1166: TForm1166;

implementation

{$R *.fmx}

procedure TForm1166.BuildChart;
var
  I: Integer;
begin
  TMSFNCChart1.BeginUpdate;
  TMSFNCChart1.Crosshair.Visible := True;
  for I := 0 to TMSFNCChart1.Series.Count - 1 do
    TMSFNCChart1.Series[I].Markers.Visible := False;
  TMSFNCChart1.EndUpdate;
end;

procedure TForm1166.CheckBox1Change(Sender: TObject);
begin
  TMSFNCChart1.Crosshair.Visible := CheckBox1.IsChecked;
end;

procedure TForm1166.CheckBox2Change(Sender: TObject);
begin
  if CheckBox2.IsChecked then
    TMSFNCChart1.Crosshair.Modes := TMSFNCChart1.Crosshair.Modes + [ccmContinuous]
  else
    TMSFNCChart1.Crosshair.Modes := TMSFNCChart1.Crosshair.Modes - [ccmContinuous];
end;

procedure TForm1166.CheckBox3Change(Sender: TObject);
begin
  if CheckBox3.IsChecked then
    TMSFNCChart1.Crosshair.Modes := TMSFNCChart1.Crosshair.Modes + [ccmPointBased]
  else
    TMSFNCChart1.Crosshair.Modes := TMSFNCChart1.Crosshair.Modes - [ccmPointBased];
end;

procedure TForm1166.ComboBox1Change(Sender: TObject);
var
  I: Integer;
begin
  TMSFNCChart1.BeginUpdate;
  for I := 0 to TMSFNCChart1.Series.Count - 1 do
  begin
    case ComboBox1.ItemIndex of
      0: TMSFNCChart1.Series[I].ChartType := ctLine;
      1: TMSFNCChart1.Series[I].ChartType := ctBar;
      2: TMSFNCChart1.Series[I].ChartType := ctStackedBar;
      3: TMSFNCChart1.Series[I].ChartType := ctArea;
      4: TMSFNCChart1.Series[I].ChartType := ctStackedArea;
    end;
  end;
  TMSFNCChart1.EndUpdate;
end;

procedure TForm1166.FormCreate(Sender: TObject);
begin
  BuildChart;
  TMSFNCChart1.Margins.Top := 5;
  TMSFNCChart1.Margins.Right := 5;
  TMSFNCChart1.Margins.Bottom := 5;
end;

procedure TForm1166.TMSFNCChart1GetSerieXAxisCrosshairText(Sender: TObject;
  ASerie: TTMSFNCChartSerie; AValue: Double;
  APosition: TTMSFNCChartXAxisPosition; AMode: TTMSFNCChartCrosshairMode;
  var AText: string);
begin
  if CheckBox4.IsChecked then
    AText := 'Value detected: <b>' + AText + '</b>';
end;

end.

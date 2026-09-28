unit Unit1;

interface

uses
  System.Classes, WEBLib.Forms, VCL.Graphics, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, Vcl.StdCtrls,
  WEBLib.StdCtrls, Vcl.Controls, WEBLib.ExtCtrls, WEBLib.Controls;

type
  TForm1166 = class(TWebForm)
    Panel1: TWebPanel;
    CheckBox1: TWebCheckBox;
    Label1: TWebLabel;
    Label3: TWebLabel;
    CheckBox2: TWebCheckBox;
    Label2: TWebLabel;
    CheckBox3: TWebCheckBox;
    Label4: TWebLabel;
    Label5: TWebLabel;
    CheckBox4: TWebCheckBox;
    ComboBox1: TWebComboBox;
    TMSFNCChart1: TTMSFNCChart;
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TMSFNCChart1GetSerieXAxisCrosshairText(Sender: TObject;
      ASerie: TTMSFNCChartSerie; AValue: Double;
      APosition: TTMSFNCChartXAxisPosition; AMode: TTMSFNCChartCrosshairMode;
      var AText: string);
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
  I: Integer;
begin
  TMSFNCChart1.BeginUpdate;
  TMSFNCChart1.Crosshair.Visible := True;
  for I := 0 to TMSFNCChart1.Series.Count - 1 do
    TMSFNCChart1.Series[I].Markers.Visible := False;
  TMSFNCChart1.EndUpdate;
end;

procedure TForm1166.CheckBox1Click(Sender: TObject);
begin
  TMSFNCChart1.Crosshair.Visible := CheckBox1.Checked;
end;

procedure TForm1166.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
    TMSFNCChart1.Crosshair.Modes := TMSFNCChart1.Crosshair.Modes + [ccmContinuous]
  else
    TMSFNCChart1.Crosshair.Modes := TMSFNCChart1.Crosshair.Modes - [ccmContinuous];
end;

procedure TForm1166.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then
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
end;

procedure TForm1166.TMSFNCChart1GetSerieXAxisCrosshairText(Sender: TObject;
  ASerie: TTMSFNCChartSerie; AValue: Double;
  APosition: TTMSFNCChartXAxisPosition; AMode: TTMSFNCChartCrosshairMode;
  var AText: string);
begin
  if CheckBox4.Checked then
    AText := 'Value detected: <b>' + AText + '</b>';
end;

end.

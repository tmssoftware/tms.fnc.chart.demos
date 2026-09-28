unit ULoadFromArrayDemo;

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
    TMSFNCBarChart1: TTMSFNCBarChart;
    Button4: TWebButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  loadOptions: TTMSFNCChartLoadOptions;
begin
  Button4.Enabled := False;

  loadOptions := TTMSFNCChartLoadOptions.Create;
  try
    loadOptions.YRange := arEnabledZeroBased;

    TMSFNCBarChart1.LoadFromDataArray(loadOptions, 0, [123, 98, 54, 154, 128, 87, 103], nil, ['Apple', 'Watermelon', 'Pineapple', 'Pear', 'Banana', 'Lemon','Grapefruit', 'Peach']).LegendText := 'Sold';

  finally
    loadOptions.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  s: TTMSFNCChartSerie;
begin
  Button4.Enabled := False;

  s := TMSFNCBarChart1.AddSeriesFromDataArray([0.88, 1.32, 2.43, 0.76, 0.44, 1.03, 1.10]);
  s.YValues.Positions := [ypLeft];
  s.LegendText := 'Price';
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  s: TTMSFNCChartSerie;
begin
  s := TMSFNCBarChart1.LoadFromMultiPointDataArray(0, [82.63, 81.81, 82.44, 91.24, 95.92], [79.11, 79.99, 77.13, 75.71, 88.51], [81.56, 80.34, 80.94, 77.19, 91.01], [80.37, 80.94, 77.25, 91.00, 95.48]);
  s.ChartType := ctOHLC;
  s.XValues.AutoUnits := False;

  Button4.Enabled := True;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  s: TTMSFNCChartSerie;
begin
  s := TMSFNCBarChart1.AppendFromMultiPointDataArray(0, [97.38, 99.41, 96.84, 94.02, 92.27], [93.43, 90.02, 90.56, 88.82, 88.53], [95.48, 94.72, 90.74, 93.52, 89.30], [94.72, 90.72, 93.52, 89.28, 90.53]);
  s.ChartType := ctOHLC;
  s.XValues.AutoUnits := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TMSFNCBarChart1.DefaultLoadOptions.YValuesFormatType := vftFloat;
  TMSFNCBarChart1.DefaultLoadOptions.YValuesFormatString := '#0.0';
  Button4.Enabled := False;
end;

end.


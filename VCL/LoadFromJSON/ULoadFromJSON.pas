unit ULoadFromJSON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, Vcl.StdCtrls,
  Vcl.ExtCtrls, JSON;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    TMSFNCBarChart1: TTMSFNCBarChart;
    Button4: TButton;
    Memo1: TMemo;
    Splitter1: TSplitter;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure TMSFNCBarChart1JSONAddSeries(ASender: TObject;
      ASerie: TTMSFNCChartSerie; ASerieJSONValue: TJSONValue);
    procedure TMSFNCBarChart1JSONAddPoint(ASender: TObject;
      ASerie: TTMSFNCChartSerie; APoint: TTMSFNCChartPoint;
      APointJSONValue: TJSONValue);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pieType: Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TMSFNCBarChart1.LoadFromJSONData('..\..\sales.json', 'financialreport', 'financials', 'revenue', '', 'date');
  Memo1.Lines.LoadFromFile('..\..\sales.json');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  loadOptions: TTMSFNCChartLoadOptions;
begin

  loadOptions := TTMSFNCChartLoadOptions.Create;
  try
    loadOptions.YRange := arEnabledZeroBased;
//    loadOptions.ClearSeries := False;

    TMSFNCBarChart1.LoadFromJSONData('..\..\letter.json', loadOptions, '', '', 'Freq', '', 'Letter');
  finally
    loadOptions.Free;
  end;

  Memo1.Lines.LoadFromFile('..\..\letter.json');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  TMSFNCBarChart1.LoadFromJSONData('..\..\multipleSales.json', 'financialreport', 'financials', ['revenue', 'expenses', 'profits'], nil, ['date']);
  Memo1.Lines.LoadFromFile('..\..\multipleSales.json');

  TMSFNCBarChart1.Series[0].LegendText := 'Revenue';
  TMSFNCBarChart1.Series[1].LegendText := 'Expenses';
  TMSFNCBarChart1.Series[2].LegendText := 'Profits';
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  loadOptions: TTMSFNCChartLoadOptions;
begin
  loadOptions := TTMSFNCChartLoadOptions.Create;
  try
    loadOptions.YRange := arEnabledZeroBased;
    TMSFNCBarChart1.LoadFromJSONData('..\..\values.json', loadoptions, 'series', 'values');
  finally
    loadOptions.Free;
  end;

  Memo1.Lines.LoadFromFile('..\..\values.json');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   pieType := True;

  TMSFNCBarChart1.LoadFromJSONData('..\..\pie.json', 'chart', 'data', 'value', '', 'x',
  procedure(ASerie: TTMSFNCChartSerie; ASerieJSONValue: TJSONValue)
  begin
    ASerie.ChartType := ctPie;
    ASerie.Legend.Visible := True;
  end
  );
  Memo1.Lines.LoadFromFile('..\..\pie.json');

  TMSFNCBarChart1.Legend.Visible := False;
  pieType := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TMSFNCBarChart1.DefaultLoadOptions.YValuesFormatType := vftFloat;
  TMSFNCBarChart1.DefaultLoadOptions.YValuesFormatString := '#0.0';
end;

procedure TForm1.TMSFNCBarChart1JSONAddPoint(ASender: TObject; ASerie: TTMSFNCChartSerie; APoint: TTMSFNCChartPoint; APointJSONValue: TJSONValue);
var
  j: TJSONValue;
  s: string;
begin
  if pieType then
  begin
    j := TTMSFNCUtils.GetJSONValue(APointJSONValue, 'fill');
    if Assigned(j) then
    begin
      s :=  TTMSFNCUtils.GetJSONProp(APointJSONValue, 'fill');

      if s = 'green' then
        APoint.Color := gcGreen
      else if s = 'orange' then
        APoint.Color := gcOrange
      else if s = 'yellow' then
        APoint.Color := gcYellow;

      APoint.LegendText := APoint.XValueText;
    end;
  end;
end;

procedure TForm1.TMSFNCBarChart1JSONAddSeries(ASender: TObject; ASerie: TTMSFNCChartSerie; ASerieJSONValue: TJSONValue);
var
  j: TJSONValue;
begin
  ASerie.XValues.AutoUnits := False;

  j := TTMSFNCUtils.GetJSONValue(ASerieJSONValue, 'companystock');
  if Assigned(j) then
    ASerie.LegendText := TTMSFNCUtils.GetJSONProp(ASerieJSONValue, 'companystock');
end;

end.

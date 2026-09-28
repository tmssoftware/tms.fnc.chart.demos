unit UDatabaseAdapterDemo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.StdCtrls, FMX.TMSFNCChart, FMX.Controls.Presentation,
  FMX.TMSFNCCustomComponent, FMX.TMSFNCChartDatabaseAdapter, Data.DB,
  Datasnap.DBClient, FMX.ListBox;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    V: TPanel;
    TMSFNCChart1: TTMSFNCChart;
    ConnectButton: TButton;
    AutoCreateCB: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    YValCombo: TComboBox;
    XValCombo: TComboBox;
    XLabCombo: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ConnectButtonClick(Sender: TObject);
    procedure TMSFNCChartDatabaseAdapter1SetFieldValueType(Sender: TObject;
      AFieldName: string; AField: TField;
      var AValueType: TTMSFNCChartPointValueType);
    procedure AutoCreateCBChange(Sender: TObject);
    procedure TMSFNCChartDatabaseAdapter1FieldsToSeries(Sender: TObject;
      AFields: TFields; ASeries: TTMSFNCChartSerie);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.AutoCreateCBChange(Sender: TObject);
begin
  YValCombo.Enabled := not AutoCreateCB.IsChecked;
  XValCombo.Enabled := not AutoCreateCB.IsChecked;
  XLabCombo.Enabled := not AutoCreateCB.IsChecked;
end;

procedure TForm1.ConnectButtonClick(Sender: TObject);
var
  s: TTMSFNCChartDatabaseAdapterSeriesItem;
begin
  TMSFNCChartDatabaseAdapter1.Source.Series.Clear;
  TMSFNCChartDatabaseAdapter1.AutoCreateSeries := AutoCreateCB.IsChecked;

  if not TMSFNCChartDatabaseAdapter1.AutoCreateSeries and (YValCombo.ItemIndex >= 0)then
  begin
    s := TMSFNCChartDatabaseAdapter1.Source.Series.Add;
    s.YValue := YValCombo.Items[YValCombo.ItemIndex];
    if XValCombo.ItemIndex >= 0 then
      s.XValue := XValCombo.Items[XValCombo.ItemIndex]
    else
      s.XValue := '';

    if XLabCombo.ItemIndex >= 0 then
      s.XLabel := XLabCombo.Items[XLabCombo.ItemIndex]
    else
      s.XLabel := '';
  end
  else
  begin
    TMSFNCChart1.DefaultLoadOptions.XValuesFormatType := vftDateTime;
    TMSFNCChart1.DefaultLoadOptions.XValuesFormatString := 'dd';
  end;

  TMSFNCChartDatabaseAdapter1.Active := not TMSFNCChartDatabaseAdapter1.Active;

  if TMSFNCChartDatabaseAdapter1.Active then
    ConnectButton.Text := 'Disconnect Database'
  else
    ConnectButton.Text := 'Connect Database';
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  t: Integer;
  sl: TStringList;
begin
  AutoCreateCB.IsChecked := TMSFNCChartDatabaseAdapter1.AutoCreateSeries;

  YValCombo.Enabled := not AutoCreateCB.IsChecked;
  XValCombo.Enabled := not AutoCreateCB.IsChecked;
  XLabCombo.Enabled := not AutoCreateCB.IsChecked;

  ClientDataSet1.FieldDefs.Add('Id', ftString, 255);
  ClientDataSet1.FieldDefs.Add('Date', ftDate);
  ClientDataSet1.FieldDefs.Add('Type', ftString, 255);
  ClientDataSet1.FieldDefs.Add('Distance', ftFloat);
  ClientDataSet1.FieldDefs.Add('Time', ftFloat);
  ClientDataSet1.CreateDataSet;

  t := 0;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('Date').AsDateTime := Int(Now) + t;
  ClientDataSet1.FieldByName('Type').AsString := 'Run';
  ClientDataSet1.FieldByName('Distance').AsFloat := 6789;
  ClientDataSet1.FieldByName('Time').AsFloat := 1912;
  Inc(t);

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('Date').AsDateTime := Int(Now) + t;
  ClientDataSet1.FieldByName('Type').AsString := 'Walk';
  ClientDataSet1.FieldByName('Distance').AsFloat := 12578;
  ClientDataSet1.FieldByName('Time').AsFloat := 13621;
  Inc(t);

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('Date').AsDateTime := Int(Now) + t;
  ClientDataSet1.FieldByName('Type').AsString := 'Bike';
  ClientDataSet1.FieldByName('Distance').AsFloat := 26748;
  ClientDataSet1.FieldByName('Time').AsFloat := 4897;
  Inc(t);

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('Date').AsDateTime := Int(Now) + t;
  ClientDataSet1.FieldByName('Type').AsString := 'Walk';
  ClientDataSet1.FieldByName('Distance').AsFloat := 8745;
  ClientDataSet1.FieldByName('Time').AsFloat := 9435;
  Inc(t);
  Inc(t);

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('Date').AsDateTime := Int(Now) + t;
  ClientDataSet1.FieldByName('Type').AsString := 'Run';
  ClientDataSet1.FieldByName('Distance').AsFloat := 6812;
  ClientDataSet1.FieldByName('Time').AsFloat := 1938;
  Inc(t);

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('Date').AsDateTime := Int(Now) + t;
  ClientDataSet1.FieldByName('Type').AsString := 'Bike';
  ClientDataSet1.FieldByName('Distance').AsFloat := 34748;
  ClientDataSet1.FieldByName('Time').AsFloat := 7343;
  Inc(t);

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('Date').AsDateTime := Int(Now) + t;
  ClientDataSet1.FieldByName('Type').AsString := 'Walk';
  ClientDataSet1.FieldByName('Distance').AsFloat := 8745;
  ClientDataSet1.FieldByName('Time').AsFloat := 9435;
  Inc(t);
  Inc(t);

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('Date').AsDateTime := Int(Now) + t;
  ClientDataSet1.FieldByName('Type').AsString := 'Run';
  ClientDataSet1.FieldByName('Distance').AsFloat := 6812;
  ClientDataSet1.FieldByName('Time').AsFloat := 1938;

  ClientDataSet1.Post;
  ClientDataSet1.Active := True;

  sl := TStringList.Create;
  try
    ClientDataSet1.GetFieldNames(sl);

    YValCombo.Items := sl;
    XValCombo.Items := sl;
    XLabCombo.Items := sl;
  finally
    sl.Free;
  end;
end;

procedure TForm1.TMSFNCChartDatabaseAdapter1FieldsToSeries(Sender: TObject;
  AFields: TFields; ASeries: TTMSFNCChartSerie);
begin
  ASeries.XValues.AutoUnits := False;
  ASeries.Markers.Visible := True;
end;

procedure TForm1.TMSFNCChartDatabaseAdapter1SetFieldValueType(Sender: TObject; AFieldName: string; AField: TField; var AValueType: TTMSFNCChartPointValueType);
begin
  if AFieldName = 'Date' then
    AValueType := cvtXValue
  else if AFieldName = 'Type' then
    AValueType := cvtNone;
end;

end.

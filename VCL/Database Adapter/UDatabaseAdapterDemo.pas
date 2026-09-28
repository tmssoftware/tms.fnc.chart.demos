unit UDatabaseAdapterDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, Vcl.ExtCtrls,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCChartDatabaseAdapter, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    TMSFNCChart1: TTMSFNCChart;
    Panel2: TPanel;
    ConnectButton: TButton;
    AutoCreateCB: TCheckBox;
    Label1: TLabel;
    YValCombo: TComboBox;
    Label2: TLabel;
    XValCombo: TComboBox;
    Label3: TLabel;
    XLabCombo: TComboBox;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    procedure FormCreate(Sender: TObject);
    procedure ConnectButtonClick(Sender: TObject);
    procedure AutoCreateCBClick(Sender: TObject);
    procedure TMSFNCChartDatabaseAdapter1SetFieldValueType(Sender: TObject;
      AFieldName: string; AField: TField;
      var AValueType: TTMSFNCChartPointValueType);
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

{$R *.dfm}

procedure TForm1.AutoCreateCBClick(Sender: TObject);
begin
  YValCombo.Enabled := not AutoCreateCB.Checked;
  XValCombo.Enabled := not AutoCreateCB.Checked;
  XLabCombo.Enabled := not AutoCreateCB.Checked;
end;

procedure TForm1.ConnectButtonClick(Sender: TObject);
var
  s: TTMSFNCChartDatabaseAdapterSeriesItem;
begin
  TMSFNCChartDatabaseAdapter1.Source.Series.Clear;
  TMSFNCChartDatabaseAdapter1.AutoCreateSeries := AutoCreateCB.Checked;

  if not TMSFNCChartDatabaseAdapter1.AutoCreateSeries and (YValCombo.ItemIndex >= 0)then
  begin
    TMSFNCChart1.DefaultLoadOptions.XValuesFormatType := vftNormal;
    TMSFNCChart1.DefaultLoadOptions.XValuesFormatString := '%.0f';

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
    ConnectButton.Caption := 'Disconnect Database'
  else
    ConnectButton.Caption := 'Connect Database';
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  t: Integer;
  sl: TStringList;
begin
  AutoCreateCB.Checked := TMSFNCChartDatabaseAdapter1.AutoCreateSeries;

  YValCombo.Enabled := not AutoCreateCB.Checked;
  XValCombo.Enabled := not AutoCreateCB.Checked;
  XLabCombo.Enabled := not AutoCreateCB.Checked;

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
  ASeries.AutoUnits := False;
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

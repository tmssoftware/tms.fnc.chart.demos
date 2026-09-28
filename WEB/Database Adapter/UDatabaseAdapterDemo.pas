unit UDatabaseAdapterDemo;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, Data.DB, Datasnap.DBClient,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCChart, VCL.TMSFNCChartDatabaseAdapter,
  Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls, WEBLib.ExtCtrls, WEBLib.DB,
  WEBLib.CDS;

type
  TForm1 = class(TWebForm)
    Panel1: TWebPanel;
    TMSFNCChart1: TTMSFNCChart;
    Panel2: TWebPanel;
    ConnectButton: TWebButton;
    AutoCreateCB: TCheckBox;
    Label1: TLabel;
    YValCombo: TWebComboBox;
    Label2: TLabel;
    XValCombo: TWebComboBox;
    Label3: TLabel;
    XLabCombo: TWebComboBox;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    ClientDataSet1: TWebClientDataSet;
    WebDataSource1: TWebDataSource;
    ClientDataSet1Id: TStringField;
    ClientDataSet1Date: TDateField;
    ClientDataSet1Type: TStringField;
    ClientDataSet1Distance: TFloatField;
    ClientDataSet1Time: TFloatField;
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

//  ClientDataSet1.FieldDefs.Add('Id', ftString, 255);
//  ClientDataSet1.FieldDefs.Add('Date', ftDate);
//  ClientDataSet1.FieldDefs.Add('Type', ftString, 255);
//  ClientDataSet1.FieldDefs.Add('Distance', ftFloat);
//  ClientDataSet1.FieldDefs.Add('Time', ftFloat);
//  ClientDataSet1.CreateDataSet;

  t := 0;

  ClientDataSet1.Active := True;

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
  ASeries.Markers.Visible := True;
  ASeries.XValues.AutoUnits := False;
end;

procedure TForm1.TMSFNCChartDatabaseAdapter1SetFieldValueType(Sender: TObject; AFieldName: string; AField: TField; var AValueType: TTMSFNCChartPointValueType);
begin
  if AFieldName = 'Date' then
    AValueType := cvtXValue
  else if AFieldName = 'Type' then
    AValueType := cvtNone;
end;

end.
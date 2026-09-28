unit UOrientationDemo;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, Vcl.StdCtrls,
  Vcl.Controls, Vcl.ExtCtrls, WEBLib.StdCtrls, WEBLib.ExtCtrls;

type
  TForm1 = class(TWebForm)
    Panel1: TWebPanel;
    Panel2: TWebPanel;
    TMSFNCChart1: TTMSFNCChart;
    Label1: TWebLabel;
    OrientationLbl: TWebLabel;
    OrientationComboBox: TWebComboBox;
    procedure WebFormCreate(Sender: TObject);
    procedure OrientationComboBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.WebFormCreate(Sender: TObject);
begin
  OrientationComboBox.ItemIndex := Integer(TMSFNCChart1.Orientation);
end;

procedure TForm1.OrientationComboBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Orientation := TTMSFNCChartOrientation(OrientationComboBox.ItemIndex);
end;

end.

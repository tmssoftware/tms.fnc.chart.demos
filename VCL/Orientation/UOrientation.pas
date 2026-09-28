unit UOrientation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, Vcl.StdCtrls,
  VCL.TMSFNCChart;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TMSFNCChart1: TTMSFNCChart;
    Label1: TLabel;
    OrientationLbl: TLabel;
    OrientationComboBox: TComboBox;
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  OrientationComboBox.ItemIndex := Integer(TMSFNCChart1.Orientation);
end;

procedure TForm1.OrientationComboBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Orientation := TTMSFNCChartOrientation(OrientationComboBox.ItemIndex);
end;

end.

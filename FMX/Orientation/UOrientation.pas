unit UOrientation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.ListBox, FMX.StdCtrls, FMX.Controls.Presentation, FMX.TMSFNCChart;

type
  TForm1 = class(TForm)
    TMSFNCChart1: TTMSFNCChart;
    Panel1: TPanel;
    Panel2: TPanel;
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

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
  OrientationComboBox.ItemIndex := Integer(TMSFNCChart1.Orientation);
end;

procedure TForm1.OrientationComboBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Orientation := TTMSFNCChartOrientation(OrientationComboBox.ItemIndex);
end;

end.

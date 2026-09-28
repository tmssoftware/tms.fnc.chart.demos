unit UAppearance;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.ListBox, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Colors, FMX.TMSFNCChart;

type
  TForm1 = class(TForm)
    TMSFNCChart1: TTMSFNCChart;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    SchemeLbl: TLabel;
    SchemeComboBox: TComboBox;
    ChromColorLbl: TLabel;
    ChromColBox: TColorComboBox;
    Label4: TLabel;
    NameLbl: TLabel;
    NameComboBox: TComboBox;
    FontColorLbl: TLabel;
    FontColBox: TColorComboBox;
    SizeLbl: TLabel;
    ScaleLbl: TLabel;
    StyleLbl: TLabel;
    ScaleTB: TTrackBar;
    SizeTB: TTrackBar;
    BoldCB: TCheckBox;
    UnderLineCB: TCheckBox;
    ItalicCB: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SchemeComboBoxChange(Sender: TObject);
    procedure ChromColBoxChange(Sender: TObject);
    procedure FontColBoxChange(Sender: TObject);
    procedure SizeTBChange(Sender: TObject);
    procedure ScaleTBChange(Sender: TObject);
    procedure BoldCBChange(Sender: TObject);
    procedure UnderLineCBChange(Sender: TObject);
    procedure ItalicCBChange(Sender: TObject);
    procedure NameComboBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.fmx}

procedure TForm1.BoldCBChange(Sender: TObject);
begin
  if BoldCB.IsChecked then
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style + [TFontStyle.fsBold]
  else
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style - [TFontStyle.fsBold];
end;

procedure TForm1.ChromColBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.MonochromeColor := ChromColBox.Color;
end;

procedure TForm1.ScaleTBChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.GlobalFont.Scale := ScaleTB.Value;
end;

procedure TForm1.SchemeComboBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.ColorScheme := TTMSFNCChartColorScheme(SchemeComboBox.ItemIndex);
end;

procedure TForm1.SizeTBChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.GlobalFont.Size := SizeTB.Value;
end;

procedure TForm1.UnderLineCBChange(Sender: TObject);
begin
  if UnderLineCB.IsChecked then
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style + [TFontStyle.fsUnderline]
  else
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style - [TFontStyle.fsUnderline];
end;

procedure TForm1.FontColBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.GlobalFont.Color := FontColBox.Color;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  sl: TStringList;

begin
  SchemeComboBox.ItemIndex := Integer(TMSFNCChart1.Appearance.ColorScheme);
  ChromColBox.Color := TMSFNCChart1.Appearance.MonochromeColor;
  FontColBox.Color := TMSFNCChart1.Appearance.GlobalFont.Color;

  sl := TStringList.Create;
  try
    TTMSFNCUtils.GetFonts(sl);
    NameComboBox.Items := sl;
  finally
    sl.Free;
  end;

  SizeTB.Value := TMSFNCChart1.Appearance.GlobalFont.Size;
  ScaleTB.Value := TMSFNCChart1.Appearance.GlobalFont.Scale;
  BoldCB.IsChecked := TFontStyle.fsBold in TMSFNCChart1.Appearance.GlobalFont.Style;
  UnderLineCB.IsChecked := TFontStyle.fsUnderline in TMSFNCChart1.Appearance.GlobalFont.Style;
  ItalicCB.IsChecked := TFontStyle.fsItalic in TMSFNCChart1.Appearance.GlobalFont.Style;
end;

procedure TForm1.ItalicCBChange(Sender: TObject);
begin
  if ItalicCB.IsChecked then
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style + [TFontStyle.fsItalic]
  else
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style - [TFontStyle.fsItalic];
end;

procedure TForm1.NameComboBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.GlobalFont.Name := NameComboBox.Items[NameComboBox.ItemIndex];
end;

end.

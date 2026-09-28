unit UAppearanceDemo;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Controls, Vcl.ExtCtrls, WEBLib.StdCtrls, WEBLib.ExtCtrls;

type
  TForm1 = class(TWebForm)
    Panel1: TWebPanel;
    Panel2: TWebPanel;
    TMSFNCChart1: TTMSFNCChart;
    Label1: TWebLabel;
    SchemeLbl: TWebLabel;
    SchemeComboBox: TWebComboBox;
    ColorLbl: TWebLabel;
    Label3: TWebLabel;
    Label4: TWebLabel;
    NameComboBox: TWebComboBox;
    Label5: TWebLabel;
    Label2: TWebLabel;
    Label6: TWebLabel;
    Label7: TWebLabel;
    BoldCB: TCheckBox;
    UnderlineCB: TCheckBox;
    ItalicCB: TCheckBox;
    ChromColBox: TWebColorPicker;
    FontColBox: TWebColorPicker;
    SizeTB: TWebTrackBar;
    ScaleTB: TWebTrackBar;
    procedure FormCreate(Sender: TObject);
    procedure SchemeComboBoxChange(Sender: TObject);
    procedure NameComboBoxChange(Sender: TObject);
    procedure ScaleTBChange(Sender: TObject);
    procedure SizeTBChange(Sender: TObject);
    procedure BoldCBClick(Sender: TObject);
    procedure UnderlineCBClick(Sender: TObject);
    procedure ItalicCBClick(Sender: TObject);
    procedure FontColBoxSelect(Sender: TObject);
    procedure ChromColBoxSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BoldCBClick(Sender: TObject);
begin
  if BoldCB.Checked then
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style + [TFontStyle.fsBold]
  else
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style - [TFontStyle.fsBold];
end;

procedure TForm1.ChromColBoxSelect(Sender: TObject);
begin
  TMSFNCChart1.Appearance.MonochromeColor := ChromColBox.Selected;
end;

procedure TForm1.FontColBoxSelect(Sender: TObject);
begin
  TMSFNCChart1.Appearance.GlobalFont.Color := FontColBox.Selected;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  sl: TStringList;

begin
  SchemeComboBox.ItemIndex := Integer(TMSFNCChart1.Appearance.ColorScheme);
  ChromColBox.Selected := TMSFNCChart1.Appearance.MonochromeColor;
  FontColBox.Selected := TMSFNCChart1.Appearance.GlobalFont.Color;

  sl := TStringList.Create;
  try
    TTMSFNCUtils.GetFonts(sl);
    NameComboBox.Items := sl;
  finally
    sl.Free;
  end;

  SizeTB.Position := Round(TMSFNCChart1.Appearance.GlobalFont.Size);
  ScaleTB.Position := Round(TMSFNCChart1.Appearance.GlobalFont.Scale * 100);
  BoldCB.Checked := TFontStyle.fsBold in TMSFNCChart1.Appearance.GlobalFont.Style;
  UnderLineCB.Checked := TFontStyle.fsUnderline in TMSFNCChart1.Appearance.GlobalFont.Style;
  ItalicCB.Checked := TFontStyle.fsItalic in TMSFNCChart1.Appearance.GlobalFont.Style;
end;

procedure TForm1.ItalicCBClick(Sender: TObject);
begin
  if ItalicCB.Checked then
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style + [TFontStyle.fsItalic]
  else
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style - [TFontStyle.fsItalic];
end;

procedure TForm1.NameComboBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.GlobalFont.Name := NameComboBox.Items[NameComboBox.ItemIndex];
end;

procedure TForm1.ScaleTBChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.GlobalFont.Scale := ScaleTB.Position / 100;
end;

procedure TForm1.SchemeComboBoxChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.ColorScheme := TTMSFNCChartColorScheme(SchemeComboBox.ItemIndex);
end;

procedure TForm1.SizeTBChange(Sender: TObject);
begin
  TMSFNCChart1.Appearance.GlobalFont.Size := SizeTB.Position;
end;

procedure TForm1.UnderlineCBClick(Sender: TObject);
begin
  if UnderLineCB.Checked then
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style + [TFontStyle.fsUnderline]
  else
    TMSFNCChart1.Appearance.GlobalFont.Style := TMSFNCChart1.Appearance.GlobalFont.Style - [TFontStyle.fsUnderline];
end;

end.


unit UAppearance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, Vcl.StdCtrls,
  Vcl.ComCtrls, VCL.TMSFNCChart;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TMSFNCChart1: TTMSFNCChart;
    Label1: TLabel;
    SchemeLbl: TLabel;
    SchemeComboBox: TComboBox;
    ColorLbl: TLabel;
    ChromColBox: TColorListBox;
    Label3: TLabel;
    Label4: TLabel;
    NameComboBox: TComboBox;
    Label5: TLabel;
    FontColBox: TColorListBox;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SizeTB: TTrackBar;
    ScaleTB: TTrackBar;
    BoldCB: TCheckBox;
    UnderlineCB: TCheckBox;
    ItalicCB: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SchemeComboBoxChange(Sender: TObject);
    procedure ChromColBoxClick(Sender: TObject);
    procedure NameComboBoxChange(Sender: TObject);
    procedure FontColBoxClick(Sender: TObject);
    procedure ScaleTBChange(Sender: TObject);
    procedure SizeTBChange(Sender: TObject);
    procedure BoldCBClick(Sender: TObject);
    procedure UnderlineCBClick(Sender: TObject);
    procedure ItalicCBClick(Sender: TObject);
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

procedure TForm1.ChromColBoxClick(Sender: TObject);
begin
  TMSFNCChart1.Appearance.MonochromeColor := ChromColBox.Selected;
end;

procedure TForm1.FontColBoxClick(Sender: TObject);
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

program Appearance;

uses
  System.StartUpCopy,
  FMX.Forms,
  UAppearance in 'UAppearance.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

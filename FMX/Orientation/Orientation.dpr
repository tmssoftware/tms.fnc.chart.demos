program Orientation;

uses
  System.StartUpCopy,
  FMX.Forms,
  UOrientation in 'UOrientation.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

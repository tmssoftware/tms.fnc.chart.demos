program TMSWeb_FNCChart;

uses
  WEBLib.Forms,
  Unit1 in 'Unit1.pas' {Form4: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1166, Form1166);
  Application.Run;
end.

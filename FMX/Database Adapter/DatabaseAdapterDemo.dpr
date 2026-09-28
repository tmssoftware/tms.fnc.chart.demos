program DatabaseAdapterDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  UDatabaseAdapterDemo in 'UDatabaseAdapterDemo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

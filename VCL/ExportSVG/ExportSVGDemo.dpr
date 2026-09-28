program ExportSVGDemo;

uses
  Vcl.Forms,
  UExportSVG in 'UExportSVG.pas' {FormExportSVG};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormExportSVG, FormExportSVG);
  Application.Run;
end.

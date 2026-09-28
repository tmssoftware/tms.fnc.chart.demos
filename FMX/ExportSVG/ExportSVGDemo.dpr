program ExportSVGDemo;

uses
  FMX.Forms,
  UExportSVG in 'UExportSVG.pas' {FormExportSVG};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormExportSVG, FormExportSVG);
  Application.Run;
end.

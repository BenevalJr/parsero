program Simple;

uses
  Vcl.Forms,
  Simple.Main in 'Simple.Main.pas' {Form5},
  System.Parsero in '..\..\Src\System.Parsero.pas',
  DataSetConverter4D.Impl in '..\..\modules\datasetconverter4delphi\src\DataSetConverter4D.Impl.pas',
  DataSetConverter4D.Intf in '..\..\modules\datasetconverter4delphi\src\DataSetConverter4D.Intf.pas',
  DataSetConverter4D in '..\..\modules\datasetconverter4delphi\src\DataSetConverter4D.pas',
  DataSetConverter4D.Util in '..\..\modules\datasetconverter4delphi\src\DataSetConverter4D.Util.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.

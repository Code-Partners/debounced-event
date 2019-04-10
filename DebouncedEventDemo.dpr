program DebouncedEventDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  FormMain in 'FormMain.pas' {DebouncedEventDemoForm},
  UDebouncedEvent in 'UDebouncedEvent.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDebouncedEventDemoForm, DebouncedEventDemoForm);
  Application.Run;
end.

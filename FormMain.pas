unit FormMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox,
  FMX.Memo, FMX.Controls.Presentation, FMX.Edit;

type
  TDebouncedEventDemoForm = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Edit1ChangeTracking(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DebouncedEventDemoForm: TDebouncedEventDemoForm;

implementation

uses
  UDebouncedEvent;

{$R *.fmx}

procedure TDebouncedEventDemoForm.FormCreate(Sender: TObject);
begin
  self.Edit1.OnChangeTracking := TDebouncedEvent.Wrap(self.Edit1ChangeTracking, 500, self);
end;

procedure TDebouncedEventDemoForm.Edit1ChangeTracking(Sender: TObject);
begin
  self.Memo1.Lines.Add(FormatDateTime('hh:nn:ss.zzz', Now) + ' - ' + self.Edit1.Text);
end;

end.

program NetTicket;

uses
  Forms,
  Main in 'Main.pas' {Main},
  PrintPreview in 'PrintPreview.pas' {PrintPreview};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'NetTicket';
  Application.CreateForm(TPrintPreview, PrintPreview1);
  Application.CreateForm(TMain, Main1);
  Application.Run;
end.

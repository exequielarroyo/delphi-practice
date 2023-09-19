unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, PrintPreview, PagePrnt;

type
  TMain = class(TForm)
    Preview: TBitBtn;
    Table1: TTable;
    DataSource1: TDataSource;
    procedure PreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   Main1: TMain;

implementation

{$R *.DFM}

procedure TMain.PreviewClick(Sender: TObject);
var
   PrintPreview1: TPrintPreview;
begin
     PrintPreview1 := TPrintPreview.Create(Self);
     PrintPreview1.ShowModal;
end;

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
with zqry1 do
begin
  SQL.Clear;
  SQL.Add('select*from login where username='+QuotedStr(edt1.Text));
  Open;
end;
  if zqry1.RecordCount=0 then
  Application.MessageBox('Maaf Username Salah','informasi', MB_OK or MB_ICONQUESTION)
  else
  begin
  if zqry1.FieldByName('password').AsString <> edt2.Text then
  Application.MessageBox('Maaf Password Salah','informasi', MB_OK or MB_ICONERROR)
  else
  begin
  Hide;
  Form2.Show;
  end;
end;
end;

end.

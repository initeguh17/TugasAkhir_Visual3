unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    Data1: TMenuItem;
    Barang1: TMenuItem;
    Konter1: TMenuItem;
    Sales1: TMenuItem;
    Laporan1: TMenuItem;
    Stok1: TMenuItem;
    Penjualan1: TMenuItem;
    Keluar1: TMenuItem;
    Keluar2: TMenuItem;
    procedure Barang1Click(Sender: TObject);
    procedure Konter1Click(Sender: TObject);
    procedure Sales1Click(Sender: TObject);
    procedure Stok1Click(Sender: TObject);
    procedure Penjualan1Click(Sender: TObject);
    procedure Keluar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit6, Unit5, Unit4, Unit7, Unit1;

{$R *.dfm}

procedure TForm2.Barang1Click(Sender: TObject);
begin
if Form3=nil then
Form3:=TForm3.Create(Application);
Form3.Show;
end;

procedure TForm2.Konter1Click(Sender: TObject);
begin
if Form6=nil then
Form6:=TForm6.Create(Application);
Form6.Show;
end;

procedure TForm2.Sales1Click(Sender: TObject);
begin
if Form5=nil then
Form5:=TForm5.Create(Application);
Form5.Show;
end;

procedure TForm2.Stok1Click(Sender: TObject);
begin
if Form4=nil then
Form4:=TForm4.Create(Application);
Form4.Show;
end;

procedure TForm2.Penjualan1Click(Sender: TObject);
begin
if Form7=nil then
Form7:=TForm7.Create(Application);
Form7.Show;
end;

procedure TForm2.Keluar2Click(Sender: TObject);
begin
if Form1=nil then
Form1:=TForm1.Create(Application);
Form1.Show;
end;

end.

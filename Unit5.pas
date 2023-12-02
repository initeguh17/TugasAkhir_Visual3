unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    btn6: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    ds1: TDataSource;
    zqry1: TZQuery;
    con1: TZConnection;
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id: string;

implementation

{$R *.dfm}

procedure TForm5.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False; 
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
end;

procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('ID Tidak Boleh Kosong!');
end else
if edt2.Text = '' then
begin
  ShowMessage('ID Tidak Boleh Kosong!');
end else
if edt3.Text = '' then
begin
  ShowMessage('Kode Tidak Boleh Kosong!');
end else
if edt4.Text = '' then
begin
  ShowMessage('NIK Tidak Boleh Kosong!');
end else
if edt5.Text = '' then
begin
  ShowMessage('Nama Tidak Boleh Kosong!');
end else
if edt6.Text = '' then
begin
  ShowMessage('Jenis Kelamin Tidak Boleh Kosong!');
end else
if edt7.Text = '' then
begin
  ShowMessage('Alamat Tidak Boleh Kosong!');
end else
if edt8.Text = '' then
begin
  ShowMessage('Telpon Tidak Boleh Kosong!');
end else
begin
  zqry1.SQL.Clear; //simpan
  zqry1.SQL.Add('insert into sales values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
  zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from sales');
  zqry1.Open;
  ShowMessage('DATA BARHASIL DISIMPAN!');
  posisiawal;
end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text= '')or (edt6.Text ='')or(edt7.Text= '')or (edt8.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edt1.Text = zqry1.Fields[1].AsString then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update sales set id_Stok="'+edt1.Text+'", id_barang="'+edt2.Text+'", kode_sales="'+edt3.Text+'", nik="'+edt4.Text+'", nama_sales="'+edt5.Text+'", jk="'+edt6.Text+'", alamat="'+edt7.Text+'", telp="'+edt8.Text+'" where id="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from sales');
  zqry1.Open;
posisiawal;
end;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from sales where id="'+id+'"');
  zqry1. ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from sales');
  zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
edt1.Text:= zqry1.Fields[1].AsString;
edt2.Text:= zqry1.Fields[2].AsString;
edt3.Text:= zqry1.Fields[3].AsString;
edt4.Text:= zqry1.Fields[4].AsString; 
edt5.Text:= zqry1.Fields[5].AsString;
edt6.Text:= zqry1.Fields[6].AsString;
edt7.Text:= zqry1.Fields[7].AsString;
edt8.Text:= zqry1.Fields[8].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

end.




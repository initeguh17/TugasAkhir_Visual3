object Form3: TForm3
  Left = 565
  Top = 187
  Width = 476
  Height = 540
  Caption = 'Barang'
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 184
    Top = 40
    Width = 90
    Height = 23
    Caption = 'BARANG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 96
    Top = 88
    Width = 92
    Height = 18
    Caption = 'Kode Karu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 96
    Top = 120
    Width = 105
    Height = 18
    Caption = 'Nama Kartu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 96
    Top = 152
    Width = 62
    Height = 18
    Caption = 'Jumlah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 96
    Top = 184
    Width = 54
    Height = 18
    Caption = 'Harga'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 216
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 216
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 216
    Top = 152
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 216
    Top = 184
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 32
    Top = 216
    Width = 73
    Height = 33
    Caption = 'BARU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 216
    Width = 73
    Height = 33
    Caption = 'SIMPAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 192
    Top = 216
    Width = 73
    Height = 33
    Caption = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 272
    Top = 216
    Width = 73
    Height = 33
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 352
    Top = 216
    Width = 73
    Height = 33
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 352
    Top = 384
    Width = 73
    Height = 33
    Caption = 'LAPORAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 256
    Width = 393
    Height = 121
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'data_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\TA Visual3\libmy' +
      'sql.dll'
    Left = 40
    Top = 384
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from barang')
    Params = <>
    Left = 72
    Top = 384
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 104
    Top = 384
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 168
    Top = 384
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45262.814497291660000000
    ReportOptions.LastChange = 45262.814497291660000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 200
    Top = 384
    Datasets = <>
    Variables = <>
    Style = <>
  end
end

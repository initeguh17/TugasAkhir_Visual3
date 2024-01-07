object Form1: TForm1
  Left = 598
  Top = 169
  Width = 473
  Height = 540
  Caption = 'LOGIN'
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
    Top = 48
    Width = 69
    Height = 23
    Caption = 'LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 104
    Top = 96
    Width = 90
    Height = 18
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 104
    Top = 128
    Width = 87
    Height = 18
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 208
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 208
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 104
    Top = 184
    Width = 81
    Height = 33
    Caption = 'LOGIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 184
    Width = 81
    Height = 33
    Caption = 'DAFTAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 280
    Top = 184
    Width = 81
    Height = 33
    Caption = 'KELUAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btn3Click
  end
  object chk1: TCheckBox
    Left = 208
    Top = 160
    Width = 121
    Height = 17
    Caption = 'Hide Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = chk1Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'data_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\TA Visual3\libmy' +
      'sql.dll'
    Left = 112
    Top = 232
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select*from login')
    Params = <>
    Left = 152
    Top = 232
  end
end

object Form2: TForm2
  Left = 611
  Top = 199
  Width = 472
  Height = 542
  Caption = 'Main Menu'
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 72
    Top = 48
    object Data1: TMenuItem
      Caption = 'Data'
      object Barang1: TMenuItem
        Caption = 'Barang'
        OnClick = Barang1Click
      end
      object Konter1: TMenuItem
        Caption = 'Konter'
        OnClick = Konter1Click
      end
      object Sales1: TMenuItem
        Caption = 'Sales'
        OnClick = Sales1Click
      end
    end
    object Laporan1: TMenuItem
      Caption = 'Laporan'
      object Stok1: TMenuItem
        Caption = 'Stok'
        OnClick = Stok1Click
      end
      object Penjualan1: TMenuItem
        Caption = 'Penjualan'
        OnClick = Penjualan1Click
      end
    end
    object Keluar1: TMenuItem
      Caption = 'Option'
      object Keluar2: TMenuItem
        Caption = 'Keluar'
        OnClick = Keluar2Click
      end
    end
  end
end

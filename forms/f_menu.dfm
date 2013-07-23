object frm_menu: Tfrm_menu
  Left = 0
  Top = 0
  Caption = 'Biblioteca - Menu Principal'
  ClientHeight = 521
  ClientWidth = 1127
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1127
    Height = 55
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastros'
    end
    object TabSheet2: TTabSheet
      Caption = 'Movimenta'#231#227'o'
      ImageIndex = 1
      object btn_sair: TrkGlassButton
        Left = 3
        Top = 2
        Width = 85
        Height = 23
        ParentCustomHint = False
        Caption = 'Loca'#231#227'o'
        Color = clWhite
        ColorDown = clCream
        ColorFrame = clGray
        DuoStyle = True
        Glossy = True
        GlossyLevel = 50
        DropDownAlignment = paLeft
        DropDownMenu = pop_locacoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        TabOrder = 0
        SingleBorder = True
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Relat'#243'rios'
      ImageIndex = 2
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 502
    Width = 1127
    Height = 19
    Panels = <
      item
        Text = 'Usu'#225'rio:'
        Width = 50
      end
      item
        Width = 200
      end
      item
        Text = 'Status:'
        Width = 50
      end
      item
        Width = 120
      end>
  end
  object zconn: TZConnection
    ControlsCodePage = cCP_UTF16
    UTF8StringsAsWideField = True
    Port = 0
    User = 'supervisor'
    Protocol = 'mysql'
    Left = 24
    Top = 56
  end
  object pop_locacoes: TPopupMenu
    Left = 32
    Top = 440
    object SaidadeLivros1: TMenuItem
      Caption = 'Saida de Livros'
      OnClick = SaidadeLivros1Click
    end
    object DevoluodeLivros1: TMenuItem
      Caption = 'Devolu'#231#227'o de Livros'
    end
  end
end

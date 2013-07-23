inherited frm_locacao_livros: Tfrm_locacao_livros
  Caption = 'Biblioteca - Loca'#231#227'o de Livros'
  ClientHeight = 581
  ClientWidth = 784
  OnShow = FormShow
  ExplicitWidth = 800
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 784
    ExplicitWidth = 784
  end
  inherited lbl_titulo: TLabel
    Width = 285
    Caption = 'Biblioteca - Loca'#231#227'o de Livros'
    ExplicitWidth = 285
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 784
    Height = 84
    Align = alTop
    TabOrder = 0
    object grade_usuarios: TStringGrid
      Left = 1
      Top = 33
      Width = 782
      Height = 50
      Align = alBottom
      ColCount = 3
      DefaultColWidth = 120
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ColWidths = (
        110
        249
        388)
    end
    object btn_confirmar: TrkGlassButton
      Left = 130
      Top = 5
      Width = 75
      Height = 23
      ParentCustomHint = False
      Caption = 'Confirmar'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
      Glossy = True
      GlossyLevel = 64
      DropDownAlignment = paLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ShowHint = True
      TabOrder = 1
      OnClick = btn_confirmarClick
      SingleBorder = True
    end
    object btn_selecionar: TrkGlassButton
      Left = 3
      Top = 5
      Width = 120
      Height = 23
      ParentCustomHint = False
      Caption = 'Selecionar Usu'#225'rio'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
      Glossy = True
      GlossyLevel = 64
      DropDownAlignment = paLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ShowHint = True
      TabOrder = 2
      OnClick = btn_selecionarClick
      SingleBorder = True
    end
  end
  object pn_Livros: TPanel
    Left = 0
    Top = 128
    Width = 784
    Height = 453
    Align = alBottom
    TabOrder = 1
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 52
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 152
        Height = 13
        Caption = 'Digite o Livro, Autor ou Editora:'
      end
      object edt_pesquisar: TEdit
        Left = 9
        Top = 25
        Width = 608
        Height = 21
        TabOrder = 0
      end
      object btn_pesquisar: TrkGlassButton
        Left = 623
        Top = 25
        Width = 146
        Height = 21
        ParentCustomHint = False
        Caption = 'Pesquisar'
        Color = clWhite
        ColorDown = clCream
        ColorFrame = clGray
        Glossy = True
        GlossyLevel = 64
        DropDownAlignment = paLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ShowHint = True
        TabOrder = 1
        OnClick = btn_pesquisarClick
        SingleBorder = True
      end
    end
    object Panel6: TPanel
      Left = 735
      Top = 53
      Width = 48
      Height = 399
      Align = alRight
      TabOrder = 1
      object btn_add: TSpeedButton
        Left = 4
        Top = 3
        Width = 40
        Height = 49
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn_rem: TSpeedButton
        Left = 4
        Top = 54
        Width = 40
        Height = 49
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 53
      Width = 733
      Height = 399
      Align = alLeft
      TabOrder = 2
      object Label2: TLabel
        Left = 8
        Top = 112
        Width = 196
        Height = 23
        Caption = 'Livros Selecionados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 731
        Height = 104
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object JvDBGrid1: TJvDBGrid
          Left = 2
          Top = 2
          Width = 727
          Height = 100
          Align = alClient
          DataSource = dts_busca
          FixedColor = clGradientActiveCaption
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 138
        Width = 731
        Height = 219
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 1
        object JvDBGrid2: TJvDBGrid
          Left = 2
          Top = 2
          Width = 727
          Height = 215
          Align = alClient
          FixedColor = clGradientActiveCaption
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 357
        Width = 731
        Height = 41
        Align = alBottom
        TabOrder = 2
        object btn_cancelar: TrkGlassButton
          Left = 568
          Top = 4
          Width = 75
          Height = 27
          ParentCustomHint = False
          Caption = 'Cancelar'
          Color = clWhite
          ColorDown = clCream
          ColorFrame = clGray
          Glossy = True
          GlossyLevel = 64
          DropDownAlignment = paLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ShowHint = True
          TabOrder = 0
          SingleBorder = True
        end
        object btn_finalizar: TrkGlassButton
          Left = 7
          Top = 6
          Width = 98
          Height = 27
          ParentCustomHint = False
          Caption = 'Finalizar'
          Color = clWhite
          ColorDown = clCream
          ColorFrame = clGray
          Glossy = True
          GlossyLevel = 64
          DropDownAlignment = paLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ShowHint = True
          TabOrder = 1
          OnClick = btn_confirmarClick
          SingleBorder = True
        end
        object btn_sair: TrkGlassButton
          Left = 652
          Top = 4
          Width = 75
          Height = 27
          ParentCustomHint = False
          Caption = 'Sair'
          Color = clWhite
          ColorDown = clCream
          ColorFrame = clGray
          Glossy = True
          GlossyLevel = 64
          DropDownAlignment = paLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ShowHint = True
          TabOrder = 2
          OnClick = btn_sairClick
          SingleBorder = True
        end
      end
    end
  end
  object tab_principal: TZQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 696
    Top = 48
  end
  object tab_busca: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 32
    Top = 192
  end
  object dts_busca: TDataSource
    DataSet = tab_busca
    Left = 32
    Top = 248
  end
end

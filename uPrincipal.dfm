object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 462
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mainPrincipal: TMainMenu
    Left = 16
    Top = 56
    object CADASTRO1: TMenuItem
      Caption = 'CADASTRO'
      object CLIENTE1: TMenuItem
        Caption = 'CLIENTE'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object CATEGORIA1: TMenuItem
        Caption = 'CATEGORIA'
        OnClick = CATEGORIA1Click
      end
      object PRODUTO1: TMenuItem
        Caption = 'PRODUTO'
      end
      object FECHAR1: TMenuItem
        Caption = '-'
      end
      object mnuFechar: TMenuItem
        Caption = 'FECHAR'
        OnClick = mnuFecharClick
      end
    end
    object MOVIMENTAO1: TMenuItem
      Caption = 'MOVIMENTA'#199#195'O'
      object VENDAS1: TMenuItem
        Caption = 'VENDAS'
      end
    end
    object RELATORIO1: TMenuItem
      Caption = 'RELAT'#211'RIOS'
      object CLIENTE2: TMenuItem
        Caption = 'CLIENTE'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object PRODUTO2: TMenuItem
        Caption = 'PRODUTO'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object VENDAPORDATA1: TMenuItem
        Caption = 'VENDA POR DATA'
      end
    end
  end
end

object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O TITULO'
  ClientHeight = 571
  ClientWidth = 1044
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1044
    Height = 535
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1032
    ExplicitHeight = 530
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      ExplicitLeft = 0
      ExplicitTop = 22
      ExplicitHeight = 502
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1036
        Height = 57
        Align = alTop
        TabOrder = 0
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 57
        Width = 1036
        Height = 450
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manutenc'#227'o'
      ImageIndex = 1
      ExplicitWidth = 1024
      ExplicitHeight = 502
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 535
    Width = 1044
    Height = 36
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 536
    object btnNovo: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 24
      Caption = '&NOVO'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 89
      Top = 6
      Width = 75
      Height = 24
      Caption = '&ALTERAR'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 170
      Top = 6
      Width = 75
      Height = 24
      Caption = '&CANCELAR'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 251
      Top = 6
      Width = 75
      Height = 24
      Caption = '&GRAVAR'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 332
      Top = 6
      Width = 75
      Height = 24
      Caption = 'APAGA&R'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 948
      Top = 6
      Width = 66
      Height = 24
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 413
      Top = 6
      Width = 216
      Height = 24
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object mskPesquisar: TMaskEdit
    Left = 8
    Top = 43
    Width = 497
    Height = 21
    TabOrder = 2
    Text = ''
    TextHint = 'Digite sua pesquisa'
  end
  object btnPesquisar: TBitBtn
    Left = 511
    Top = 41
    Width = 98
    Height = 24
    Caption = '&PESQUISAR'
    TabOrder = 3
  end
  object QryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 664
    Top = 40
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 728
    Top = 40
  end
end

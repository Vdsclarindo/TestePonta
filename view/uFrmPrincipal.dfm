object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'GA + Intergado agora '#233' Ponta'
  ClientHeight = 221
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 370
    Height = 221
    Align = alClient
    TabOrder = 0
  end
  object menu: TMainMenu
    Left = 280
    Top = 144
    object N1: TMenuItem
      Caption = 'Cadastro de Dados'
      object Fazenda1: TMenuItem
        Caption = 'Fazenda'
        OnClick = Fazenda1Click
      end
      object Animal1: TMenuItem
        Caption = 'Animal'
        OnClick = Animal1Click
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        OnClick = Fechar1Click
      end
    end
  end
end

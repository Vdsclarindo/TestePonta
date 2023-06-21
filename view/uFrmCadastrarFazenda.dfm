inherited FrmCadastrarFazenda: TFrmCadastrarFazenda
  Caption = 'Cadastro de Fazenda'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 827
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelTitulo: TPanel
    ExplicitWidth = 821
    inherited lbl1: TLabel
      Left = 292
      Top = 6
      Width = 191
      Caption = 'Cadastro Fazenda'
      ExplicitLeft = 292
      ExplicitTop = 6
      ExplicitWidth = 191
    end
  end
  inherited pnl1: TPanel
    ExplicitWidth = 821
    inherited btnGravar: TImage
      Top = 6
      OnClick = btnGravarClick
      ExplicitTop = 6
    end
    inherited btnNovo: TImage
      OnClick = btnNovoClick
    end
    inherited btnAlterar: TImage
      OnClick = btnAlterarClick
    end
    inherited btnCancelar: TImage
      OnClick = btnCancelarClick
    end
    inherited btnExcluir: TImage
      OnClick = btnExcluirClick
    end
  end
  inherited pgcPrincipal: TPageControl
    ExplicitWidth = 821
    ExplicitHeight = 414
    inherited pgListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 813
      ExplicitHeight = 386
      inherited GridListagem: TDBGrid
        DataSource = dsListagem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        OnDblClick = GridListagemDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Width = 156
            Visible = True
          end>
      end
      inherited Panel1: TPanel
        ExplicitWidth = 813
        inherited btnPesquisar: TImage
          OnClick = btnPesquisarClick
        end
      end
    end
    inherited pgCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 813
      ExplicitHeight = 386
      object lbNome: TLabel
        Left = 8
        Top = 0
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object lbEndereco: TLabel
        Left = 8
        Top = 39
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object lbCNPJ: TLabel
        Left = 8
        Top = 78
        Width = 25
        Height = 13
        Caption = 'CNPJ'
      end
      object edtNome: TEdit
        Left = 8
        Top = 15
        Width = 373
        Height = 21
        TabOrder = 0
      end
      object edtEndereco: TEdit
        Left = 8
        Top = 55
        Width = 373
        Height = 21
        TabOrder = 1
      end
      object edtCNPJ: TEdit
        Left = 8
        Top = 93
        Width = 373
        Height = 21
        TabOrder = 2
      end
    end
  end
  inherited dsListagem: TDataSource
    DataSet = qryPesquisar
    Left = 724
    Top = 217
  end
  object qryPesquisar: TFDQuery
    Connection = DmConexao.sqlFBConexao
    SQL.Strings = (
      'select * from fazenda')
    Left = 720
    Top = 160
  end
end

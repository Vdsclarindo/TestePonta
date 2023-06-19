unit uFrmCadastrarBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmCadastroBasico = class(TForm)
    PanelTitulo: TPanel;
    lbl1: TLabel;
    btnFechar: TImage;
    pnl1: TPanel;
    btnGravar: TImage;
    btnNovo: TImage;
    btnAlterar: TImage;
    btnCancelar: TImage;
    btnExcluir: TImage;
    pgcPrincipal: TPageControl;
    pgListagem: TTabSheet;
    GridListagem: TDBGrid;
    Panel1: TPanel;
    pgCadastro: TTabSheet;
    dsListagem: TDataSource;
    Label1: TLabel;
    edtPesquisa: TEdit;
    btnPesquisar: TImage;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroBasico: TFrmCadastroBasico;

implementation

{$R *.dfm}

procedure TFrmCadastroBasico.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.

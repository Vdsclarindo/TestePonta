unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    menu: TMainMenu;
    N1: TMenuItem;
    Animal1: TMenuItem;
    Fazenda1: TMenuItem;
    Panel1: TPanel;
    Fechar1: TMenuItem;
    procedure Animal1Click(Sender: TObject);
    procedure Fazenda1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
  private
    procedure CadastroAnimal;
    procedure CadastroFazenda;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uFrmCadastrarAnimal, uFrmCadastrarFazenda;

{$R *.dfm}

procedure TFrmPrincipal.CadastroAnimal;
begin
  FrmCadastrarAnimal := TFrmCadastrarAnimal.create(nil);
  try
    FrmCadastrarAnimal.showModal;
  finally
    FreeAndNil(FrmCadastrarAnimal);
  end;
end;

procedure TFrmPrincipal.CadastroFazenda;
begin
  FrmCadastrarFazenda := TFrmCadastrarFazenda.create(nil);
  try
    FrmCadastrarFazenda.showModal;
  finally
    FreeAndNil(FrmCadastrarFazenda);
  end;
end;

procedure TFrmPrincipal.Animal1Click(Sender: TObject);
begin
  CadastroAnimal;
end;

procedure TFrmPrincipal.Fazenda1Click(Sender: TObject);
begin
  CadastroFazenda;
end;

procedure TFrmPrincipal.Fechar1Click(Sender: TObject);
begin
  Close;
end;

end.

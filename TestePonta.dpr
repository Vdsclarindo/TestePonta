program TestePonta;

uses
  Vcl.Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {FrmPrincipal},
  uDmConexao in 'dao\uDmConexao.pas' {DmConexao: TDataModule},
  uFazendaModel in 'model\uFazendaModel.pas',
  uAnimalModel in 'model\uAnimalModel.pas',
  uAnimalController in 'controller\uAnimalController.pas',
  uDmAnimal in 'dao\uDmAnimal.pas' {DmAnimal: TDataModule},
  uDmFazenda in 'dao\uDmFazenda.pas' {DmFazenda: TDataModule},
  uFrmCadastrarBasico in 'view\uFrmCadastrarBasico.pas' {FrmCadastroBasico},
  uFrmCadastrarFazenda in 'view\uFrmCadastrarFazenda.pas' {FrmCadastrarFazenda},
  uFazendaController in 'controller\uFazendaController.pas',
  uFrmCadastrarAnimal in 'view\uFrmCadastrarAnimal.pas' {FrmCadastrarAnimal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFrmCadastrarAnimal, FrmCadastrarAnimal);
  Application.Run;
end.

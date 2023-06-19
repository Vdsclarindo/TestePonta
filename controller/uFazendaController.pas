unit uFazendaController;

interface

uses
  uFazendaModel,System.SysUtils;

type
  TFazendaController = class
    public
      constructor Create;
      destructor Destroy; override;
      procedure CarregarFazenda(Fazenda : TFazenda; Id : Integer);
      procedure Pesquisar(Nome : string);
      function Inserir(Fazenda : TFazenda; var sErro : string) : Boolean;
      function Alterar(Fazenda : TFazenda; var sErro : string) : Boolean;
      function Excluir(Id : Integer; var sErro : string) : Boolean;
  end;

implementation

uses
  uDmFazenda;

{ TFazendaController }

function TFazendaController.Alterar(Fazenda: TFazenda;
  var sErro: string): Boolean;
begin
  Result := DmFazenda.Alterar(Fazenda, sErro);
end;

procedure TFazendaController.CarregarFazenda(Fazenda: TFazenda; Id: Integer);
begin
  DmFazenda.CarregarFazenda(Fazenda,Id);
end;

constructor TFazendaController.Create;
begin
  //DmFazenda := TDmFazenda.Create(nil);
end;


destructor TFazendaController.Destroy;
begin
 // FreeAndNil(DmFazenda);
  inherited;
end;

function TFazendaController.Excluir(Id: Integer; var sErro: string): Boolean;
begin
  Result := DmFazenda.Excluir(Id, sErro);
end;

function TFazendaController.Inserir(Fazenda: TFazenda;
  var sErro: string): Boolean;
begin
  Result := DmFazenda.Inserir(Fazenda, sErro);
end;

procedure TFazendaController.Pesquisar(Nome: string);
begin
  DmFazenda.Pesquisar(Nome);
end;

end.

unit uAnimalController;

interface

uses
  System.Generics.Collections,System.SysUtils,uAnimalModel;

type
  TAnimalController = class
    public
      constructor Create;
      destructor Destroy; override;
      procedure CarregarAnimal(Animal : TAnimal; Id : Integer);
      procedure Pesquisar(Tag : string);
      function Inserir(Animal : TObjectList<TAnimal>; var sErro : string) : Boolean;
      function Alterar(Animal : TAnimal; var sErro : string) : Boolean;
      function Excluir(Id : Integer; var sErro : string) : Boolean;
  end;

implementation

uses
  uDmAnimal;

{ TAnimalController }

function TAnimalController.Alterar(Animal: TAnimal;
  var sErro: string): Boolean;
begin
  Result := DmAnimal.Alterar(Animal, sErro);
end;

procedure TAnimalController.CarregarAnimal(Animal: TAnimal; Id: Integer);
begin
  DmAnimal.CarregarAnimal(Animal,Id);
end;

constructor TAnimalController.Create;
begin
  //DmAnimal := TDmAnimal.Create(nil);
end;


destructor TAnimalController.Destroy;
begin
 // FreeAndNil(DmAnimal);
  inherited;
end;

function TAnimalController.Excluir(Id: Integer; var sErro: string): Boolean;
begin
  Result := DmAnimal.Excluir(Id, sErro);
end;

function TAnimalController.Inserir(Animal: TObjectList<TAnimal>;
  var sErro: string): Boolean;
begin
  Result := DmAnimal.Inserir(Animal, sErro);
end;

procedure TAnimalController.Pesquisar(Tag: string);
begin
  DmAnimal.Pesquisar(Tag);
end;

end.

unit uAnimalModel;

interface

type
  TAnimal  = class
  private
    FFazenda: Integer;
    FId: Integer;
    FTag: string;
    procedure SetFazenda(const Value: Integer);
    procedure SetId(const Value: Integer);
    procedure SetTag(const Value: string);
  public
   property Id: Integer read FId write SetId;
   property Tag: string read FTag write SetTag;
   property Fazenda : Integer read FFazenda write SetFazenda;

  end;

implementation

{ TAnimal }

procedure TAnimal.SetFazenda(const Value: Integer);
begin
  FFazenda := Value;
end;

procedure TAnimal.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAnimal.SetTag(const Value: string);
begin
  FTag := Value;
end;

end.

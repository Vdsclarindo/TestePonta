unit uFazendaModel;

interface

type
  TFazenda  = class
  private
    FId: Integer;
    FNome: string;
    FEndereco: string;
    FCNPJ: string;
    procedure SetId(const Value: Integer);
    procedure SetNome(const Value: string);
    procedure SetEndereco(const Value: string);
    procedure SetCNPJ(const Value: string);

  public
   property Id: Integer read FId write SetId;
   property Nome: string read FNome write SetNome;
   property Endereco: string read FEndereco write SetEndereco;
   property CNPJ : string read FCNPJ write SetCNPJ;
  end;


implementation

{ TFazenda }

procedure TFazenda.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
end;

procedure TFazenda.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TFazenda.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TFazenda.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.

unit uDmFazenda;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr,uFazendaModel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmFazenda = class(TDataModule)
    qryInserir: TFDQuery;
    qryExcluir: TFDQuery;
    qryAlterar: TFDQuery;
  private
    { Private declarations }
  public
    procedure Pesquisar(Nome : string);
    procedure CarregarFazenda(Fazenda : TFazenda; Id : Integer);
    function Inserir(Fazenda : TFazenda; out sErro: string): Boolean;
    function Alterar(Fazenda : TFazenda; out sErro: string): Boolean;
    function Excluir(Id : Integer; out sErro: string): Boolean;
  end;

var
  DmFazenda: TDmFazenda;

implementation

uses
  uDmConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmFazenda }

procedure TDmFazenda.CarregarFazenda(Fazenda: TFazenda; Id: Integer);
var
  sql : TSQLDataSet;
begin
  sql := TSqlDataSet.Create(nil);
  try
    sql.SQLConnection := DmConexao.sqlConexao;
    sql.CommandText   := 'select * from Fazenda where (id = ' + IntToStr(Id) + ' )';
    sql.Open;

    with Fazenda do
    begin
      Id       := Sql.FieldByName('Id').AsInteger;
      Nome     := Sql.FieldByName('Nome').AsString;
      Endereco := Sql.FieldByName('Endereco').AsString;
      CNPJ     := Sql.FieldByName('CNPJ').AsString;
    end;

  finally
    sql.Free;
  end;

end;

function TDmFazenda.Excluir(Id: Integer; out sErro: string): Boolean;
begin
  with qryExcluir do
   begin
     Params[0].AsInteger := Id;
     try
       ExecSQL();
       //Commit;
       Result := True;
     except on E: Exception do
       begin
         sErro  := 'Ocorreu um erro ao excluir o Fazenda.' + E.Message;
         Result := False;
       end;
     end;
   end;
end;

function TDmFazenda.Alterar(Fazenda: TFazenda; out sErro: string): Boolean;
begin
   with qryAlterar, Fazenda do
   begin
     Params[0].AsString  := Nome;
     Params[1].AsString  := Endereco;
     Params[2].AsString  := CNPJ;
     Params[3].AsInteger := Id;
     try
       ExecSQL();
       //commit;
       Result := True;
     except on E: Exception do
       begin
         sErro  := 'Ocorreu um erro ao alterar o Fazenda.' + E.Message;
         Result := False;
       end;
     end;
   end;

end;

function TDmFazenda.Inserir(Fazenda: TFazenda; out sErro: string): Boolean;
begin
   with qryInserir, Fazenda do
   begin
     Params[0].AsString  := Nome;
     Params[1].AsString  := Endereco;
     Params[2].AsString  := CNPJ;
     try
       ExecSQL();
       //commit;
       Result := True;
     except on E: Exception do
       begin
         sErro  := 'Ocorreu um erro ao inserir o Fazenda.' + E.Message;
         Result := False;
       end;
     end;
   end;
end;

procedure TDmFazenda.Pesquisar(Nome: string);
begin

end;

end.

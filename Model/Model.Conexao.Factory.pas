unit Model.Conexao.Factory;

interface

uses
  Model.Conexao.Firedac,
  Model.Conexao.Firedac.Query,
  Model.Conexao.Interfaces,
  System.Classes;

type
  TModelConexaoFactory = class (TInterfacedObject, iModelConexaoFactory)

  private

  public
    function Conexao: iModelConexao;
    function Query: iModelQuery;

    constructor Create;
    destructor Destroy; override;

    class function New: iModelConexaoFactory;
  end;


implementation

{ TModelConexaoFactory }

function TModelConexaoFactory.Conexao: iModelConexao;
begin
  Result := TModelConexaoFiredac.New;
end;

constructor TModelConexaoFactory.Create;
begin

end;

destructor TModelConexaoFactory.Destroy;
begin

  inherited;
end;

class function TModelConexaoFactory.New: iModelConexaoFactory;
begin
  Result := Self.Create;
end;

function TModelConexaoFactory.Query: iModelQuery;
begin
  Result := TModelConexaoFiredacQuery.New;
end;

end.

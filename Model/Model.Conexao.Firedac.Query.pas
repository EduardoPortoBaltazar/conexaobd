unit Model.Conexao.Firedac.Query;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Model.Conexao.Interfaces,
  System.Classes;

type
  TModelConexaoFiredacQuery = class(TInterfacedObject, iModelQuery)

  private
    FQuery: TFDMemTable;

  public
    function Query: TDataSet;
    constructor create;
    destructor Destroy; override;

    class function New: iModelQuery;

  end;


implementation

{ TModelConexaoFiredacQuery }

constructor TModelConexaoFiredacQuery.create;
begin
  FQuery := TFDMemTable.Create(nil);
end;

destructor TModelConexaoFiredacQuery.Destroy;
begin
  FQuery.Free;
  inherited;
end;

class function TModelConexaoFiredacQuery.New: iModelQuery;
begin
  Result := Self.create;
end;

function TModelConexaoFiredacQuery.Query: TDataSet;
begin
  Result := FQuery;
end;

end.

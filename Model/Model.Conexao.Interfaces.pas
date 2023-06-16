unit Model.Conexao.Interfaces;

interface

uses
  Data.DB;

type
  iModelConexao = interface
    ['{4FB10501-72BB-4643-90E2-5B7843B432A2}']
    function Connection: TCustomConnection;
  end;

  iModelQuery = interface
    ['{507717D2-BA35-411E-BD2F-ED343BB88844}']
    function Query: TDataSet;
  end;

  iModelConexaoFactory = interface
    ['{9A4B8D0C-9574-482B-92E7-2936DF1A516F}']
     function Conexao: iModelConexao;
     function Query: iModelQuery;
  end;

implementation

end.

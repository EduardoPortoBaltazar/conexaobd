unit Model.Conexao.Firedac;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Model.Conexao.Interfaces,
  System.Classes;

type
  TModelConexaoFiredac = class(TInterfacedObject, iModelConexao)

  private
    FConexao: TFDConnection;

  public
    function Connection: TCustomConnection;

    constructor create;
    destructor Destroy; override;

    class function New: iModelConexao;


  end;

implementation

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Connection: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TModelConexaoFiredac.create;
begin
  FConexao := TFDConnection.Create(nil);

  FConexao.Params.DriverID := 'FB';
  FConexao.Params.Database := 'C:\Financeiro\Dropbox\projetosLPORTO\PortoFinan\Win32\Debug\FE.fdb';
  FConexao.Params.UserName := 'sysdba';
  FConexao.Params.Password := 'masterkey';
  FConexao.Open();


// FConexao.Params.Add('DriverID='+ 'FB');
// FConexao.Params.Add('Database='+ 'C:\Financeiro\Dropbox\projetosLPORTO\PortoFinan\Win32\Debug\FE.fdb');
// FConexao.Params.Add('Password='+ 'masterkey');
// FConexao.Params.Add('User_Name='+ 'sysdba');
// FConexao.Params.Add('Protocol=' + 'Local');
// FConexao.Open();

// FConexao.Params.Add('Server='+server);
// FConexao.Params.Add('Port='+System.SysUtils.IntToStr(port));
end;

destructor TModelConexaoFiredac.Destroy;
begin
  FConexao.Free;
  inherited;
end;

class function TModelConexaoFiredac.New: iModelConexao;
begin
  Result := Self.create;
end;

end.

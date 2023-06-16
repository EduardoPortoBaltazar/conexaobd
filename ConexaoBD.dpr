program ConexaoBD;

uses
  Vcl.Forms,
  FConexao in 'View\FConexao.pas' {Form1},
  Model.Conexao.Interfaces in 'Model\Model.Conexao.Interfaces.pas',
  Model.Conexao.Firedac in 'Model\Model.Conexao.Firedac.pas',
  Model.Conexao.Firedac.Query in 'Model\Model.Conexao.Firedac.Query.pas',
  Model.Conexao.Factory in 'Model\Model.Conexao.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

unit FConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Model.Conexao.Factory;

type
  TForm1 = class(TForm)
    Conectar: TButton;
    procedure ConectarClick(Sender: TObject);
  private
    procedure Conexao;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

{ TForm1 }

procedure TForm1.ConectarClick(Sender: TObject);
begin
  Conexao
end;

procedure TForm1.Conexao;
begin
  try
    TModelConexaoFactory
          .New
          .Conexao
          .Connection;

    ShowMessage('Conexão Realizada com Sucesso!');
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
end;

end.

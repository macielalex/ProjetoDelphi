unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, uDTMConexao;
type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATORIO1: TMenuItem;
    CLIENTE1: TMenuItem;
    N1: TMenuItem;
    CATEGORIA1: TMenuItem;
    PRODUTO1: TMenuItem;
    FECHAR1: TMenuItem;
    mnuFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTE2: TMenuItem;
    N2: TMenuItem;
    PRODUTO2: TMenuItem;
    N3: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CATEGORIA1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategorias;


procedure TfrmPrincipal.CATEGORIA1Click(Sender: TObject);
begin
     frmCadCategoria:=TfrmCadCategoria.Create(Self);
     frmCadCategoria.ShowModal;
     frmCadCategoria.Release;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
        dtmPrincipal := TdtmPrincipal.Create(Self);
        with dtmPrincipal.ConexaoDB do
        begin
          SQLHourGlass := True;
          Protocol := 'mssql';
          LibraryLocation := 'C:\Dev\Delphi\ProjetoDelphi\ntwdblib.dll';
          HostName :=  '.\SQLEXPRESS';
          Port := 1433;
          User := 'sa';
          Password := 'L@gtech';
          Database := 'VENDAS';
          Connected := true;

        end;
end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
//Close;
Application.Terminate;
end;

end.

program Vendas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDTMConexao in 'dataModule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  uTelaHeranca in 'heranca\uTelaHeranca.pas' {frmTelaHeranca},
  uCadCategorias in 'cadastro\uCadCategorias.pas' {frmTelaHeranca1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmTelaHeranca, frmTelaHeranca);
  Application.CreateForm(TfrmTelaHeranca1, frmTelaHeranca1);
  Application.Run;
end.

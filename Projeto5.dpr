program Projeto5;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  UPagina2 in 'UPagina2.pas' {frmPaginaDois};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmPaginaDois, frmPaginaDois);
  Application.Run;
end.

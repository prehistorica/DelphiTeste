unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    btnProxima: TButton;
    imgInicial: TImage;
    btnMostrar: TButton;
    btnEsconder: TButton;
    btnSair: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure btnProximaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnEsconderClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
   uses UPagina2;

procedure TForm1.btnEsconderClick(Sender: TObject);
begin
  imgInicial.Visible := false;
end;

procedure TForm1.btnMostrarClick(Sender: TObject);
begin
  imgInicial.Visible := true;
end;

procedure TForm1.btnProximaClick(Sender: TObject);
begin

   try
     application.CreateForm(TfrmPaginaDois, frmPaginaDois) ;
     frmPaginaDois.Show;
   finally

   end;

end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
if
 MessageDlg('Deseja Sair?', mtConfirmation, mbYesNo,0)=mrYes then
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  imgInicial.Visible := false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := 'Data: ' + datetostr(date);
  StatusBar1.Panels[2].Text := 'Hora: ' + timetostr(time);
end;

end.

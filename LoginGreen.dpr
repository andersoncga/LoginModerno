program LoginGreen;

uses
  Vcl.Forms,
  View.Login_Green in 'View.Login_Green.pas' {ViewLogin_Green};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewLogin_Green, ViewLogin_Green);
  Application.Run;
end.

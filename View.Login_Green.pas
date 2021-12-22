unit View.Login_Green;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons;

type
  TViewLogin_Green = class(TForm)
    pnl_bg: TPanel;
    pnl_left: TPanel;
    img_wave: TImage;
    img_figure: TImage;
    pnl_login_main: TPanel;
    pnl_avatar: TPanel;
    img_avatar: TImage;
    lbl_bemvindo: TLabel;
    pnl_user: TPanel;
    img_user: TImage;
    edt_user: TEdit;
    pnl_bar_user: TPanel;
    pnl_password: TPanel;
    img_password: TImage;
    edt_password: TEdit;
    pnl_bar_password: TPanel;
    lbl_user: TLabel;
    lbl_password: TLabel;
    pnl_login: TPanel;
    spb_login: TSpeedButton;
    spb_close: TSpeedButton;
    procedure edt_userEnter(Sender: TObject);
    procedure edt_userExit(Sender: TObject);
    procedure edt_passwordEnter(Sender: TObject);
    procedure edt_passwordExit(Sender: TObject);
    procedure spb_closeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  var
    FPath_Images  : String;

  end;

var
  ViewLogin_Green: TViewLogin_Green;

implementation

{$R *.dfm}

procedure TViewLogin_Green.edt_passwordEnter(Sender: TObject);
begin

  pnl_bar_password.Color  :=  $009CCF37;
  lbl_password.Visible    :=  True;
  img_password.Picture.LoadFromFile(FPath_Images + 'Images\padlock_green.png');


end;

procedure TViewLogin_Green.edt_passwordExit(Sender: TObject);
begin

  pnl_bar_password.Color  :=  clGray;

  if edt_password.Text <> '' then
    lbl_password.Visible    :=  True
  else begin

    lbl_password.Visible    :=  False;
    img_password.Picture.LoadFromFile(FPath_Images + 'Images\padlock_gray.png');

  end;

end;

procedure TViewLogin_Green.edt_userEnter(Sender: TObject);
begin

  pnl_bar_user.Color  :=  $009CCF37;
  lbl_user.Visible    :=  True;
  img_user.Picture.LoadFromFile(FPath_Images + 'Images\user_green.png');

end;

procedure TViewLogin_Green.edt_userExit(Sender: TObject);
begin

  pnl_bar_user.Color  :=  clGray;

  if edt_user.Text <> '' then
    lbl_user.Visible    :=  True
  else begin

    lbl_user.Visible    :=  False;
    img_user.Picture.LoadFromFile(FPath_Images + 'Images\user_gray.png');

  end;

end;

procedure TViewLogin_Green.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action  := caFree;

end;

procedure TViewLogin_Green.FormCreate(Sender: TObject);
begin

  FPath_Images  := ExtractFilePath(Application.ExeName);

end;

procedure TViewLogin_Green.spb_closeClick(Sender: TObject);
begin

  Close;

end;

end.

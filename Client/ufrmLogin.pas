unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzLabel, Vcl.DBCtrls;

type
  TfrmLogin = class(TForm)
    lblContrasenia: TrzLabel;
    lblUsuario: TrzLabel;
    btnCancelar: TrzButton;
    btnOK: TrzButton;
    txtContrasenia: TrzEdit;
    cmbEmpleados: TDBLookupComboBox;
    RzLabel1: TRzLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    RzLabel2: TRzLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses udmData, ufrmMain;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.btnOKClick(Sender: TObject);
var
  TempUser:     String;
  TempPassword: String;
  id:           Integer;
begin
//  TempUser     := txtUsuario.Text;
//  TempPassword := txtContrasenia.Text;
//  id := dmData.VerificaLogin(TempUser, TempPassword);
  id:= 1;
  case id of
    -1: ShowMessage('Usuario o contraseña invalido');
    0: ShowMessage('Usuario inactivo');
    1: begin
      dmData.Login;
      Hide;
      with TfrmMain.Create(Self) do
      try
        Perfil:= dmData.cdsEmpleadosID_PERFIL.AsInteger;
        ActivarControles;
        ShowModal;
      finally
        Free;
      end;
    end;
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action:= CaFree;
end;

end.

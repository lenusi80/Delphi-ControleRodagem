unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses UDM, URotinas, UPrincipal;

{$R *.dfm}

procedure TFrmLogin.BitBtn1Click(Sender: TObject);
begin
  if edit1.Text='' then
  begin
    Application.MessageBox('DIGITE O NOME DO USUÁRIO !'#13+'','',MB_ICONERROR+MB_OK);
    edit1.SetFocus;
    Abort;
  end;
  if edit2.Text='' then
  begin
    Application.MessageBox('DIGITE A SENHA DO USUÁRIO !'#13+'','',MB_ICONERROR+MB_OK);
    edit2.SetFocus;
    Abort;
  end;
  with DM do
  begin
  QrUsers.Close;
  QrUsers.SQL.Clear;
  QrUsers.SQL.Add('select * from Users');
  QrUsers.SQL.Add(' where usuario = "' + edit1.Text + '"');
  QrUsers.Open;

  if QrUsers.IsEmpty then
    begin
     Application.MessageBox('USUÁRIO NÃO ENCONTRADO !'#13+'','',MB_ICONERROR+MB_OK);
     edit1.SetFocus;
     Abort;
    end
  else begin
    if QrUsers.FieldByName('bloqueado').AsBoolean then
     begin
      Application.MessageBox('Usuário Bloqueado, Contate o Supervisor !!!'#13+'','',MB_ICONERROR + MB_OK);
      frmLogin.close;
      Abort;
     end;
   if not Validar(edit2.Text, QrUsers.FieldByName('Senha').AsString) then 
    begin
      Application.MessageBox('SENHA INCORRETA, Digite Novamente !!!'#13+'','',MB_ICONERROR+MB_OK);
      edit2.SetFocus;
      Abort;
    end
    else begin
      usuariologado := edit1.Text;
      frmLogin.close;
    end;
  end;
  end;
end;

procedure TFrmLogin.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrmLogin.Edit1Enter(Sender: TObject);
begin
CorEntrada(sender);
end;

procedure TFrmLogin.Edit1Exit(Sender: TObject);
begin
CorSaida(sender);
end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
Panel1.Caption := DataExtenso(date);
Edit1.SetFocus;
end;

end.

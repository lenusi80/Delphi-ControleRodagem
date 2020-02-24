unit UConfigBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Registry;

type
  TFrmConfigBD = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
   var
    registro : Tregistry;
  public
    { Public declarations }
  end;

var
  FrmConfigBD: TFrmConfigBD;

implementation

{$R *.dfm}

procedure TFrmConfigBD.BitBtn1Click(Sender: TObject);
begin
OpenDialog1.Execute;
if OpenDialog1.FileName <> '' then
Edit1.Text := OpenDialog1.FileName;
end;

procedure TFrmConfigBD.BitBtn2Click(Sender: TObject);
var
 temp : string;
 FullProgPath : PChar;
begin
     temp := ExtractFilePath(Edit1.text);
     Registro := Tregistry.Create;
      with registro do
       begin
        RootKey := HKEY_CURRENT_USER;
        OpenKey('\SOFTWARE\ControleRodagem\', true);
        Writestring('caminBD', temp);
        CloseKey;
        free;
       end;
   showmessage('Agora o Sistema Será Reiniciado Para Validar a Nova Configuração');
   FullProgPath := PChar(Application.ExeName);
   WinExec(FullProgPath, SW_SHOW);
   Application.Terminate;
end;

procedure TFrmConfigBD.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrmConfigBD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmConfigBD.Release;
FrmConfigBD := nil;
end;

end.

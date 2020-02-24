unit UCorFundo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ColorGrd, registry;

type
  TFrmCorFundo = class(TForm)
    ColorGrid1: TColorGrid;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ColorGrid1Click(Sender: TObject);
    procedure ColorGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCorFundo: TFrmCorFundo;

implementation

uses UPrincipal;

var
 corFundo : string[12];
 registro : Tregistry;

{$R *.dfm}

procedure TFrmCorFundo.BitBtn1Click(Sender: TObject);
var
 Check : boolean;
begin
if CheckBox1.Checked then
 Check := false
else
 Check := true;

Registro := Tregistry.Create;
with registro do
 begin
   RootKey := HKEY_CURRENT_USER;
   OpenKey('\SOFTWARE\ControleRodagem\', true);
   Writestring('CorFundo', corFundo );
   WriteBool('ImgFundo', check);
   CloseKey;
   free;
 end;
close;
end;

procedure TFrmCorFundo.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrmCorFundo.ColorGrid1Click(Sender: TObject);
begin
FrmPrincipal.Color := ColorGrid1.BackgroundColor;
corFundo := ColorToString(ColorGrid1.BackgroundColor);
CheckBox1.Visible := true;
end;

procedure TFrmCorFundo.ColorGrid1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
SwapMouseButton(true);
end;

procedure TFrmCorFundo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmCorFundo.Release;
FrmCorFundo := nil;
end;

procedure TFrmCorFundo.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
SwapMouseButton(false);
end;

end.

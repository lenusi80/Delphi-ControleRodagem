unit USplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFrmSplash = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation


{$R *.dfm}

procedure TFrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
sleep(1000);
end;

procedure TFrmSplash.FormPaint(Sender: TObject);
var
  altura, coluna: Word;
begin
  altura := (ClientHeight + 255) div 256;
  for coluna := 0 to 255 do
    with Canvas do
    begin
      Brush.Color := RGB(coluna, 0, 0); { Modifique para obter cores diferentes }
      FillRect(Rect(0, coluna * altura, ClientWidth, (coluna + 1) * altura)) ;
    end;
end;


procedure TFrmSplash.FormResize(Sender: TObject);
begin
 Invalidate;
end;

end.

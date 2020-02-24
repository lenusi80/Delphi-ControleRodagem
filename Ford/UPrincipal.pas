unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, ToolWin, ActnCtrls, ActnMenus, StdActns,
  Menus, jpeg, ExtCtrls, ComCtrls, Buttons, WinSkinData, XPStyleActnCtrls,
  SHELLAPI, StdCtrls, ImgList, registry, GIFImage;

type
  TFrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    ToolButton1: TToolButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Timer1: TTimer;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    Coordenadores: TAction;
    Plantao: TAction;
    Motoristas: TAction;
    Veiculos: TAction;
    Rotas: TAction;
    Grupos: TAction;
    Paradas: TAction;
    ProgramarFaltas: TAction;
    Sair: TAction;
    Sobre: TAction;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Controladores: TAction;
    ProgramarFerias: TAction;
    EscalaEspecial: TAction;
    ImageList1: TImageList;
    ILMenus: TImageList;
    Calc: TAction;
    Label2: TLabel;
    RelResumoVeic: TAction;
    Calendario: TAction;
    CorFundo: TAction;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Gerarbackup: TAction;
    RestBackup: TAction;
    Image1: TImage;
    users: TAction;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    CaminhoBD: TAction;
    procedure Sair1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CoordenadoresExecute(Sender: TObject);
    procedure PlantaoExecute(Sender: TObject);
    procedure SairExecute(Sender: TObject);
    procedure SobreExecute(Sender: TObject);
    procedure GruposExecute(Sender: TObject);
    procedure ParadasExecute(Sender: TObject);
    procedure RotasExecute(Sender: TObject);
    procedure MotoristasExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure VeiculosExecute(Sender: TObject);
    procedure ControladoresExecute(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ProgramarFeriasExecute(Sender: TObject);
    procedure ProgramarFaltasExecute(Sender: TObject);
    procedure EscalaEspecialExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure CalcExecute(Sender: TObject);
    procedure CalendarioExecute(Sender: TObject);
    procedure CorFundoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure GerarbackupExecute(Sender: TObject);
    procedure RestBackupExecute(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormResize(Sender: TObject);
    procedure usersExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure CaminhoBDExecute(Sender: TObject);
    procedure RelResumoVeicExecute(Sender: TObject);
  private
  var
    Registro : Tregistry;
    { Private declarations }
  public

  end;

var
  FrmPrincipal: TFrmPrincipal;
  UsuarioLogado : string;
  OK : boolean = false;


implementation

uses UCoord, URotinas, UPlantao, UGrupos, UVerificaGrupoFolga, UParadas, URotas,
  UMotoristas, UVeiculos, UControladores, UTeste, UProgrAusencias, UProgrFerias,
  UESCALAESPECIAL, URelatorios, UFrmCalendario, UCorFundo,
  UDM, Ubackup, UUsers, UMenus, ABOUT, UConfigBD, URelResumoVeic;

var
  NumLock,Capslock,hora : string;

{$R *.dfm}
{$R WindowsXP.RES}

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFrmPrincipal.SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrmPrincipal.SobreExecute(Sender: TObject);
begin
Application.CreateForm(TAboutBox, AboutBox);
AboutBox.ShowModal;
//ShellAbout(Handle, 'Aplicativo', 'Le Informatica', Application.Icon.Handle);
end;

procedure TFrmPrincipal.SpeedButton10Click(Sender: TObject);
begin
If Gerarbackup.Enabled then
GerarbackupExecute(Gerarbackup);
end;

procedure TFrmPrincipal.SpeedButton11Click(Sender: TObject);
var
  FullProgPath : PChar;
begin
 if FrmPlantao = nil then
 begin
   FullProgPath := PChar(Application.ExeName);
   Application.Terminate;
   WinExec(FullProgPath, SW_SHOW);
 end
 else
  ShowMessage('A tela "Plantão" se encontra aberta');

end;

procedure TFrmPrincipal.SpeedButton12Click(Sender: TObject);
begin
close;
end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
if Motoristas.Enabled then  
MotoristasExecute(Motoristas);
end;

procedure TFrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
if Veiculos.Enabled then
VeiculosExecute(Veiculos);
end;

procedure TFrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
If EscalaEspecial.Enabled then
EscalaEspecialExecute(EscalaEspecial);
end;

procedure TFrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
Application.CreateForm(TFormTeste, FormTeste);
FormTeste.Show;
end;

procedure TFrmPrincipal.SpeedButton5Click(Sender: TObject);
begin
If ProgramarFaltas.Enabled then
ProgramarFaltasExecute(ProgramarFaltas);
end;

procedure TFrmPrincipal.SpeedButton6Click(Sender: TObject);
begin
CalendarioExecute(Calendario);
end;

procedure TFrmPrincipal.SpeedButton7Click(Sender: TObject);
begin
If ProgramarFerias.Enabled then
ProgramarFeriasExecute(ProgramarFerias);
end;

procedure TFrmPrincipal.SpeedButton8Click(Sender: TObject);
begin
CalcExecute(Calc);
end;

procedure TFrmPrincipal.SpeedButton9Click(Sender: TObject);
begin
If Plantao.Enabled then
PlantaoExecute(Plantao);
end;

procedure TFrmPrincipal.GerarbackupExecute(Sender: TObject);
begin
FrmBackup.ShowModal;
end;

procedure TFrmPrincipal.CalcExecute(Sender: TObject);
begin
WinExec('c:\windows\system32\calc.exe', WS_MAXIMIZE);
end;

procedure TFrmPrincipal.CalendarioExecute(Sender: TObject);
begin
Application.CreateForm(TFrmCalendario, FrmCalendario);
FrmCalendario.Show;
end;

procedure TFrmPrincipal.CaminhoBDExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmConfigBD, FrmConfigBD);
  FrmConfigBD.ShowModal;
end;

procedure TFrmPrincipal.ControladoresExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmControladores, FrmControladores);
  FrmControladores.ShowModal;
end;

procedure TFrmPrincipal.CoordenadoresExecute(Sender: TObject);
begin
Application.CreateForm(TFrmCadCoordenador, FrmCadCoordenador);
FrmCadCoordenador.ShowModal;
end;

procedure TFrmPrincipal.CorFundoExecute(Sender: TObject);
begin
Application.CreateForm(TFrmCorFundo, FrmCorFundo);
FrmCorFundo.ShowModal;
end;

procedure TFrmPrincipal.EscalaEspecialExecute(Sender: TObject);
begin
Application.CreateForm(TFrmEscalaEspecial, FrmEscalaEspecial);
FrmEscalaEspecial.ShowModal;
end;

procedure TFrmPrincipal.PlantaoExecute(Sender: TObject);
begin
 if FrmPlantao = nil then
 begin
  Application.CreateForm(TFrmPlantao, FrmPlantao);
  FrmPlantao.Show;
 end
 else
  begin
   FrmPlantao.WindowState := wsNormal;
   FrmPlantao.Show;
  end;
end;

procedure TFrmPrincipal.GruposExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCadGrupos, FrmCadGrupos);
  FrmCadGrupos.showmodal;
end;

procedure TFrmPrincipal.MotoristasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmMotoristas, FrmMotoristas);
  FrmMotoristas.ShowModal;
end;

procedure TFrmPrincipal.ParadasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmParadas, FrmParadas);
  FrmParadas.ShowModal;
end;

procedure TFrmPrincipal.ProgramarFaltasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmProgrAusencias, FrmProgrAusencias);
  FrmProgrAusencias.ShowModal;
end;

procedure TFrmPrincipal.ProgramarFeriasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmProgrFerias, FrmProgrFerias);
  FrmProgrFerias.ShowModal;
end;

procedure TFrmPrincipal.RelResumoVeicExecute(Sender: TObject);
begin
FrmRelatorios.frReport2.LoadFromFile('c:\ford\ResumoVeiculos.frf');
FrmRelatorios.frReport2.ShowReport;
end;

procedure TFrmPrincipal.RestBackupExecute(Sender: TObject);
var
 a : string;
begin
a := ExtractFilePath(Application.ExeName) + '\Backup.exe';
WinExec(PChar(a), WS_MAXIMIZE);
Application.Terminate;
end;

procedure TFrmPrincipal.RotasExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmRotas, FrmRotas);
  FrmRotas.ShowModal;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
With DM do
 begin
  LigaBD.Connected := false;
  LigaBD2.Connected := false;
  LigaBD3.Connected := false;
 end;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg ( 'Você tem certeza de que quer sair?',
  mtConfirmation, [mbYes, mbNo], 0) = idNo then
  Canclose:=False;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
Timer1Timer(Self);
Registro := Tregistry.Create;
try
Image1.Picture.LoadFromFile('\ford\ControlRod.jpg');
except
end;
with registro do
 begin
  RootKey := HKEY_CURRENT_USER;
  OpenKey('\SOFTWARE\ControleRodagem\', true);
    if  ReadString('CorFundo') = '' then
         FrmPrincipal.Color := clNavy
       else
         FrmPrincipal.Color := StringToColor(ReadString('CorFundo'));
if registro.ValueExists('ImgFundo') = false then
     WriteBool('ImgFundo', true);
     Image1.Visible := ReadBool('ImgFundo');
  CloseKey;
  free;
 end;
IniciaMenus;
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Timer1Timer(Self);
end;

procedure TFrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
Timer1Timer(Self); 
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
AlinharImage(FrmPrincipal,Image1,true);
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
   VerificaEscalaFolga2;
end;

procedure TFrmPrincipal.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
with StatusBar1.Canvas do
begin
// Desenha as imagens de acordo com o indice de cada panel
ImageList1.Draw(StatusBar1.Canvas,Rect.Left+2,Rect.Top+1,Panel.Index);
  // Escreve o texto em cada panel
  if Panel.Index = 0 then
  TextOut(Rect.Left + 25, Rect.Top + 1,(' Usuário Logado:  "' + UsuarioLogado + '"'));
  if Panel.Index = 1 then
  TextOut(Rect.Left + 20, Rect.Top + 1,numlock + capslock);
  if Panel.Index = 2 then
  TextOut(Rect.Left + 25, Rect.Top + 1,hora);
end;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
// Mostra Data por extenso e Hora
hora := DataExtenso(date) + '   |   ' +  timetostr(time) + '      ';

// Indica o estado das teclas CapsLock e NumLock
if GetKeyState(VK_NUMLOCK) = 1 then
numlock := '     NumLock  '
else
numlock := '                 ';
if GetKeyState(VK_CAPITAL) = 1 then
capslock := '|  CapsLock'
else
capslock := '|                 ';

// Atualiza o Status Bar
StatusBar1.Refresh;
end;

procedure TFrmPrincipal.usersExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmUsers, FrmUsers);
  FrmUsers.ShowModal;
end;

procedure TFrmPrincipal.VeiculosExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmVeiculos, FrmVeiculos);
  FrmVeiculos.ShowModal;
end;

end.

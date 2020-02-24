unit UControladores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DBCtrls, DB, BDE, Mask, ADODB, Grids,
  DBGrids;

type
  TFrmControladores = class(TForm)
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    ADOQuery1: TADOQuery;
    ADOQuery1Controlador: TWideStringField;
    ADOQuery1Turno: TWideStringField;
    ADOQuery1Ramal: TIntegerField;
    ADOQuery1Obs: TWideMemoField;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmControladores: TFrmControladores;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmControladores.BitBtn1Click(Sender: TObject);
begin
TabSheet1.Show;
 if DM.TbControlador.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
  DM.TbControlador.insert;
    DBEdit1.SetFocus;
    BitBtn3.Enabled := false;
    BitBtn8.Enabled := true;
end;

procedure TFrmControladores.BitBtn2Click(Sender: TObject);
begin
if DM.TbControlador.State in [dsinsert,dsedit] then
  If DBEdit1.text <> '' then
   begin
    DM.TbControlador.Post;
    ShowMessage('Gravação Efetuada Com Sucesso');
    BitBtn3.Enabled := true;
    DM.TbGrupos.Requery([]);
   end
   else
   begin
    MessageDLG('Gravação Não Efetuada, Falta Dados',mtError,[mbok],0);
    DBEdit1.SetFocus;
   end;
end;

procedure TFrmControladores.BitBtn3Click(Sender: TObject);
begin
DM.TbControlador.Refresh;
if (DM.TbControlador.Bof <> true) and (DM.TbControlador.Eof <> true) then
  begin
   if messagedlg('Deseja Excluir este Registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DM.TbControlador.Delete;
   end
      else
 showmessage('Nenhum Registro Para Excluir!');
end;

procedure TFrmControladores.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrmControladores.BitBtn8Click(Sender: TObject);
begin
DM.TbControlador.Cancel;
 BitBtn3.Enabled := true;
end;

procedure TFrmControladores.DBEdit1Exit(Sender: TObject);
begin
if CondicaoEditInsert = true then
begin
  ADOQuery1.Requery([]);
  if ADOQuery1.locate('controlador',DBedit1.Text,[locaseinsensitive]) = true then
   begin
    showmessage('Nome Já Cadastrado, Escolha Outro');
    DBEdit1.SetFocus;
    DBEdit1.Clear;
   end;
end;
end;

procedure TFrmControladores.DBGrid1DblClick(Sender: TObject);
begin
DM.TbControlador.locate('controlador',ADOQuery1.FieldByName('controlador').AsString,[locaseinsensitive]);
TabSheet1.Show;
end;

procedure TFrmControladores.DBMemo1Exit(Sender: TObject);
begin
BitBtn2.SetFocus;
end;

procedure TFrmControladores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CondicaoEditInsert := false;
DM.TbControlador.Cancel;
FrmControladores.Release;
FrmControladores := nil;
end;

procedure TFrmControladores.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmControladores.FormShow(Sender: TObject);
begin
ADOQuery1.Active := true;
end;

procedure TFrmControladores.TabSheet1Show(Sender: TObject);
begin
BitBtn8.SetFocus;
end;

procedure TFrmControladores.TabSheet2Show(Sender: TObject);
begin
if ADOQuery1.Active then
ADOQuery1.Requery([]);
end;

end.

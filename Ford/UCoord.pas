unit UCoord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, BDE,
   DBCtrls, Mask, ADODB;

type
  TFrmCadCoordenador = class(TForm)
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Shape1: TShape;
    Shape3: TShape;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    GroupBox6: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox7: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    GroupBox8: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit13: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    BitBtn8: TBitBtn;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  FrmCadCoordenador: TFrmCadCoordenador;

implementation

uses URotinas, UDM;

{$R *.dfm}

procedure TFrmCadCoordenador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CondicaoEditInsert := false;
DM.TbCoord.Cancel;
DM.TbCoord.Requery([]);
FrmCadCoordenador.Release;
FrmCadCoordenador := nil;
end;

procedure TFrmCadCoordenador.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmCadCoordenador.FormShow(Sender: TObject);
begin
ADOQuery1.Active := true;
end;

procedure TFrmCadCoordenador.TabSheet1Show(Sender: TObject);
begin
BitBtn8.SetFocus;
end;

procedure TFrmCadCoordenador.TabSheet2Show(Sender: TObject);
begin
if ADOQuery1.Active then
ADOQuery1.Requery([]);
end;

procedure TFrmCadCoordenador.BitBtn1Click(Sender: TObject);
begin
TabSheet1.Show;
 if DM.TbCoord.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
 begin
  DM.TbCoord.insert;
  dbedit13.text := datetostr(now);
  end;
    DBEdit1.SetFocus;
    BitBtn3.Enabled := false;
    BitBtn5.Enabled := false;
    BitBtn6.Enabled := false;
    BitBtn7.Enabled := false;
end;

procedure TFrmCadCoordenador.BitBtn2Click(Sender: TObject);
begin
if DM.TbCoord.State in [dsinsert,dsedit] then
  If DBEdit1.text <> '' then
   begin
     DM.TbCoord.Post;
     ShowMessage('Gravação Efetuada Com Sucesso');
     TabSheet1.Show;
     BitBtn3.Enabled := true;
     BitBtn5.Enabled := true;
     BitBtn6.Enabled := true;
     BitBtn7.Enabled := true;
     DM.TbCoord.Requery([]);
   end
    else
     begin
      MessageDLG('Gravação Não Efetuada, Falta Dados',mtError,[mbok],0);
      TabSheet1.Show;
      DBEdit1.SetFocus;
     end;
end;

procedure TFrmCadCoordenador.BitBtn3Click(Sender: TObject);
begin
DM.TbCoord.Refresh;
if (DM.TbCoord.Bof <> true) and (DM.TbCoord.Eof <> true) then
  begin
   if messagedlg('Deseja Excluir este Registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DM.TbCoord.Delete;
   end
      else
 showmessage('Nenhum Registro Para Excluir!');
end;


procedure TFrmCadCoordenador.BitBtn4Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFrmCadCoordenador.BitBtn6Click(Sender: TObject);
begin
DM.TbCoord.prior;
end;

procedure TFrmCadCoordenador.BitBtn7Click(Sender: TObject);
begin
dm.TbCoord.Next;
end;

procedure TFrmCadCoordenador.BitBtn8Click(Sender: TObject);
begin
DM.TbCoord.Cancel;
    BitBtn3.Enabled := true;
    BitBtn5.Enabled := true;
    BitBtn6.Enabled := true;
    BitBtn7.Enabled := true;
end;

procedure TFrmCadCoordenador.DBEdit1Exit(Sender: TObject);
begin
if CondicaoEditInsert = true then
begin
ADOQuery1.Requery([]);
if ADOQuery1.locate('nome',DBedit1.Text,[locaseinsensitive]) = true then
begin
showmessage('Nome Já Cadastrado, Escolha Outro');
DBEdit1.SetFocus;
DBEdit1.Clear;
end;
end;
end;

procedure TFrmCadCoordenador.DBGrid1DblClick(Sender: TObject);
begin
DM.TbCoord.locate('nome',ADOQuery1.FieldByName('nome').AsString,[locaseinsensitive]);
TabSheet1.Show;
end;

end.

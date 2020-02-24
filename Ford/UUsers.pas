unit UUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DB, BDE, DBGrids, ComCtrls,
  Buttons;

type
  TFrmUsers = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    Edit1: TEdit;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    GroupBox7: TGroupBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    GroupBox8: TGroupBox;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsers: TFrmUsers;

implementation

uses UDM, URotinas;

{$R *.dfm}

procedure TFrmUsers.BitBtn1Click(Sender: TObject);
var
 i: integer;
begin
Edit1.Clear;
Edit2.Clear;
TabSheet1.show;
  if DM.TbUsers.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
  DM.TbUsers.insert;
  with FrmUsers do
   begin
     for i:= 0 to ComponentCount -1 do
      if(Components[i] is TDBCheckBox) then
      TDBCheckBox(Components[i]).Checked := true;
     end;
    DBCheckBox16.Checked := false;
    DBEdit1.SetFocus;
    BitBtn3.Enabled := false;
    BitBtn8.Enabled := true;
    BitBtn6.Enabled := false;
    BitBtn7.Enabled := false;
end;

procedure TFrmUsers.BitBtn2Click(Sender: TObject);
begin
if DM.TbUsers.State in [dsinsert,dsedit] then
  If (DBEdit1.text <> '') and (Edit2.Text <> '') then
   begin
    DM.TbUsersSenha.AsString := Codigo(Edit2.Text);
    DM.TbUsers.Post;
    ShowMessage('Gravação Efetuada Com Sucesso');
    BitBtn3.Enabled := true;
    BitBtn6.Enabled := true;
    BitBtn7.Enabled := true;
    Edit1.Clear;
    Edit2.Clear;
    TabSheet1.show;
    DM.TbUsers.Requery([]);
   end
   else
   begin
    TabSheet1.show;
    MessageDLG('Gravação Não Efetuada, Falta Dados',mtError,[mbok],0);
    DBEdit1.SetFocus;
   end;
end;

procedure TFrmUsers.BitBtn3Click(Sender: TObject);
begin
DM.TbUsers.Refresh;
if (DM.TbUsers.Bof <> true) and (DM.TbUsers.Eof <> true) then
  begin
   if messagedlg('Deseja Excluir este Registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DM.TbUsers.Delete;
   end
      else
 showmessage('Nenhum Registro Para Excluir!');
end;

procedure TFrmUsers.BitBtn4Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFrmUsers.BitBtn6Click(Sender: TObject);
begin
DM.TbUsers.Prior;
end;

procedure TFrmUsers.BitBtn7Click(Sender: TObject);
begin
DM.TbUsers.Next;
end;

procedure TFrmUsers.BitBtn8Click(Sender: TObject);
begin
DM.TbUsers.Cancel;
    Edit1.Clear;
    Edit2.Clear;
 BitBtn3.Enabled := true;
 BitBtn6.Enabled := true;
 BitBtn7.Enabled := true;
end;

procedure TFrmUsers.DBGrid1DblClick(Sender: TObject);
begin
if DM.TbUsers.State in [dsinsert,dsedit] then
else
 begin
  DM.TbUsers.Edit;
  DBEdit1.SetFocus;
 end;
end;

procedure TFrmUsers.Edit2Exit(Sender: TObject);
begin
if Edit2.Text <> Edit1.Text then
 begin
  showmessage('Senha não confere com anterior, Digite Novamente');
  Edit1.SetFocus;
 end;
end;

procedure TFrmUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM.TbUsers.Cancel;
FrmUsers.Release;
FrmUsers := nil;
end;

procedure TFrmUsers.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

end.

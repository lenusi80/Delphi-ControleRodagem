unit UVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, BDE, Mask, Grids,
  DBGrids, DBTables, ADODB;

type
  TFrmVeiculos = class(TForm)
    GroupBox2: TGroupBox;
    Shape1: TShape;
    Shape3: TShape;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox10: TGroupBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox12: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox13: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    GroupBox15: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox16: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox17: TGroupBox;
    ComboBox1: TComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVeiculos: TFrmVeiculos;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmVeiculos.BitBtn1Click(Sender: TObject);
begin
TabSheet1.Show;
 if DM.TbVeiculo.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
 begin
  DM.TbVeiculo.insert;
  end;
    DBEdit1.SetFocus;
    BitBtn3.Enabled := false;
    BitBtn5.Enabled := false;
    BitBtn6.Enabled := false;
    BitBtn7.Enabled := false;
end;

procedure TFrmVeiculos.BitBtn2Click(Sender: TObject);
begin
if DM.TbVeiculo.State in [dsinsert,dsedit] then
  If DBEdit1.text <> '' then
   begin
    DM.TbVeiculo.Post;
    TabSheet1.Show;
    BitBtn3.Enabled := true;
    BitBtn5.Enabled := true;
    BitBtn6.Enabled := true;
    BitBtn7.Enabled := true;
    DM.TbVeiculo.Requery([]);
    CondicaoEditInsert := false;
    ShowMessage('Gravação Efetuada Com Sucesso');
   end
    else
     begin
      MessageDLG('Gravação Não Efetuada, Falta Dados',mtError,[mbok],0);
      TabSheet1.Show;
      DBEdit1.SetFocus;
    end;
end;

procedure TFrmVeiculos.BitBtn3Click(Sender: TObject);
begin
DM.TbVeiculo.Refresh;
if (DM.TbVeiculo.Bof <> true) and (DM.TbVeiculo.Eof <> true) then
  begin
   if messagedlg('Deseja Excluir este Registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
    DM.TbVeiculo.Delete;
    end;
   end
      else
 showmessage('Nenhum Registro Para Excluir!');
end;

procedure TFrmVeiculos.BitBtn4Click(Sender: TObject);
begin
DM.TbVeiculo.Cancel;
Close;
end;

procedure TFrmVeiculos.BitBtn6Click(Sender: TObject);
begin
DM.TbVeiculo.Prior;
end;

procedure TFrmVeiculos.BitBtn7Click(Sender: TObject);
begin
DM.TbVeiculo.Next;
end;

procedure TFrmVeiculos.BitBtn8Click(Sender: TObject);
begin
DM.TbVeiculo.Cancel;
    BitBtn3.Enabled := true;
    BitBtn5.Enabled := true;
    BitBtn6.Enabled := true;
    BitBtn7.Enabled := true;
end;

procedure TFrmVeiculos.ComboBox1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from Cadveiculo where ' + ComboBox1.Text + ' like "' + edit1.text + '%" order by ' + ComboBox1.Text + '');
ADOQuery1.Open;
Edit1.SetFocus;
end;

procedure TFrmVeiculos.DBEdit1Exit(Sender: TObject);
begin
if CondicaoEditInsert = true then
begin
ADOQuery1.Requery([]);
if ADOQuery1.Locate('veiculo',DBEdit1.Text,[loCaseInsensitive]) = true then
begin
showmessage('Veículo já Cadastrado !');
DBEdit1.SetFocus;
DBEdit1.Clear;
end;
end;
end;

procedure TFrmVeiculos.DBGrid2DblClick(Sender: TObject);
begin
DM.TbVeiculo.locate('veiculo',ADOQuery1.FieldByName('veiculo').AsString,[locaseinsensitive]);
TabSheet1.Show;
end;

procedure TFrmVeiculos.DBMemo1Exit(Sender: TObject);
begin
BitBtn2.SetFocus;
end;

procedure TFrmVeiculos.Edit1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from Cadveiculo where ' + ComboBox1.Text + ' like "' + edit1.text + '%" order by ' + ComboBox1.Text + '');
ADOQuery1.Open;
end;

procedure TFrmVeiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CondicaoEditInsert := false;
DM.TbVeiculo.Cancel;
FrmVeiculos.Release;
FrmVeiculos := nil;
end;

procedure TFrmVeiculos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmVeiculos.FormShow(Sender: TObject);
begin
ADOQuery1.Active := true;
DM.TbVeiculo.Requery([]);
end;

procedure TFrmVeiculos.TabSheet1Show(Sender: TObject);
begin
BitBtn8.SetFocus;
end;

procedure TFrmVeiculos.TabSheet3Show(Sender: TObject);
begin
if ADOQuery1.Active then
ADOQuery1.Requery([]);
end;

end.

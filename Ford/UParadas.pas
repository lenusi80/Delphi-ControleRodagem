unit UParadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, BDE, Mask, ADODB, Grids,
  DBGrids, ComCtrls;

type
  TFrmParadas = class(TForm)
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParadas: TFrmParadas;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmParadas.BitBtn1Click(Sender: TObject);
begin
TabSheet1.show;
 if DM.TbParadas.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
  DM.TbParadas.insert;
    DBEdit1.SetFocus;
    BitBtn3.Enabled := false;
    BitBtn8.Enabled := true;
end;

procedure TFrmParadas.BitBtn2Click(Sender: TObject);
begin
if DM.TbParadas.State in [dsinsert,dsedit] then
  If DBEdit1.text <> '' then
   begin
    DM.TbParadas.Post;
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

procedure TFrmParadas.BitBtn3Click(Sender: TObject);
begin
DM.TbParadas.Refresh;
if (DM.TbParadas.Bof <> true) and (DM.TbParadas.Eof <> true) then
  begin
   if messagedlg('Deseja Excluir este Registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DM.TbParadas.Delete;
   end
      else
 showmessage('Nenhum Registro Para Excluir!');
end;

procedure TFrmParadas.BitBtn4Click(Sender: TObject);
begin
DM.TbParadas.Cancel;
close;
end;

procedure TFrmParadas.BitBtn8Click(Sender: TObject);
begin
DM.TbParadas.Cancel;
 BitBtn3.Enabled := true;
end;

procedure TFrmParadas.DBEdit1Exit(Sender: TObject);
begin
if CondicaoEditInsert = true then
begin
ADOQuery1.Requery([]);
if ADOQuery1.locate('codparada',DBedit1.Text,[locaseinsensitive]) = true then
begin
showmessage('Código já Cadastrado, Escolha Outro');
DBEdit1.SetFocus;
DBEdit1.Clear;
end;
end;
end;

procedure TFrmParadas.DBGrid1DblClick(Sender: TObject);
begin
DM.TbParadas.locate('codparada',ADOQuery1.FieldByName('codparada').AsString,[locaseinsensitive]);
TabSheet1.Show;
end;

procedure TFrmParadas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CondicaoEditInsert := false;
DM.TbParadas.Cancel;
FrmParadas.Release;
FrmParadas := nil;
end;

procedure TFrmParadas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmParadas.FormShow(Sender: TObject);
begin
ADOQuery1.Active := true;
end;

procedure TFrmParadas.TabSheet1Show(Sender: TObject);
begin
BitBtn8.SetFocus;
end;

procedure TFrmParadas.TabSheet2Show(Sender: TObject);
begin
if ADOQuery1.Active then
ADOQuery1.Requery([]);
end;

end.

unit URotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, ComCtrls, DB, BDE, StdCtrls,
  Buttons, Mask, ADODB;

type
  TFrmRotas = class(TForm)
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Rota: TWideStringField;
    ADOQuery1Caracteristica: TWideMemoField;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ADOQuery1CaracteristicaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRotas: TFrmRotas;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmRotas.ADOQuery1CaracteristicaGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text := Sender.AsString;
end;

procedure TFrmRotas.BitBtn1Click(Sender: TObject);
begin
TabSheet3.SHOW;
 if DM.TbRotas.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
  DM.TbRotas.insert;
    DBEdit1.SetFocus;
    BitBtn3.Enabled := false;
end;

procedure TFrmRotas.BitBtn2Click(Sender: TObject);
begin
if DM.TbRotas.State in [dsinsert,dsedit] then
  If DBEdit1.text <> '' then
   begin
    DM.TbRotas.Post;
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

procedure TFrmRotas.BitBtn3Click(Sender: TObject);
begin
DM.TbRotas.Refresh;
if (DM.TbRotas.Bof <> true) and (DM.TbRotas.Eof <> true) then
  begin
   if messagedlg('Deseja Excluir este Registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DM.TbRotas.Delete;
   end
      else
 showmessage('Nenhum Registro Para Excluir!');
end;

procedure TFrmRotas.BitBtn4Click(Sender: TObject);
begin
DM.TbRotas.Cancel;
close;
end;

procedure TFrmRotas.BitBtn8Click(Sender: TObject);
begin
DM.TbRotas.Cancel;
BitBtn3.Enabled := true;
end;

procedure TFrmRotas.DBEdit1Exit(Sender: TObject);
begin
if CondicaoEditInsert = true then
begin
 ADOQuery1.Requery([]);
  if ADOQuery1.locate('rota',DBedit1.Text,[locaseinsensitive]) = true then
   begin
    showmessage('Rota já Cadastrada, Escolha Outra');
    DBEdit1.SetFocus;
    DBEdit1.Clear;
   end;
end;
end;

procedure TFrmRotas.DBGrid1DblClick(Sender: TObject);
begin
DM.TbRotas.locate('ROTA',ADOQuery1.FieldByName('ROTA').AsString,[locaseinsensitive]);
TabSheet3.Show;
end;

procedure TFrmRotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CondicaoEditInsert := false;
DM.TbRotas.Cancel;
FrmRotas.Release;
FrmRotas := nil;
end;

procedure TFrmRotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmRotas.FormShow(Sender: TObject);
begin
ADOQuery1.Active := true;
end;

procedure TFrmRotas.TabSheet3Show(Sender: TObject);
begin
BitBtn8.SetFocus;
end;

procedure TFrmRotas.TabSheet4Show(Sender: TObject);
begin
if ADOQuery1.Active then
ADOQuery1.Requery([]);
end;

end.

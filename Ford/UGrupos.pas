unit UGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DB, BDE, ComCtrls, ADODB,
  Grids, DBGrids;

type
  TFrmCadGrupos = class(TForm)
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    ADOQuery1: TADOQuery;
    ADOQuery1Grupo: TIntegerField;
    ADOQuery1DataInicio: TDateTimeField;
    ADOQuery1DataVolta: TDateTimeField;
    ADOQuery1TipoEscala: TWideStringField;
    ADOQuery1Folga: TBooleanField;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBComboBox1: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadGrupos: TFrmCadGrupos;

implementation

uses UDM, UVerificaGrupoFolga, UControladores;

{$R *.dfm}

procedure TFrmCadGrupos.BitBtn1Click(Sender: TObject);
begin
 TabSheet1.Show;
 if DM.TbGrupos.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
 begin
  DM.TbGrupos.insert;
  dbedit1.text := datetostr(now);
  end;
    DBEdit1.SetFocus;
    BitBtn3.Enabled := false;
end;

procedure TFrmCadGrupos.BitBtn2Click(Sender: TObject);
begin
if DM.TbGrupos.State in [dsinsert,dsedit] then
  If DBEdit1.text <> '' then
   begin
    DM.TbGrupos.Post;
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

procedure TFrmCadGrupos.BitBtn3Click(Sender: TObject);
begin
DM.TbGrupos.Refresh;
if (DM.TbGrupos.Bof <> true) and (DM.TbGrupos.Eof <> true) then
  begin
   if messagedlg('Deseja Excluir este Registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DM.TbGrupos.Delete;
   end
      else
 showmessage('Nenhum Registro Para Excluir!');
end;

procedure TFrmCadGrupos.BitBtn4Click(Sender: TObject);
begin
DM.TbGrupos.Cancel;
close;
end;

procedure TFrmCadGrupos.BitBtn8Click(Sender: TObject);
begin
DM.TbGrupos.Cancel;
 BitBtn3.Enabled := true;
end;

procedure TFrmCadGrupos.DateTimePicker1CloseUp(Sender: TObject);
begin
DM.TbGrupos.Edit;
DBEdit2.Text := DateToStr(DateTimePicker1.Date);
end;

procedure TFrmCadGrupos.DateTimePicker2CloseUp(Sender: TObject);
var
 a : string;
begin
DM.TbGrupos.Edit;
a := DateToStr(DateTimePicker2.Date);
if a <= DBEdit2.Text then
DBEdit3.Text := datetostr(strtodate(DBEdit2.Text) + 1)
else
DBEdit3.Text := a;
end;

procedure TFrmCadGrupos.DBEdit1Exit(Sender: TObject);
begin
if CondicaoEditInsert = true then
 begin
  ADOQuery1.Requery([]);
   if ADOQuery1.locate('grupo',DBedit1.Text,[locaseinsensitive]) = true then
    begin
     showmessage('Grupo já Cadastrado, Escolha Outro');
     DBEdit1.SetFocus;
    end;
   if (strtoint(dbedit1.Text) > 7) and (dbedit1.Text <> '') then
    begin
    showmessage('Pode-se Cadastrar no Máximo 7 Grupos');
    DBEdit1.SetFocus;
    end;

   if (strtoint(dbedit1.Text) < 1) and (dbedit1.Text <> '') then
    begin
    showmessage('Número Incorreto para Grupo');
    DBEdit1.SetFocus;
    end;

 end;
end;

procedure TFrmCadGrupos.DBGrid1DblClick(Sender: TObject);
begin
DM.TbGrupos.Requery([]);
DM.TbGrupos.locate('Grupo',ADOQuery1.FieldByName('Grupo').AsString,[locaseinsensitive]);
TabSheet1.Show;
end;

procedure TFrmCadGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CondicaoEditInsert := false;
DM.TbGrupos.Cancel;
VerificaEscalaFolga2;
FrmCadGrupos.Release;
FrmCadGrupos := nil;
end;

procedure TFrmCadGrupos.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date := date;
DateTimePicker2.date := date;
end;

procedure TFrmCadGrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmCadGrupos.FormShow(Sender: TObject);
begin
ADOQuery1.Active := true;
end;

procedure TFrmCadGrupos.TabSheet1Show(Sender: TObject);
begin
BitBtn8.SetFocus;
end;

procedure TFrmCadGrupos.TabSheet2Show(Sender: TObject);
begin
if ADOQuery1.Active then
ADOQuery1.Requery([]);
end;

end.

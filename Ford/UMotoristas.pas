unit UMotoristas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, BDE, DBCtrls, Mask, Grids,
  DBGrids, ADODB;

type
  TFrmMotoristas = class(TForm)
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
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBComboBox3: TDBComboBox;
    GroupBox4: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox6: TGroupBox;
    DBComboBox1: TDBComboBox;
    GroupBox8: TGroupBox;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    GroupBox11: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    GroupBox9: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    GroupBox10: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox7: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox12: TGroupBox;
    Label12: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    TabSheet4: TTabSheet;
    GroupBox13: TGroupBox;
    DBMemo2: TDBMemo;
    GroupBox14: TGroupBox;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    TabSheet3: TTabSheet;
    GroupBox15: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox16: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    GroupBox17: TGroupBox;
    ComboBox1: TComboBox;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1Nome: TWideStringField;
    ADOQuery1Funcao: TWideStringField;
    ADOQuery1Turno: TWideStringField;
    ADOQuery1NomeCompleto: TWideStringField;
    ADOQuery1DataCadastro: TDateTimeField;
    ADOQuery1End: TWideStringField;
    ADOQuery1Numero: TIntegerField;
    ADOQuery1Bairro: TWideStringField;
    ADOQuery1Cidade: TWideStringField;
    ADOQuery1CEP: TWideStringField;
    ADOQuery1Tel: TWideStringField;
    ADOQuery1Cel: TWideStringField;
    ADOQuery1TelRecado: TWideStringField;
    ADOQuery1CatCNH: TWideStringField;
    ADOQuery1RegCNH: TWideStringField;
    ADOQuery1VencCNH: TDateTimeField;
    ADOQuery1NumRV: TWideStringField;
    ADOQuery1VencRV: TDateTimeField;
    ADOQuery1Banco: TWideStringField;
    ADOQuery1AG: TWideStringField;
    ADOQuery1CC: TWideStringField;
    ADOQuery1Grupo: TIntegerField;
    ADOQuery1Inativo: TBooleanField;
    ADOQuery1Motivo: TWideStringField;
    ADOQuery1Avaliao: TWideMemoField;
    ADOQuery1Observacao: TWideMemoField;
    ADOQuery1OrdemEscala: TIntegerField;
    ADOQuery1Folga: TBooleanField;
    ADOQuery1Falta: TBooleanField;
    ADOQuery1Ferias: TBooleanField;
    GroupBox18: TGroupBox;
    DBEdit2: TDBEdit;
    ADOQuery1DataNascimento: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure GroupBox7Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBCheckBox1MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure TabSheet1Show(Sender: TObject);
    procedure DBComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMotoristas: TFrmMotoristas;

implementation

uses UDM, UVerificaGrupoFolga, UGerarEscala;

{$R *.dfm}

procedure TFrmMotoristas.BitBtn1Click(Sender: TObject);
begin
TabSheet1.Show;
 if DM.TbMotorista.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
 begin
  DM.TbMotorista.insert;
  end;
    DBEdit1.SetFocus;
    BitBtn3.Enabled := false;
    BitBtn5.Enabled := false;
    BitBtn6.Enabled := false;
    BitBtn7.Enabled := false;
end;

procedure TFrmMotoristas.BitBtn2Click(Sender: TObject);
begin
if DM.TbMotorista.State in [dsinsert,dsedit] then
 begin
  If DBEdit1.text <> '' then
   begin
    DM.TbMotoristaDataCadastro.AsDateTime := date;
    if DM.TbMotoristaOrdemEscala.AsInteger = 0 then
      NumeroOrdem(DBComboBox1.Text);
    DM.TbMotorista.Post;
    ReordenaEscala;
    ShowMessage('Gravação Efetuada Com Sucesso');
    TabSheet1.Show;
    BitBtn3.Enabled := true;
    BitBtn5.Enabled := true;
    BitBtn6.Enabled := true;
    BitBtn7.Enabled := true;
    DM.TbMotorista.Requery([]);
   end
   else
   begin
    MessageDLG('Gravação Não Efetuada, Falta Dados',mtError,[mbok],0);
    TabSheet1.Show;
    DBEdit1.SetFocus;
   end;
  end;
end;

procedure TFrmMotoristas.BitBtn3Click(Sender: TObject);
begin
DM.TbMotorista.Refresh;
if (DM.TbMotorista.Bof <> true) and (DM.TbMotorista.Eof <> true) then
  begin
   if messagedlg('Deseja Excluir este Registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
    DM.TbMotorista.Delete;
    ReordenaEscala;
    end;
   end
      else
 showmessage('Nenhum Registro Para Excluir!');
end;

procedure TFrmMotoristas.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrmMotoristas.BitBtn6Click(Sender: TObject);
begin
DM.TbMotorista.Prior;
if DM.TbMotorista.Bof then
  DM.TbMotorista.last;
end;

procedure TFrmMotoristas.BitBtn7Click(Sender: TObject);
begin
DM.TbMotorista.Next;
end;

procedure TFrmMotoristas.BitBtn8Click(Sender: TObject);
begin
DM.TbMotorista.Cancel;
    BitBtn3.Enabled := true;
    BitBtn5.Enabled := true;
    BitBtn6.Enabled := true;
    BitBtn7.Enabled := true;
end;

procedure TFrmMotoristas.Button1Click(Sender: TObject);
begin
if Memo1.Lines.Count <> 0 then
 begin
   DM.TbMotorista.Edit;
   DBMemo2.Lines.Add(datetostr(date)+ '  ->   ' + Memo1.Text);
   DBMemo2.Lines.Add('-------------------------------------------------------------------------------------------------------------------');
   DM.TbMotorista.Post;
   Button2.Click;
 end;
end;

procedure TFrmMotoristas.Button2Click(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TFrmMotoristas.ComboBox1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from CadMotorista where ' + ComboBox1.Text + ' like "' + edit1.text + '%" order by ' + ComboBox1.Text + '');
ADOQuery1.Open;
Edit1.SetFocus;
end;

procedure TFrmMotoristas.DBCheckBox1MouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
   if not DBCheckBox1.Checked then
     begin
      DM.TbMotorista.Edit;
      DM.TbMotoristaOrdemEscala.AsInteger := 0;
      DBComboBox2.Enabled := true;
     end
    else
    begin
      DM.TbMotorista.Edit;
      DM.TbMotoristaMotivo.AsString := '';
      DBComboBox2.Enabled := false;
    end;
end;

procedure TFrmMotoristas.DBComboBox1Click(Sender: TObject);
begin
DM.TbMotoristaOrdemEscala.AsInteger := 0;
end;

procedure TFrmMotoristas.DBEdit17Exit(Sender: TObject);
begin
TabSheet2.Show;
end;

procedure TFrmMotoristas.DBEdit1Exit(Sender: TObject);
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

procedure TFrmMotoristas.DBGrid1DblClick(Sender: TObject);
begin
DM.TbMotorista.locate('nome',ADOQuery1.FieldByName('nome').AsString,[locaseinsensitive]);
TabSheet1.Show;
end;

procedure TFrmMotoristas.Edit1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from CadMotorista where ' + ComboBox1.Text + ' like "' + edit1.text + '%" order by nome');
ADOQuery1.Open;
end;

procedure TFrmMotoristas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CondicaoEditInsert := false;
DM.TbMotorista.Cancel;
VerificaEscalaFolga;
FrmMotoristas.Release;
FrmMotoristas := nil;
end;

procedure TFrmMotoristas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmMotoristas.FormShow(Sender: TObject);
begin
ADOQuery1.Active := true;
TabSheet3.show;
end;

procedure TFrmMotoristas.GroupBox7Exit(Sender: TObject);
begin
BitBtn2.SetFocus;
end;

procedure TFrmMotoristas.TabSheet1Show(Sender: TObject);
begin
BitBtn8.SetFocus;
end;

procedure TFrmMotoristas.TabSheet3Show(Sender: TObject);
begin
if ADOQuery1.Active then
ADOQuery1.Requery([]);
Edit1.SetFocus;
end;

procedure TFrmMotoristas.TabSheet4Show(Sender: TObject);
begin
Memo1.SetFocus;
end;

end.

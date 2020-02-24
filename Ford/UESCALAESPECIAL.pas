unit UESCALAESPECIAL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, Buttons, DB, BDE, DBCtrls, ADODB,
  ComCtrls;

type
  TFrmEscalaEspecial = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    MaskEdit2: TMaskEdit;
    BitBtn4: TBitBtn;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    DSQRmotorist1: TDataSource;
    QRMotorist1: TADOQuery;
    QRMotorist1Nome: TWideStringField;
    DSQRmotorist2: TDataSource;
    QRMotorist2: TADOQuery;
    QRMotorist2Nome: TWideStringField;
    QRMotorist1Turno: TWideStringField;
    QRMotorist2Turno: TWideStringField;
    ComboBox1: TComboBox;
    DateTimePicker2: TDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBLookupComboBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    function SemanaExtenso(Data:TDateTime): String;
    procedure ComboBox1Change(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEscalaEspecial: TFrmEscalaEspecial;
  VeicSelecionado : string;

implementation

uses UDM, URotinas;

{$R *.dfm}

function TFrmEscalaEspecial.SemanaExtenso(Data:TDateTime): String;
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Dia, Mes, Ano : Word;
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Terçafeira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'Sábado';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  Result := DiaDaSemana[NoDia];
end;

procedure TFrmEscalaEspecial.BitBtn2Click(Sender: TObject);
begin
DM.QREscalaEspecial.Delete;
DM.TbEscalaEspecial.Requery([]);
DM.QREscalaEspecial.Requery([]);
end;

procedure TFrmEscalaEspecial.BitBtn3Click(Sender: TObject);
begin
with dm do
begin
   QREscalaEspecial.Close;
   QREscalaEspecial.SQL.Clear;
   QREscalaEspecial.SQL.Add('delete * from escalaespecial where veiculo like "' + VeicSelecionado + '%"');
   QREscalaEspecial.ExecSQL;
   QREscalaEspecial.Close;
   QREscalaEspecial.SQL.Clear;
   QREscalaEspecial.SQL.Add('select * from escalaespecial where veiculo like "' + VeicSelecionado + '%"');
   TbEscalaEspecial.Requery([]);
   QREscalaEspecial.Open;

   end;
end;

procedure TFrmEscalaEspecial.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
begin
 with dm do
begin
   QREscalaEspecial.Close;
   QREscalaEspecial.SQL.Clear;
   QREscalaEspecial.SQL.Add('select * from escalaespecial order by veiculo, data');
   QREscalaEspecial.Open;
   DBLookupComboBox2.KeyValue := -1;
   end;
end
else
  begin
 with dm do
begin
   QREscalaEspecial.Close;
   QREscalaEspecial.SQL.Clear;
   QREscalaEspecial.SQL.Add('select * from escalaespecial where veiculo like "' + VeicSelecionado + '%" order by data');
   QREscalaEspecial.Open;
   DBLookupComboBox2.SetFocus;
   end;
end;
end;

procedure TFrmEscalaEspecial.ComboBox1Change(Sender: TObject);
begin
QRMotorist1.Close;
QRMotorist2.Close;
QRMotorist1.SQL.Clear;
QRMotorist2.SQL.Clear;
QRMotorist1.SQL.Add('select * from cadmotorista where turno = "' + ComboBox1.Text + '" order by nome');
QRMotorist2.SQL.Add('select * from cadmotorista where turno = "' + ComboBox1.Text + '" order by nome');
QRMotorist1.open;
QRMotorist2.open;
DBLookupComboBox2Exit(DBLookupComboBox2.Action);
end;

procedure TFrmEscalaEspecial.DateTimePicker2CloseUp(Sender: TObject);
begin
MaskEdit2.Text := DateToStr(DateTimePicker2.Date);
DateTimePicker2.date := date;
BitBtn1.SetFocus;
end;

procedure TFrmEscalaEspecial.DBLookupComboBox1Exit(Sender: TObject);
begin
if DBLookupComboBox1.Text <> '' then
begin
  if (not DM.TbEscalaEspecial.Locate('motorista1',DBLookupComboBox1.Text, [locaseinsensitive]))
  and (not DM.TbEscalaEspecial.Locate('motorista2',DBLookupComboBox1.Text,  [locaseinsensitive])) Then
   else
    begin
     showmessage('Motorista já cadastrado');
     DBLookupComboBox1.SetFocus;
    end;
end;
end;

procedure TFrmEscalaEspecial.DBLookupComboBox1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = VK_ESCAPE then
Begin
  DBLookupComboBox1.KeyValue := -1;
  DBLookupComboBox3.KeyValue := -1;
  MaskEdit2.Clear;
  DBLookupComboBox2.SetFocus;
End;

end;

procedure TFrmEscalaEspecial.DBLookupComboBox2Exit(Sender: TObject);
begin
CheckBox1.Checked := false;
VeicSelecionado := DBLookupComboBox2.Text;
with dm do
begin
   QREscalaEspecial.Close;
   QREscalaEspecial.SQL.Clear;
   QREscalaEspecial.SQL.Add('select * from escalaespecial where veiculo like "' + DBLookupComboBox2.Text + '%" and ');
   QREscalaEspecial.SQL.Add('turno like "' + ComboBox1.Text + '%" order by data');
   QREscalaEspecial.Open;
   end;
end;

procedure TFrmEscalaEspecial.DBLookupComboBox3Exit(Sender: TObject);
begin
if DBLookupComboBox3.Text <> '' then
begin
  if (not DM.TbEscalaEspecial.Locate('motorista1',DBLookupComboBox3.Text, [locaseinsensitive]))
  and (not DM.TbEscalaEspecial.Locate('motorista2',DBLookupComboBox3.Text,  [locaseinsensitive])) Then
   else
    begin
     showmessage('Motorista já cadastrado');
     DBLookupComboBox3.SetFocus;
    end;
end;
end;

procedure TFrmEscalaEspecial.BitBtn1Click(Sender: TObject);
begin
if (DBLookupComboBox2.Text <> '') and ( MaskEdit2.EditText <> '__/__/____' ) and (ComboBox1.Text <> '')
and (DBLookupComboBox1.Text <> '') then
begin
    DM.QRTemp2.Close;
    DM.QRTemp2.SQL.Clear;
    DM.QRTemp2.SQL.Add('select * from CadAusencias where DataAusencia = Cdate("' + MaskEdit2.Text + '") and Motorista = "' + DBLookupComboBox1.Text + '"');
    DM.QRTemp2.SQL.Add(' or motorista = "' + DBLookupComboBox3.Text + '"');
    DM.QRTemp2.open;
    if not DM.QRTemp2.IsEmpty then
     begin
       Showmessage('Um destes motoristas já está com Falta Programada para este Dia!');
       DBLookupComboBox1.SetFocus;
       exit;
     end;

    DM.QRTemp2.Close;
    DM.QRTemp2.SQL.Clear;
    DM.QRTemp2.SQL.Add('select * from CadFerias where DataInicio <= Cdate("' + MaskEdit2.Text + '") and DataVolta > Cdate("' + MaskEdit2.Text + '") ');
    DM.QRTemp2.SQL.Add(' and Motorista = "' + DBLookupComboBox1.Text + '" or motorista = "' + DBLookupComboBox3.Text + '"');
    DM.QRTemp2.open;
    if not DM.QRTemp2.IsEmpty then
     begin
       Showmessage('Um destes motoristas estará de Férias neste Dia!');
       DBLookupComboBox1.SetFocus;
       exit;
     end;

   DM.QRTemp2.Close;



   DM.TbEscalaEspecial.Append;
   DM.TbEscalaEspecialVeiculo.AsString :=  DM.TbVeiculoVeiculo.AsString;;
   DM.TbEscalaEspecialMotorista1.AsString :=  DBLookupComboBox1.Text;
   DM.TbEscalaEspecialMotorista2.AsString :=  DBLookupComboBox3.Text;
   DM.TbEscalaEspecialData.AsDateTime := StrToDate(MaskEdit2.Text);
   DM.TbEscalaEspecialDiaSemana.AsString :=  semanaExtenso(strtodate(MaskEdit2.text));
   DM.TbEscalaEspecialTurno.AsString := ComboBox1.Text;
   DM.TbEscalaEspecial.Post;
   DM.TbEscalaEspecial.Requery([]);
   DM.QREscalaEspecial.Requery([]);
   MaskEdit2.Clear;
   DBLookupComboBox1.KeyValue := -1;
   DBLookupComboBox3.KeyValue := -1;
   DBLookupComboBox1.SetFocus;
end
else
 begin
 showmessage('Esta faltando dados!');
 DBLookupComboBox2.SetFocus;
 end;
end;

procedure TFrmEscalaEspecial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmEscalaEspecial.Release;
FrmEscalaEspecial := nil;
end;

procedure TFrmEscalaEspecial.FormCreate(Sender: TObject);
begin
DateTimePicker2.date := date;
end;

procedure TFrmEscalaEspecial.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmEscalaEspecial.FormShow(Sender: TObject);
begin
DM.TbEscalaEspecial.Requery([]);
if DM.QREscalaEspecial.Active = true then
DM.QREscalaEspecial.Requery([]);
end;

end.

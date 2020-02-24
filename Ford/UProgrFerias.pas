unit UProgrFerias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Buttons, db, bde, Mask, ComCtrls;

type
  TFrmProgrFerias = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn4: TBitBtn;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function MesExtenso( Mes:Word ) : string;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProgrFerias: TFrmProgrFerias;
   a, b : string;

implementation

uses UDM, URotinas;

{$R *.dfm}


procedure TFrmProgrFerias.MaskEdit1Exit(Sender: TObject);
begin
if MaskEdit1.Modified then
begin
  try
   StrToDate(MaskEdit1.Text);
  except
  on EConvertError do
   begin
    ShowMessage ('Data Inválida!');
    MaskEdit1.SetFocus;
    MaskEdit1.Clear;
    MaskEdit1.SelectAll;
   end;
  end;
end;
end;

procedure TFrmProgrFerias.MaskEdit2Exit(Sender: TObject);
begin
if MaskEdit2.Modified then
begin
  try
   StrToDate(MaskEdit2.Text);
  except
  on EConvertError do
   begin
    ShowMessage ('Data Inválida!');
    MaskEdit2.SetFocus;
    MaskEdit2.Clear;
    MaskEdit2.SelectAll;
   end;
  end;
end;
end;

function TFrmProgrFerias.MesExtenso( Mes:Word ) : string;
const
 meses : array[0..11] of PChar = ('Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro','Outubro', 'Novembro', 'Dezembro');
begin
result := meses[mes-1];
End;

procedure TFrmProgrFerias.BitBtn1Click(Sender: TObject);
begin
if (DBLookupComboBox1.Text <> '') and (MaskEdit1.EditText <> '__/__/____') and
(MaskEdit2.EditText <> '__/__/____') then
begin
   DM.TbFerias.Append;
   DM.TbFeriasMotorista.AsString :=  DM.TbMotoristaNome.AsString;;
   DM.TbFeriasTurno.AsString :=  DM.TbMotoristaTurno.AsString;
   DM.TbFeriasDataInicio.AsDateTime := StrToDate(MaskEdit1.Text);
   DM.TbFeriasDataVolta.AsDateTime := StrToDate(MaskEdit2.Text);
   DM.TbFerias.Post;
   DM.QRFerias.Requery([]);
   MaskEdit1.Clear;
   MaskEdit2.Clear;
   DBLookupComboBox1.KeyValue := -1;
   DBLookupComboBox1.SetFocus;
  end
else
 begin
 showmessage('Esta faltando dados!');
 DBLookupComboBox1.SetFocus;
 end;
end;

procedure TFrmProgrFerias.BitBtn2Click(Sender: TObject);
begin
DM.QRFerias.Delete;
DM.QRFerias.Requery([]);
end;

procedure TFrmProgrFerias.BitBtn3Click(Sender: TObject);
begin
with dm do
begin
   QRFerias.Close;
   QRFerias.SQL.Clear;
   QRFerias.SQL.Add('delete * from cadferias ' + b + '');
   QRFerias.ExecSQL;
   QRFerias.Close;
   QRFerias.SQL.Clear;
   QRFerias.SQL.Add('select *, datavolta - datainicio as total from cadferias ' + a + '');
   TbFerias.Requery([]);
   QRFerias.Open;
   end;
end;

procedure TFrmProgrFerias.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
begin
 with dm do
begin
   QRFerias.Close;
   QRFerias.SQL.Clear;
   QRFerias.SQL.Add('select *, datavolta - datainicio as total from cadferias order by datainicio');
   QRFerias.Open;
   b := '';
   end;
end
else
  begin
 with dm do
begin
   QRFerias.Close;
   QRFerias.SQL.Clear;
   QRFerias.SQL.Add('select *, datavolta - datainicio as total from cadferias ' + a + ' order by datainicio');
   QRFerias.Open;
   b := a;
   end;
ComboBox1.SetFocus;
end;
end;

procedure TFrmProgrFerias.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex  of
0 :  a := 'Where Year(datainicio) = Year(now)';
1 :  a := 'where month(datainicio) = 1';
2 :  a := 'where month(datainicio) = 2';
3 :  a := 'where month(datainicio) = 3';
4 :  a := 'where month(datainicio) = 4';
5 :  a := 'where month(datainicio) = 5';
6 :  a := 'where month(datainicio) = 6';
7 :  a := 'where month(datainicio) = 7';
8 :  a := 'where month(datainicio) = 8';
9 :  a := 'where month(datainicio) = 9';
10 : a := 'where month(datainicio) = 10';
11 : a := 'where month(datainicio) = 11';
12 : a := 'where month(datainicio) = 12';
end;
with dm do
begin
   QRFerias.Close;
   QRFerias.SQL.Clear;
   QRFerias.SQL.Add('select *, datavolta - datainicio as total from cadferias ' + a + ' order by datainicio');
   QRFerias.Open;
   end;
b := a;
DateTimePicker1.Date := ConcatenaMes(ComboBox1.ItemIndex);
DateTimePicker2.Date := ConcatenaMes(ComboBox1.ItemIndex);
CheckBox1.Checked := false;   
end;

procedure TFrmProgrFerias.DateTimePicker1CloseUp(Sender: TObject);
begin
MaskEdit1.Text := DateToStr(DateTimePicker1.Date);
MaskEdit2.SetFocus;
end;

procedure TFrmProgrFerias.DateTimePicker2CloseUp(Sender: TObject);
begin
MaskEdit2.Text := DateToStr(DateTimePicker2.Date);
BitBtn1.SetFocus;
end;

procedure TFrmProgrFerias.DBLookupComboBox1Exit(Sender: TObject);
begin
  if DM.TbFerias.Locate('motorista',DBLookupComboBox1.Text,[locaseinsensitive]) = true then
    begin
     showmessage('Funcionário já cadastrado para tirar férias neste ano');
     DBLookupComboBox1.KeyValue := -1;
     DBLookupComboBox1.SetFocus;
    end;
end;

//datavolta - datainicio as [totaldias]

procedure TFrmProgrFerias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmProgrFerias.Release;
FrmProgrFerias := nil;
end;

procedure TFrmProgrFerias.FormCreate(Sender: TObject);
begin
DateTimePicker1.date := date;
DateTimePicker2.date := date;
end;

procedure TFrmProgrFerias.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmProgrFerias.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
Begin
  DBLookupComboBox1.KeyValue := -1;
  MaskEdit1.Clear;
  MaskEdit2.Clear;
  ComboBox1.SetFocus;
End;
end;

procedure TFrmProgrFerias.FormShow(Sender: TObject);
var
  Data: TDateTime;
  Ano, Mes, Dia: word;
begin
  Data:= Now;
  DecodeDate(Data, Ano, Mes, Dia);
  ComboBox1.Text := MesExtenso(mes);
  a := 'where month(datainicio) = ' + IntToStr(mes);
  with dm do
begin
   QRFerias.Close;
   QRFerias.SQL.Clear;
   QRFerias.SQL.Add('select *, datavolta - datainicio as total from cadferias ' + a + ' order by datainicio');
   QRFerias.Open;
   end;
end;

end.

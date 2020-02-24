unit UProgrAusencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB, Mask, DBCtrls, Buttons, ComCtrls;

type
  TFrmProgrAusencias = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ComboBox1: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    MaskEdit3: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    QRMotorista: TADOQuery;
    QRMotoristaNome: TWideStringField;
    QRMotoristaTurno: TWideStringField;
    DSQRMotorista: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure ComboBox2Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProgrAusencias: TFrmProgrAusencias;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmProgrAusencias.BitBtn1Click(Sender: TObject);
begin
if (DBLookupComboBox1.Text <> '') and (MaskEdit1.EditText <> '__/__/____') and (maskedit3.EditText <> '__/__/____')
and (ComboBox1.Text <> '') then
begin
   DM.TbAusencias.Append;
   DM.TbAusenciasMotorista.AsString :=  QRMotoristaNome.AsString;;
   DM.TbAusenciasTurno.AsString :=  QRMotoristaTurno.AsString;
   DM.TbAusenciasDataAusencia.AsDateTime := StrToDate(MaskEdit1.Text);
   DM.TbAusenciasDataPrevistaPagar.AsDateTime := StrToDate(MaskEdit3.Text);
   DM.TbAusenciasMotivo.AsString := ComboBox1.Text;
   DM.TbAusencias.Post;
   DM.QRAusencias.Requery([]);
   MaskEdit1.Clear;
   MaskEdit3.Clear;
   ComboBox1.ClearSelection;
   DBLookupComboBox1.KeyValue := -1;
   ComboBox2.SetFocus;
  end
else
 begin
 showmessage('Esta faltando dados!');
 DBLookupComboBox1.SetFocus;
 end;
end;

procedure TFrmProgrAusencias.BitBtn2Click(Sender: TObject);
begin
DM.TbAusencias.Delete;
DM.QRAusencias.Requery([]);
end;

procedure TFrmProgrAusencias.BitBtn3Click(Sender: TObject);
begin
with dm do
begin
   QRAusencias.Close;
   QRAusencias.SQL.Clear;
   QRAusencias.SQL.Add('delete * from cadausencias ');
   QRAusencias.ExecSQL;
   QRAusencias.Close;
   QRAusencias.SQL.Clear;
   QRAusencias.SQL.Add('select * from cadausencias order by dataausencia');
   QRAusencias.Open;
   end;
end;

procedure TFrmProgrAusencias.ComboBox2Change(Sender: TObject);
begin
   QRMotorista.Close;
   QRMotorista.SQL.Clear;
   QRMotorista.SQL.Add('select nome, turno from cadmotorista where turno like "' + ComboBox2.Text + '%" order by nome');
   QRMotorista.Open;
end;

procedure TFrmProgrAusencias.DateTimePicker1CloseUp(Sender: TObject);
begin
MaskEdit1.Text := DateToStr(DateTimePicker1.Date);
DateTimePicker1.Date := date;
MaskEdit3.SetFocus;;
end;

procedure TFrmProgrAusencias.DateTimePicker2CloseUp(Sender: TObject);
begin
MaskEdit3.Text := DateToStr(DateTimePicker2.Date);
DateTimePicker2.date := date;
ComboBox1.SetFocus;
end;

procedure TFrmProgrAusencias.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date := date;
DateTimePicker2.date := date;
end;

procedure TFrmProgrAusencias.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

end.

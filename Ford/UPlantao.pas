unit UPlantao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  Mask, ShellApi, TeEngine, Series, TeeProcs, Chart, DB, ADODB, DbChart,
  TeeFunci, ExtDlgs, ftgifanimate, GIFImage, ImgList;


type
  TFrmPlantao = class(TForm)
    QRApoio: TADOQuery;
    QRStandBy: TADOQuery;
    DSQRApoio: TDataSource;
    DSQRStandBy: TDataSource;
    QRApoionome: TWideStringField;
    QRStandBynome: TWideStringField;
    GroupBox4: TGroupBox;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    GroupBox10: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBMemo1: TDBMemo;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox6: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox7: TGroupBox;
    DBGrid4: TDBGrid;
    GroupBox5: TGroupBox;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    GroupBox9: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBChart1: TDBChart;
    Series2: TBarSeries;
    Series1: TBarSeries;
    DBEdit5: TDBEdit;
    Series3: TBarSeries;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    BarSeries3: TBarSeries;
    BarSeries4: TBarSeries;
    Shape1: TShape;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    TeeFunction1: TAddTeeFunction;
    DBEdit8: TDBEdit;
    BitBtn1: TBitBtn;
    GroupBox11: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Image1: TImage;
    StaticText1: TStaticText;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    GroupBox8: TGroupBox;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ImageList1: TImageList;
    DBGrid5: TDBGrid;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid5ColEnter(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
  procedure WMMove(var Msg: TWMMove); message WM_MOVE;
  public
    { Public declarations }
  end;

var
  FrmPlantao: TFrmPlantao;


implementation

uses UDM, UDM2, UGerarEscala, UPrincipal, URelatorios, UAdicionaVeiculos;

Var
 tempMotorista : string;
 NaoFechar : boolean = false;

{$R *.dfm}

procedure TFrmPlantao.WMMove(var Msg: TWMMove); 
begin
  if Left < 0 then
  Left := 0;
  if Top < 0 then
  Top := 0;
  if Screen.Width - (Left + Width) < 0 then
  Left := Screen.Width - Width;
  if Screen.Height - (Top + Height) < 0 then
  Top := Screen.Height - Height;
end;

procedure TFrmPlantao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmPlantao.Release;
FrmPlantao := nil;
end;

procedure TFrmPlantao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if NaoFechar then
   Canclose:=False;
end;

procedure TFrmPlantao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure TFrmPlantao.FormResize(Sender: TObject);
begin
DM.QREstadoVeiculosSP.Requery([]);
DM.QREstadoVeiculosHiGH.Requery([]);
end;

procedure TFrmPlantao.FormShow(Sender: TObject);
begin
  DM.QRTurnos.Last;
  QRApoio.Active := TRUE;
  QRStandBy.Active := TRUE;
 TabSheet4.Show;
 if DM.TbStatusBDAtivo.AsBoolean then
  begin
    PageControl1.Enabled := true;
    DM.QREstadoVeiculosSP.Requery([]);
    DM.QREstadoVeiculosHiGH.Requery([]);
    DM.QRTurnos.Locate('codplantao',DM.TbStatusBDPlanto.AsInteger,[loCaseInsensitive]);
    TabSheet4.Show;
    TabSheet1.TabVisible := true;
    TabSheet2.TabVisible := true;
    TabSheet3.TabVisible := true;
    BitBtn11.Enabled := false;
    BitBtn1.Enabled := true;
    BitBtn12.Enabled := true;
  end;
end;

procedure TFrmPlantao.TabSheet3Show(Sender: TObject);
begin
with DM2 do
begin
  QrTotalVeic.Requery([]);
  QrVeicRodados.Requery([]);
  QrVeicParados.Requery([]);
  QRFaltaMO.Requery([]);
  QRMotDisponiv.Requery([]);
  QRMotRodando1.Requery([]);
  QRMotRodando2.Requery([]);
  QRMotAusent.Requery([]);
  DBChart1.RefreshData;
  DBChart2.RefreshData;
  StaticText1.Caption := IntToStr(StrToInt(DBEdit8.Text) + StrToInt(DBEdit9.Text) + StrToInt(DBEdit10.Text));
end;
end;

procedure TFrmPlantao.BitBtn10Click(Sender: TObject);
begin
OrdemVeiculo('ADD SP');
end;

procedure TFrmPlantao.BitBtn11Click(Sender: TObject);
begin
NaoFechar := true;
PageControl1.Enabled := true;
BitBtn5.Enabled := true;
BitBtn8.Enabled := true;
BitBtn11.Enabled := false;
if DM.QRTurnos.State in [dsinsert] then
   ShowMessage('Este já é um Cadastro Novo')
 else
  begin
   DM.QRTurnos.insert;
   DM.QRTurnosData.AsDateTime := date;
   DM.QRTurnosHoraInicio.AsString := TimeToStr(time);
   DM.QRTurnosLogin.AsString := usuariologado;
   DBComboBox1.SetFocus;
  end;
end;

procedure TFrmPlantao.BitBtn12Click(Sender: TObject);
begin
if messagedlg('Deseja realmente encerrar este Turno?',mtConfirmation,[MbYes,MbNo],0) = Mryes then
Begin
 DM.TbStatusBD.First;
  if not DM.TbStatusBD.Eof and DM.TbStatusBD.Bof then
   DM.TbStatusBD.Delete;
    DM.QRTurnos.Edit;
    DM.QRTurnosHoraFinal.AsString := TimeToStr(time);
    DM.QRTurnos.Post;
    TabSheet4.Show;
    TabSheet1.TabVisible := false;
    TabSheet2.TabVisible := false;
    TabSheet3.TabVisible := false;
    BitBtn11.Enabled := true;
    BitBtn1.Enabled := false;
    BitBtn12.Enabled := false;
    PageControl1.Enabled := false;
End;
end;

procedure TFrmPlantao.BitBtn13Click(Sender: TObject);
begin
TabSheet1.TabVisible := true;
TabSheet2.TabVisible := true;
TabSheet3.TabVisible := true;
BitBtn1.Enabled := true;
BitBtn12.Enabled := true;
BitBtn13.Enabled := false;
BitBtn8.Enabled := false;
TabSheet2.Show;
Image1.Visible := true;
GerarEscala(DBComboBox1.Text);
NaoFechar := false;
end;

procedure TFrmPlantao.BitBtn14Click(Sender: TObject);
begin
close;
end;

procedure TFrmPlantao.BitBtn15Click(Sender: TObject);
begin
DM.QRTurnos.Cancel;
BitBtn5.Enabled := false;
BitBtn8.Enabled := false;
end;

procedure TFrmPlantao.BitBtn1Click(Sender: TObject);
begin
FrmRelatorios.frReport1.LoadFromFile('c:\ford\ResumoPlantao.frf');
FrmRelatorios.frReport1.ShowReport;
end;

procedure TFrmPlantao.BitBtn4Click(Sender: TObject);
begin
OrdemVeiculo('ADD HIGH');
end;

procedure TFrmPlantao.BitBtn5Click(Sender: TObject);
begin
DM.QRTurnos.Cancel;
BitBtn5.Enabled := false;
BitBtn8.Enabled := false;
BitBtn11.Enabled := true;
PageControl1.Enabled := false;
NaoFechar := false;
end;

procedure TFrmPlantao.BitBtn6Click(Sender: TObject);
begin
DM.QRTurnos.Prior;
DBChart2.RefreshData;
StaticText1.Caption := IntToStr(StrToInt(DBEdit8.Text) + StrToInt(DBEdit9.Text) + StrToInt(DBEdit10.Text));
end;

procedure TFrmPlantao.BitBtn7Click(Sender: TObject);
begin
DM.QRTurnos.Next;
DBChart2.RefreshData;
StaticText1.Caption := IntToStr(StrToInt(DBEdit8.Text) + StrToInt(DBEdit9.Text) + StrToInt(DBEdit10.Text));
end;

procedure TFrmPlantao.BitBtn8Click(Sender: TObject);
begin
if DM.QRTurnos.State in [dsinsert,dsedit] then
  begin
  If (DBComboBox1.Text <> '') and (DBLookupComboBox1.Text <> '') then
   begin
    DM.QRTurnos.Post;
    DM.TbStatusBD.Insert;
    DM.TbStatusBDPlanto.AsInteger := DM.QRTurnosCodPlantao.AsInteger;
    DM.TbStatusBDAtivo.AsBoolean := true;
    DM.TbStatusBD.Post;
    BitBtn5.Enabled := false;
    BitBtn8.Enabled := false;
    BitBtn13.Enabled := true;
    TabSheet1.TabVisible := true;
    TabSheet1.Show;
   end
   else
   begin
    MessageDLG('Está faltando escolher o "turno" ou "coordenador", verifique por favor!',mtWarning,[mbok],0);
   end;
   end;
end;

procedure TFrmPlantao.DBComboBox1Click(Sender: TObject);
begin
if DBComboBox1.Text = '3º' then
DBLookupComboBox6.Enabled := true
else
DBLookupComboBox6.Enabled := false;
end;

procedure TFrmPlantao.DBGrid1CellClick(Column: TColumn);
begin
if Column.Field = DM.QREstadoVeiculosSPRodando then
begin
DM.QREstadoVeiculosSP.Edit;
DM.QREstadoVeiculosSPRodando.AsBoolean := not DM.QREstadoVeiculosSPRodando.AsBoolean;
end;
end;

procedure TFrmPlantao.DBGrid1ColEnter(Sender: TObject);
begin
if DBGrid1.SelectedField = DM.QREstadoVeiculosSPRodando  then
DBGrid1.Options := DBGrid1.Options - [dgEditing]
else
DBGrid1.Options := DBGrid1.Options + [dgEditing];
end;

procedure TFrmPlantao.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{pinta checkbox}
if Column.Field = DM.QREstadoVeiculosSPRodando then
begin
DBGrid1.Canvas.FillRect(Rect);
ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 30, Rect.Top + 4, 0);
if DM.QREstadoVeiculosSPRodando.AsBoolean then
ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 30, Rect.Top + 4, 2)
else
ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 30, Rect.Top + 4, 1);
end;
end;

procedure TFrmPlantao.DBGrid2DblClick(Sender: TObject);
begin
if tempMotorista <> '' then
 begin
  if DBGrid2.SelectedField.AsString = '' then
   begin
    DM.QRMotorEscalados.edit;
    DBGrid2.SelectedField.AsString := tempmotorista;
    DM.QRMotorEscalados.post;
    tempMotorista := '';
   end
   ELSE
    begin
     DM.QRMotorDisponiveis.Insert;
     DM.QRMotorDisponiveismotorista.AsString := tempmotorista;
     DM.QRMotorDisponiveis.Post;
     tempMotorista := '';
    end;
  end;
end;

procedure TFrmPlantao.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 a : string;
begin
if key = VK_f1 then
begin
 a := DBGrid2.SelectedField.AsString;
if a <> '' then
 begin
  dm.QRMotorEscalados.edit;
  DM.QRMotorDisponiveis.Insert;
  DM.QRMotorDisponiveismotorista.AsString := a;
  DM.QRMotorDisponiveis.Post;
  DBGrid2.SelectedField.AsString := EmptyStr;
  dm.QRMotorEscalados.Post;
 end;
end;

if key = VK_f2 then
begin
 a := DBGrid2.SelectedField.AsString;
if a <> '' then
 begin
  DM.QRMotorAusentes.Insert;
  DM.QRMotorAusentesmotorista.AsString := a;
  DM.QRMotorAusentesMotivo.AsString := 'Falta';
  DM.QRMotorAusentes.Post;
  DM.QRMotorEscalados.edit;
  DBGrid2.SelectedField.AsString := EmptyStr;
  DM.QRMotorEscalados.Post;
 end;
end;

end;

procedure TFrmPlantao.DBGrid3DblClick(Sender: TObject);
begin
if tempMotorista = '' then
begin
  if not DM.QRMotorDisponiveis.IsEmpty then begin
     tempMotorista := DBGrid3.SelectedField.AsString;
     DM.QRMotorDisponiveis.Delete;
  end;
end
else
 showmessage('Já existe o(a) motorista  "' + tempMotorista + '"  na espera para ser escalado!');
end;

procedure TFrmPlantao.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 a : string;
begin
if key = VK_f2 then
begin
 a := DBGrid3.SelectedField.AsString;
if a <> '' then
 begin
  DM.QRMotorAusentes.Insert;
  DM.QRMotorAusentesmotorista.AsString := a;
  DM.QRMotorAusentesMotivo.AsString := 'Falta';
  DM.QRMotorAusentes.Post;
  DM.QRMotorDisponiveis.Delete;
  DM.QRMotorDisponiveis.Requery([]);
 end;
end;
end;

procedure TFrmPlantao.DBGrid5CellClick(Column: TColumn);
begin
if Column.Field = DM.QREstadoVeiculosHighRodando then
begin
DM.QREstadoVeiculosHigh.Edit;
DM.QREstadoVeiculosHighRodando.AsBoolean := not DM.QREstadoVeiculosHighRodando.AsBoolean;
end;
end;

procedure TFrmPlantao.DBGrid5ColEnter(Sender: TObject);
begin
if DBGrid5.SelectedField = DM.QREstadoVeiculosHIGHRodando  then
DBGrid5.Options := DBGrid5.Options - [dgEditing]
else
DBGrid5.Options := DBGrid5.Options + [dgEditing];
end;

procedure TFrmPlantao.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{pinta checkbox}
if Column.Field = DM.QREstadoVeiculosHighRodando then
begin
DBGrid5.Canvas.FillRect(Rect);
ImageList1.Draw(DBGrid5.Canvas, Rect.Left + 30, Rect.Top + 4, 0);
if DM.QREstadoVeiculosHighRodando.AsBoolean then
ImageList1.Draw(DBGrid5.Canvas, Rect.Left + 30, Rect.Top + 4, 2)
else
ImageList1.Draw(DBGrid5.Canvas, Rect.Left + 30, Rect.Top + 4, 1);
end;
end;

end.

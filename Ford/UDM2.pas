unit UDM2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM2 = class(TDataModule)
    QrTotalVeic: TADOQuery;
    QrTotalVeictotal: TIntegerField;
    DsTotalVeic: TDataSource;
    QrVeicRodados: TADOQuery;
    QrVeicRodadostotal: TIntegerField;
    DSQrVeicRodados: TDataSource;
    DSVeicParados: TDataSource;
    QrVeicParados: TADOQuery;
    IntegerField1: TIntegerField;
    QRFaltaMO: TADOQuery;
    IntegerField2: TIntegerField;
    DSFaltaMO: TDataSource;
    QRMotRodando1: TADOQuery;
    DSMotRodando1: TDataSource;
    DSMotRodando2: TDataSource;
    QRMotRodando2: TADOQuery;
    QRMotRodando1Escalados1: TIntegerField;
    QRMotRodando2Escalados2: TIntegerField;
    QRMotAusent: TADOQuery;
    DSMotAusent: TDataSource;
    QRMotRodando2TotRodando: TIntegerField;
    QRMotAusentausentes: TIntegerField;
    DsTotVeicSP: TDataSource;
    QrTotVeicSP: TADOQuery;
    IntegerField3: TIntegerField;
    DsTotVeicHG: TDataSource;
    QrTotVeicHG: TADOQuery;
    IntegerField4: TIntegerField;
    DSMotdisponiv: TDataSource;
    QRMotDisponiv: TADOQuery;
    QRMotDisponivDisponiveis: TIntegerField;
    procedure QRMotRodando2CalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

uses UDM;

{$R *.dfm}

procedure TDM2.DataModuleCreate(Sender: TObject);
var
 i : integer;
begin
if dm.LigaBD.Connected and dm.LigaBD2.Connected and dm.LigaBD3.Connected then
begin
with dm2 do
 begin
  for i:= 0 to ComponentCount -1 do
    if(Components[i] is TAdoTable) then
     TAdoTable(Components[i]).open
    else
    if(Components[i] is TAdoQuery) then
     TAdoQuery(Components[i]).Open
 end;
end;
end;

procedure TDM2.QRMotRodando2CalcFields(DataSet: TDataSet);
begin
QRMotRodando2TotRodando.AsInteger := QRMotRodando1Escalados1.AsInteger +
QRMotRodando2Escalados2.AsInteger;
end;

end.

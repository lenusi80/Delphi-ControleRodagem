unit URelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FR_Class, FR_DSet, DB, FR_DBSet;

type
  TFrmRelatorios = class(TForm)
    frReport1: TfrReport;
    Turnos: TfrDBDataSet;
    MotorEscalados: TfrDBDataSet;
    MotorDisponiveis: TfrDBDataSet;
    MotorAusentes: TfrDBDataSet;
    frReport2: TfrReport;
  private

  public
    { Public declarations }
  end;

var
  FrmRelatorios: TFrmRelatorios;

implementation

uses UDM, FR_Pars;

{$R *.dfm}

end.

unit URelResumoVeic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FR_DSet, FR_DBSet, FR_Class;

type
  TFrmRelResumoVeic = class(TForm)
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelResumoVeic: TFrmRelResumoVeic;

implementation

uses UDM2;

{$R *.dfm}

end.

unit UHistVeic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFrmHistVeic = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    RadioGroup1: TRadioGroup;
    GroupBox5: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistVeic: TFrmHistVeic;

implementation

uses UDM;

{$R *.dfm}

end.

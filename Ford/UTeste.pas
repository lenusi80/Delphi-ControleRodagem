unit UTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBCtrls, ADODB, ExtCtrls;

type
  TFormTeste = class(TForm)
    ComboBox1: TComboBox;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    Button3: TButton;
    Button4: TButton;
    DBGrid3: TDBGrid;
    Temp: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    DBGrid4: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBNavigator1: TDBNavigator;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeste: TFormTeste;

implementation

uses UDM, UGerarEscala;

{$R *.dfm}

procedure TFormTeste.Button3Click(Sender: TObject);
begin
  dm.QRTemp2.Close;
  dm.QRTemp2.SQL.Clear;
  dm.QRTemp2.SQL.Add('select * from Cadmotorista order by nome');
  dm.QRTemp2.Open;
end;

procedure TFormTeste.Button4Click(Sender: TObject);
begin
GerarEscala (ComboBox1.Text);
end;

procedure TFormTeste.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FormTeste.Release;
FormTeste := nil;
end;

end.

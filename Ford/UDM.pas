unit UDM;

interface

uses
  Dialogs, SysUtils, Classes, DB, ADODB, ExtCtrls, Windows,
  Messages, Variants, registry, forms, Controls, DBTables;

type
  TDM = class(TDataModule)
    TbCoord: TADOTable;
    TbMotorista: TADOTable;
    TbVeiculo: TADOTable;
    TbControlador: TADOTable;
    TbGrupos: TADOTable;
    TbFerias: TADOTable;
    TbRotas: TADOTable;
    TbParadas: TADOTable;
    DsCoord: TDataSource;
    DsMotorista: TDataSource;
    DsVeiculo: TDataSource;
    DsControlador: TDataSource;
    DsGrupos: TDataSource;
    DsFerias: TDataSource;
    DsRotas: TDataSource;
    DsParadas: TDataSource;
    DsTurnos: TDataSource;
    TbCoordNome: TWideStringField;
    TbCoordNomeCompleto: TWideStringField;
    TbCoordCategoriaCNH: TWideStringField;
    TbCoordDataCadastro: TDateTimeField;
    TbCoordEnd: TWideStringField;
    TbCoordNumero: TIntegerField;
    TbCoordBairro: TWideStringField;
    TbCoordCidade: TWideStringField;
    TbCoordUF: TWideStringField;
    TbCoordTel: TWideStringField;
    TbCoordCel: TWideStringField;
    TbCoordTelRecado: TWideStringField;
    TbCoordObservacao: TWideMemoField;
    TbCoordNumeroCNH: TWideStringField;
    TbMotoristasDisponiv: TADOTable;
    TbMotoristasAusentes: TADOTable;
    DSMotoristasDisponiv: TDataSource;
    DSMotoristasAusentes: TDataSource;
    QREstadoVeiculosSP: TADOQuery;
    QREstadoVeiculosHiGH: TADOQuery;
    DSQREstadoVeiculosSP: TDataSource;
    DSQREstadoVeiculosHiGH: TDataSource;
    QRMotorEscalados: TADOQuery;
    DSQRMotorEscalados: TDataSource;
    TbGruposGrupo: TIntegerField;
    TbGruposDataInicio: TDateTimeField;
    TbGruposDataVolta: TDateTimeField;
    TbGruposFolga: TBooleanField;
    TbGruposTipoEscala: TWideStringField;
    TbParadasCodParada: TWideStringField;
    TbParadasDescricao: TWideStringField;
    TbRotasRota: TWideStringField;
    TbRotasCaracteristica: TWideMemoField;
    TbMotoristaNome: TWideStringField;
    TbMotoristaFuncao: TWideStringField;
    TbMotoristaNomeCompleto: TWideStringField;
    TbMotoristaDataCadastro: TDateTimeField;
    TbMotoristaEnd: TWideStringField;
    TbMotoristaNumero: TIntegerField;
    TbMotoristaBairro: TWideStringField;
    TbMotoristaCidade: TWideStringField;
    TbMotoristaCEP: TWideStringField;
    TbMotoristaTel: TWideStringField;
    TbMotoristaCel: TWideStringField;
    TbMotoristaTelRecado: TWideStringField;
    TbMotoristaCatCNH: TWideStringField;
    TbMotoristaRegCNH: TWideStringField;
    TbMotoristaVencCNH: TDateTimeField;
    TbMotoristaNumRV: TWideStringField;
    TbMotoristaVencRV: TDateTimeField;
    TbMotoristaBanco: TWideStringField;
    TbMotoristaAG: TWideStringField;
    TbMotoristaCC: TWideStringField;
    TbMotoristaGrupo: TIntegerField;
    TbMotoristaInativo: TBooleanField;
    TbMotoristaMotivo: TWideStringField;
    TbMotoristaAvaliao: TWideMemoField;
    TbMotoristaObservacao: TWideMemoField;
    TbMotoristaTurno: TWideStringField;
    TbControladorControlador: TWideStringField;
    TbControladorTurno: TWideStringField;
    TbControladorRamal: TIntegerField;
    TbControladorObs: TWideMemoField;
    TbVeiculoVeiculo: TWideStringField;
    TbVeiculoModelo: TWideStringField;
    TbVeiculoPrioridade: TWideStringField;
    TbVeiculoEJA: TIntegerField;
    TbVeiculoDEPTO: TIntegerField;
    TbVeiculoControlador: TWideStringField;
    TbVeiculoRota: TWideStringField;
    TbVeiculoCombustivel: TWideStringField;
    TbVeiculoKMInicial: TIntegerField;
    TbVeiculoObjetivo: TIntegerField;
    TbVeiculoObs: TWideMemoField;
    TbMotoristaOrdemEscala: TIntegerField;
    TbHistoricoVeiculos: TADOTable;
    DsHitoricoVeiculos: TDataSource;
    TbTurnos: TADOTable;
    TbTurnosCodPlantao: TAutoIncField;
    TbTurnosData: TDateTimeField;
    TbTurnosTurno: TWideStringField;
    TbTurnosCoord_01: TWideStringField;
    TbTurnosCoord_02: TWideStringField;
    TbTurnosCoord_03: TWideStringField;
    TbTurnosApoio_01: TWideStringField;
    TbTurnosApoio_02: TWideStringField;
    TbTurnosStandBy: TWideStringField;
    DsTbMotoristasEscalados: TDataSource;
    TbMotoristasEscalados: TADOTable;
    DSQRMotorDisponives: TDataSource;
    DSQRMotorAusentes: TDataSource;
    QRMotorDisponiveis: TADOQuery;
    QRMotorAusentes: TADOQuery;
    QRMotorEscaladosCodPlantao: TIntegerField;
    QRMotorEscaladosVeiculo: TWideStringField;
    QRMotorEscaladosmotorista1: TWideStringField;
    QRMotorEscaladosmotorista2: TWideStringField;
    QRMotorDisponiveisCodPlantao: TIntegerField;
    QRMotorDisponiveismotorista: TWideStringField;
    QRMotorAusentesCodPlantao: TIntegerField;
    QRMotorAusentesmotorista: TWideStringField;
    QRMotorAusentesMotivo: TWideStringField;
    TbMotoristasEscaladosCodPlantao: TIntegerField;
    TbMotoristasEscaladosVeiculo: TWideStringField;
    TbMotoristasEscaladosmotorista1: TWideStringField;
    TbMotoristasEscaladosmotorista2: TWideStringField;
    TbMotoristasDisponivCodPlantao: TIntegerField;
    TbMotoristasDisponivmotorista: TWideStringField;
    TbMotoristasAusentesCodPlantao: TIntegerField;
    TbMotoristasAusentesmotorista: TWideStringField;
    TbMotoristasAusentesMotivo: TWideStringField;
    TbAusencias: TADOTable;
    TbEscalaEspecial: TADOTable;
    DsAusencia: TDataSource;
    DsQREscalaEspecial: TDataSource;
    DSQRHistoricoVeic: TDataSource;
    QRHistoricoVeic: TADOQuery;
    TbCoordTurno: TWideStringField;
    TbVeiculoDataPrevisaoTermino: TDateTimeField;
    TbVeiculoDataInicio: TDateTimeField;
    DSQRFerias: TDataSource;
    DSQRAusencias: TDataSource;
    QRFerias: TADOQuery;
    QRAusencias: TADOQuery;
    QRFeriasMotorista: TWideStringField;
    QRFeriasTurno: TWideStringField;
    QRFeriasDataInicio: TDateTimeField;
    QRFeriasDataVolta: TDateTimeField;
    TbEscalaEspecialVeiculo: TWideStringField;
    TbEscalaEspecialData: TDateTimeField;
    TbEscalaEspecialMotorista1: TWideStringField;
    TbEscalaEspecialMotorista2: TWideStringField;
    QREscalaEspecial: TADOQuery;
    QREscalaEspecialVeiculo: TWideStringField;
    QREscalaEspecialData: TDateTimeField;
    QREscalaEspecialMotorista1: TWideStringField;
    QREscalaEspecialMotorista2: TWideStringField;
    DsEscalaEspecial: TDataSource;
    TbEscalaEspecialDiaSemana: TWideStringField;
    QREscalaEspecialDiaSemana: TWideStringField;
    TbEscalaEspecialTurno: TWideStringField;
    QREscalaEspecialTurno: TWideStringField;
    QRFeriastotal: TFloatField;
    TbFeriasMotorista: TWideStringField;
    TbFeriasTurno: TWideStringField;
    TbFeriasDataInicio: TDateTimeField;
    TbFeriasDataVolta: TDateTimeField;
    TbAusenciasMotorista: TWideStringField;
    TbAusenciasTurno: TWideStringField;
    TbAusenciasDataAusencia: TDateTimeField;
    TbAusenciasDataPrevistaPagar: TDateTimeField;
    TbAusenciasMotivo: TWideStringField;
    QRAusenciasMotorista: TWideStringField;
    QRAusenciasTurno: TWideStringField;
    QRAusenciasDataAusencia: TDateTimeField;
    QRAusenciasDataPrevistaPagar: TDateTimeField;
    QRAusenciasMotivo: TWideStringField;
    TbHistoricoVeiculosVeiculo: TWideStringField;
    TbHistoricoVeiculosTurno: TWideStringField;
    TbHistoricoVeiculosCodParada: TWideStringField;
    TbHistoricoVeiculosdescricaoParada: TWideStringField;
    QRHistoricoVeicVeiculo: TWideStringField;
    QRHistoricoVeicTurno: TWideStringField;
    QRHistoricoVeicCodParada: TWideStringField;
    QRHistoricoVeicdescricaoParada: TWideStringField;
    QRHistoricoVeicHoraInicio: TWideStringField;
    QRHistoricoVeicHoraFinal: TWideStringField;
    TbHistoricoVeiculosHoraInicio: TWideStringField;
    TbHistoricoVeiculosHoraFinal: TWideStringField;
    TbHistoricoVeiculosTotalHoras: TWideStringField;
    QRHistoricoVeicTotalHoras: TWideStringField;
    TbHistoricoVeiculosDiaInicio: TDateTimeField;
    TbHistoricoVeiculosDiaFinal: TDateTimeField;
    QRHistoricoVeicDiaInicio: TDateTimeField;
    QRHistoricoVeicDiaFinal: TDateTimeField;
    QRHistoricoVeicTotalDias: TFloatField;
    TbTurnosOcorrencias: TWideMemoField;
    LigaBD2: TADOConnection;
    LigaBD3: TADOConnection;
    DSQRtemp1: TDataSource;
    QRTemp1: TADOQuery;
    TbMotoristafolga: TBooleanField;
    TbMotoristaFalta: TBooleanField;
    TbMotoristaFerias: TBooleanField;
    QRMotorista: TADOQuery;
    DSQRMotorista: TDataSource;
    QRMotoristaNome: TWideStringField;
    QRMotoristaFuncao: TWideStringField;
    QRMotoristaTurno: TWideStringField;
    QRMotoristaNomeCompleto: TWideStringField;
    QRMotoristaDataCadastro: TDateTimeField;
    QRMotoristaEnd: TWideStringField;
    QRMotoristaNumero: TIntegerField;
    QRMotoristaBairro: TWideStringField;
    QRMotoristaCidade: TWideStringField;
    QRMotoristaCEP: TWideStringField;
    QRMotoristaTel: TWideStringField;
    QRMotoristaCel: TWideStringField;
    QRMotoristaTelRecado: TWideStringField;
    QRMotoristaCatCNH: TWideStringField;
    QRMotoristaRegCNH: TWideStringField;
    QRMotoristaVencCNH: TDateTimeField;
    QRMotoristaNumRV: TWideStringField;
    QRMotoristaVencRV: TDateTimeField;
    QRMotoristaBanco: TWideStringField;
    QRMotoristaAG: TWideStringField;
    QRMotoristaCC: TWideStringField;
    QRMotoristaGrupo: TIntegerField;
    QRMotoristaInativo: TBooleanField;
    QRMotoristaMotivo: TWideStringField;
    QRMotoristaAvaliao: TWideMemoField;
    QRMotoristaObservacao: TWideMemoField;
    QRMotoristaOrdemEscala: TIntegerField;
    QRMotoristaFolga: TBooleanField;
    QRMotoristaFalta: TBooleanField;
    QRMotoristaFerias: TBooleanField;
    DSQRtemp2: TDataSource;
    QRtemp2: TADOQuery;
    DSQRVeiculo: TDataSource;
    QRVeiculo: TADOQuery;
    DsStatusBD: TDataSource;
    TbStatusBD: TADOTable;
    TbStatusBDPlanto: TIntegerField;
    TbStatusBDAtivo: TBooleanField;
    TbEscalaEspecialVeicParado: TBooleanField;
    DlgLocalizaBD: TOpenDialog;
    LigaBD: TADOConnection;
    DSMotorDispTemp: TDataSource;
    TBMotorDispTemp: TADOTable;
    TBMotorDispTempMotorista: TWideStringField;
    TbMotoristaDataNascimento: TDateTimeField;
    TbUsers: TADOTable;
    QrUsers: TADOQuery;
    DsUsers: TDataSource;
    DsQRUser: TDataSource;
    TbUsersUsuario: TWideStringField;
    TbUsersBloqueado: TBooleanField;
    TbUsersCoordenadores: TBooleanField;
    TbUsersMotoristas: TBooleanField;
    TbUsersVeiculos: TBooleanField;
    TbUsersRotas: TBooleanField;
    TbUsersGrupos: TBooleanField;
    TbUsersParadas: TBooleanField;
    TbUsersPlantao: TBooleanField;
    TbUsersProgramarFaltas: TBooleanField;
    TbUsersControladores: TBooleanField;
    TbUsersProgramarFerias: TBooleanField;
    TbUsersEscalaEspecial: TBooleanField;
    TbUsersCorFundo: TBooleanField;
    TbUsersGerarBackup: TBooleanField;
    TbUsersRestBackup: TBooleanField;
    TbUsersUsers: TBooleanField;
    TbTurnosLogin: TWideStringField;
    TbTurnosHoraInicio: TWideStringField;
    TbUsersSenha: TWideStringField;
    TbTurnosHoraFinal: TWideStringField;
    QrUsersUsuario: TWideStringField;
    QrUsersSenha: TWideStringField;
    QrUsersBloqueado: TBooleanField;
    QrUsersCoordenadores: TBooleanField;
    QrUsersMotoristas: TBooleanField;
    QrUsersVeiculos: TBooleanField;
    QrUsersRotas: TBooleanField;
    QrUsersGrupos: TBooleanField;
    QrUsersParadas: TBooleanField;
    QrUsersPlantao: TBooleanField;
    QrUsersProgramarFaltas: TBooleanField;
    QrUsersControladores: TBooleanField;
    QrUsersProgramarFerias: TBooleanField;
    QrUsersEscalaEspecial: TBooleanField;
    QrUsersCorFundo: TBooleanField;
    QrUsersGerarBackup: TBooleanField;
    QrUsersRestBackup: TBooleanField;
    QrUsersUsers: TBooleanField;
    DSQRTurnos: TDataSource;
    QRTurnos: TADOQuery;
    QRTurnosCodPlantao: TAutoIncField;
    QRTurnosData: TDateTimeField;
    QRTurnosTurno: TWideStringField;
    QRTurnosCoord_01: TWideStringField;
    QRTurnosCoord_02: TWideStringField;
    QRTurnosCoord_03: TWideStringField;
    QRTurnosApoio_01: TWideStringField;
    QRTurnosApoio_02: TWideStringField;
    QRTurnosStandBy: TWideStringField;
    QRTurnosHoraInicio: TWideStringField;
    QRTurnosHoraFinal: TWideStringField;
    QRTurnosLogin: TWideStringField;
    QRTurnosOcorrencias: TWideMemoField;
    DSTempHistVeic: TDataSource;
    QRTempHistVeic: TADOQuery;
    DsPosicaoVeiculo: TDataSource;
    TbPosicaoVeiculo: TADOTable;
    TbPosicaoVeiculoNumeroOrdem: TIntegerField;
    TbPosicaoVeiculoPrioridade: TWideStringField;
    TbPosicaoVeiculoVeiculo: TWideStringField;
    TbPosicaoVeiculoMotorista1: TWideStringField;
    TbPosicaoVeiculoMotorista2: TWideStringField;
    TbPosicaoVeiculoRodando: TBooleanField;
    QREstadoVeiculosSPCod: TAutoIncField;
    QREstadoVeiculosSPNumeroOrdem: TIntegerField;
    QREstadoVeiculosSPPrioridade: TWideStringField;
    QREstadoVeiculosSPVeiculo: TWideStringField;
    QREstadoVeiculosSPMotorista1: TWideStringField;
    QREstadoVeiculosSPMotorista2: TWideStringField;
    QREstadoVeiculosSPRodando: TBooleanField;
    QREstadoVeiculosHiGHCod: TAutoIncField;
    QREstadoVeiculosHiGHNumeroOrdem: TIntegerField;
    QREstadoVeiculosHiGHPrioridade: TWideStringField;
    QREstadoVeiculosHiGHVeiculo: TWideStringField;
    QREstadoVeiculosHiGHMotorista1: TWideStringField;
    QREstadoVeiculosHiGHMotorista2: TWideStringField;
    QREstadoVeiculosHiGHRodando: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure TbCoordAfterEdit(DataSet: TDataSet);
    procedure TbCoordAfterInsert(DataSet: TDataSet);
    procedure TbCoordAfterPost(DataSet: TDataSet);
  private
   var
    registro : Tregistry;
     Procedure LocalizarBD;
  public
    { Public declarations }
  end;

var
  DM: TDM;
  CondicaoEditInsert, resultadomodificacao, splash : boolean;
  QuantDias : integer;

implementation

uses UVeiculos, URotinas, UPrincipal, UVerificaGrupoFolga;


{$R *.dfm}

procedure Abrirtabelas;
var
i: integer;
begin
with dm do
 begin
  for i:= 0 to ComponentCount -1 do
    if(Components[i] is TAdoTable) then
     TAdoTable(Components[i]).open
    else
    if(Components[i] is TAdoQuery) then
     TAdoQuery(Components[i]).Open
 end;
end;

Procedure TDM.LocalizarBD;
var
 temp, a : string;
 FullProgPath : PChar;
begin
 splash := false;
 showmessage('Esta faltando o Banco de Dados, localize-o na tela a seguir"');
 DlgLocalizaBD.Execute;
   If DlgLocalizaBD.FileName <> '' then
   begin
     temp := ExtractFilePath(DlgLocalizaBD.FileName);
     Registro := Tregistry.Create;
      with registro do
       begin
        RootKey := HKEY_CURRENT_USER;
        OpenKey('\SOFTWARE\ControleRodagem\', true);
        Writestring('caminBD', temp);
        CloseKey;
        free;
       end;
   showmessage('Agora o Sistema Será Reiniciado Para Validar a Nova Configuração');
   FullProgPath := PChar(Application.ExeName);
   WinExec(FullProgPath, SW_SHOW);
   Application.Terminate;
    end
   else
    begin
     if messagedlg('Banco de Dados Inválido, Deseja Restaurar de um Backup?',mtConfirmation,[mbYes,mbCancel],0) = mrYes then
     begin
       a := ExtractFilePath(Application.ExeName) + '\Backup.exe';
       WinExec(PChar(a), WS_MAXIMIZE);
       Application.Terminate;
     end
      else
        Application.Terminate;
    end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
 CaminhoBD, caminhoBD2, caminhoBD3, temp : string;
begin
   splash := true;
  Registro := Tregistry.Create;
with registro do
 begin
  RootKey := HKEY_CURRENT_USER;
  OpenKey('\SOFTWARE\ControleRodagem\', true);
  if registro.ValueExists('caminBD') = false then
    Writestring('caminBD', '');
  temp := ReadString('caminBD');
  CloseKey;
  free;
 end;

If temp <> '' then
begin
 LigaBD.Connected := false;
 LigaBD2.Connected := false;
 LigaBD3.Connected := false;
 LigaBD.ConnectionString := '';
 LigaBD2.ConnectionString := '';
 LigaBD3.ConnectionString := '';
 CaminhoBD  := temp + 'DBROD.MDB';
 CaminhoBD2 := temp + 'DBROD2.MDB';
 CaminhoBD3 := temp + 'DBROD3.MDB';
 LigaBD.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + caminhoBD +
  ';Persist Security Info=False;Jet OLEDB:Database Password=lelesisi';
 LigaBD2.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + caminhoBD2 +
  ';Persist Security Info=False;Jet OLEDB:Database Password=lelesisi';
 LigaBD3.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + caminhoBD3 +
  ';Persist Security Info=False;Jet OLEDB:Database Password=lelesisi';
   Try begin
    LigaBD.Connected := true;
    LigaBD2.Connected := true;
    LigaBD3.Connected := true;
   end;
   except
    LocalizarBD;
   end;
end
else
    LocalizarBD;

if LigaBD.Connected and LigaBD2.Connected and LigaBD3.Connected then
  begin
   Abrirtabelas;
  end;


end;


procedure TDM.TbCoordAfterEdit(DataSet: TDataSet);
begin
CondicaoEditInsert := true;
end;

procedure TDM.TbCoordAfterInsert(DataSet: TDataSet);
begin
CondicaoEditInsert := true;
end;

procedure TDM.TbCoordAfterPost(DataSet: TDataSet);
begin
CondicaoEditInsert := false;
end;

end.

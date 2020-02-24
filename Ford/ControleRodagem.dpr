program ControleRodagem;

uses
  Forms,
  dialogs,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UCoord in 'UCoord.pas' {FrmCadCoordenador},
  URotinas in 'URotinas.pas',
  UPlantao in 'UPlantao.pas' {FrmPlantao},
  UGrupos in 'UGrupos.pas' {FrmCadGrupos},
  UVerificaGrupoFolga in 'UVerificaGrupoFolga.pas',
  UParadas in 'UParadas.pas' {FrmParadas},
  URotas in 'URotas.pas' {FrmRotas},
  UMotoristas in 'UMotoristas.pas' {FrmMotoristas},
  UVeiculos in 'UVeiculos.pas' {FrmVeiculos},
  UControladores in 'UControladores.pas' {FrmControladores},
  UGerarEscala in 'UGerarEscala.pas',
  UTeste in 'UTeste.pas' {FormTeste},
  UProgrAusencias in 'UProgrAusencias.pas' {FrmProgrAusencias},
  UProgrFerias in 'UProgrFerias.pas' {FrmProgrFerias},
  UESCALAESPECIAL in 'UESCALAESPECIAL.pas' {FrmEscalaEspecial},
  UDM2 in 'UDM2.pas' {DM2: TDataModule},
  URelatorios in 'URelatorios.pas' {FrmRelatorios},
  UFrmCalendario in 'UFrmCalendario.pas' {FrmCalendario},
  UCorFundo in 'UCorFundo.pas' {FrmCorFundo},
  Ubackup in 'Ubackup.pas' {FrmBackup},
  USplash in 'USplash.pas' {FrmSplash},
  ULogin in 'ULogin.pas' {FrmLogin},
  UUsers in 'UUsers.pas' {FrmUsers},
  UMenus in 'UMenus.pas',
  ABOUT in 'ABOUT.pas' {AboutBox},
  UConfigBD in 'UConfigBD.pas' {FrmConfigBD},
  URelResumoVeic in 'URelResumoVeic.pas' {FrmRelResumoVeic},
  UHistVeic in 'UHistVeic.pas' {FrmHistVeic},
  UAdicionaVeiculos in 'UAdicionaVeiculos.pas';

{$R *.res}


begin
  Application.Initialize;
  Application.Title := 'Controle Rodagem';
  Application.CreateForm(TDM, DM);
  // Application.CreateForm(TFrmHistVeic, FrmHistVeic);
  if splash then  // se estiver conectado no BD continua a inialização do programa
  Begin
   FrmSplash := TFrmSplash.create(application);
   FrmSplash.Show;
   FrmSplash.Update;
   FrmSplash.Close;
   FrmSplash.Free;
  FrmLogin := TFrmLogin.create(application);
  FrmLogin.ShowModal;
  if ok then // se o Login estiver Correto continua a inialização do programa
   begin
    Application.CreateForm(TFrmPrincipal, FrmPrincipal);
    Application.CreateForm(TDM2, DM2);
    Application.CreateForm(TFrmRelatorios, FrmRelatorios);
    //Application.CreateForm(TFrmRelResumoVeic, FrmRelResumoVeic);
    Application.CreateForm(TFrmBackup, FrmBackup);
    Application.Run;
   End;
  End;
end.

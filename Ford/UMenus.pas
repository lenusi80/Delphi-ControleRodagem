unit UMenus;

interface

Procedure IniciaMenus;

implementation

uses UPrincipal, UDM, Forms;

Procedure IniciaMenus;
begin
with FrmPrincipal do
begin
Coordenadores.Enabled := DM.QrUsersCoordenadores.AsBoolean;
Motoristas.Enabled := DM.QrUsersMotoristas.AsBoolean;
Veiculos.Enabled := DM.QrUsersVeiculos.AsBoolean;
Rotas.Enabled := DM.QrUsersRotas.AsBoolean;
Grupos.Enabled := DM.QrUsersGrupos.AsBoolean;
Paradas.Enabled := DM.QrUsersParadas.AsBoolean;
Plantao.Enabled := DM.QrUsersPlantao.AsBoolean;
ProgramarFaltas.Enabled := DM.QrUsersProgramarFaltas.AsBoolean;
Controladores.Enabled := DM.QrUsersControladores.AsBoolean;
ProgramarFerias.Enabled := DM.QrUsersProgramarFerias.AsBoolean;
EscalaEspecial.Enabled := DM.QrUsersEscalaEspecial.AsBoolean;
//RelResumoVeic
CorFundo.Enabled := DM.QrUsersCorFundo.AsBoolean;
Gerarbackup.Enabled := DM.QrUsersGerarBackup.AsBoolean;
RestBackup.Enabled := DM.QrUsersRestBackup.AsBoolean;
Users.Enabled := DM.QrUsersUsers.AsBoolean;
end;
end;

end.

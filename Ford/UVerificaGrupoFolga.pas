unit UVerificaGrupoFolga;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DB, BDE, ComCtrls;

  procedure VerificaEscalaFolga;   // antigo
 procedure VerificaEscalaFolga2;   // novo

  var
  GrupoFolga: array[1..7] of integer;
  a : string;
  i : integer;

implementation

uses UDM, UPrincipal;

procedure VerificaEscalaFolga;
 var
  datahoje : TdateTime;
  FatorFolga, i : integer;
  a : string;

 Begin
 datahoje := date;
 i := 1;
 grupofolga[i] := 0;
 DM.TbGrupos.Requery([]);
 DM.TbGrupos.First;

 For i := 1 to 7 do
  GrupoFolga[i] := 0;
 i := 1;

 with DM do
  begin
   while TbGrupos.eof <> true do
     begin

// verifica grupos que iniciarão de folga

   TbGrupos.Edit;
   TbGruposFolga.AsBoolean := false;
   TbGrupos.Post;

       if (TbGruposDataInicio.AsDateTime = datahoje) and
       (TbGruposTipoEscala.AsString = '6/2') then
       begin
          TbGrupos.Edit;
          TbGruposFolga.AsBoolean := true;
          TbGrupos.Post;
          grupofolga[i] := TbGruposGrupo.AsInteger;
          inc(i,1);
        end
          else
             if (TbGruposDataInicio.AsDateTime = datahoje) and
             (TbGruposTipoEscala.AsString = '5/2')  then
                 begin
                   TbGrupos.Edit;
                   TbGruposFolga.AsBoolean := true;
                   TbGrupos.Post;
                   grupofolga[i] := TbGruposGrupo.AsInteger;
                   inc(i,1);
                 end;
                 
// verifica grupos que estão no 2° dia de folga

           if (TbGruposDataInicio.AsDateTime = datahoje - 1) and
           (TbGruposTipoEscala.AsString = '6/2') then
             begin
                   TbGrupos.Edit;
                   TbGruposFolga.AsBoolean := true;
                   TbGrupos.Post;
                   grupofolga[i] := TbGruposGrupo.AsInteger;
                   inc(i,1);
             end
                else
                 if (TbGruposDataInicio.AsDateTime = datahoje - 1) and
                 (TbGruposTipoEscala.AsString = '5/2') then
                   begin
                   TbGrupos.Edit;
                   TbGruposFolga.AsBoolean := true;
                   TbGrupos.Post;
                   grupofolga[i] := TbGruposGrupo.AsInteger;
                   inc(i,1);
                   end;

// verifica grupos que saem da folga

    if (TbGruposDataVolta.AsDateTime = datahoje) and
    (TbGruposTipoEscala.AsString = '6/2') then
     begin
      TbGrupos.Edit;
      TbGruposDataInicio.AsDateTime := TbGruposDataInicio.AsDateTime +  8;
      TbGruposDataVolta.AsDateTime := TbGruposDataVolta.AsDateTime + 8;
      TbGruposFolga.AsBoolean := false;
      TbGrupos.Post;
     end
      else
     if (TbGruposDataVolta.AsDateTime = datahoje) and
     (TbGruposTipoEscala.AsString = '5/2') then
      begin
       fatorfolga := round(TbGruposDataVolta.AsDateTime - TbGruposDataInicio.AsDateTime);
      if fatorfolga = 1 then
         begin
          TbGrupos.Edit;
          TbGruposDataInicio.AsDateTime := TbGruposDataInicio.AsDateTime + 6;
          TbGruposDataVolta.AsDateTime := TbGruposDataVolta.AsDateTime + 7;
          TbGruposFolga.AsBoolean := false;
          TbGrupos.Post;
         end
          else
           begin
            TbGrupos.Edit;
            TbGruposDataInicio.AsDateTime := TbGruposDataInicio.AsDateTime +  8;
            TbGruposDataVolta.AsDateTime := TbGruposDataVolta.AsDateTime + 7;
            TbGruposFolga.AsBoolean := false;
            TbGrupos.Post;
           end;
       end;
       TbGrupos.Next;
     end;  // while

FrmPrincipal.Label2.Caption := '';

 QRMotorista.Close;
 QRMotorista.SQL.Clear;
 QRMotorista.SQL.Add('update CadMotorista set folga = false where inativo = false');
 QRMotorista.ExecSQL;

 for i := 1 to 7 do
   begin
       if grupofolga[i] <> 0 then
         begin
           //update via sql para atualizar motoristas de folga
           QRMotorista.Close;
           QRMotorista.SQL.Clear;
           QRMotorista.SQL.Add('update CadMotorista set folga = true where grupo = ' + inttostr(grupofolga[i]) + '');
           QRMotorista.SQL.Add(' and inativo = false and ferias = false and falta = false');
           QRMotorista.ExecSQL;
         end;
      end;
   end;    // with



 for i := 1 to 7 do
   begin
       if grupofolga[i] <> 0 then
         if i = 1 then
          a := a + inttostr(grupofolga[i])
         else
          a := a + ', ' + inttostr(grupofolga[i]);
   end;


FrmPrincipal.Label2.Caption := a;

DM.TbGrupos.Requery([]);
DM.TbMotorista.Requery([]);

End;




procedure VerificaEscalaFolga2;
begin
a := '';
with DM do
 begin

// designa todos os grupos com folga = falso

  QRtemp2.Close;
  QRtemp2.SQL.Clear;
  QRtemp2.SQL.Add('update CadGrupos set CadGrupos.folga = false');
  QRtemp2.ExecSQL;
//----------------------------------------------------------------------------------------------------------

//se data atual estiver entre datainicio e datavolta e grupo tipo 6/2, designa o mesmo como folga

  QRtemp2.Close;
  QRtemp2.SQL.Clear;
  QRtemp2.SQL.Add('update CadGrupos set CadGrupos.folga = true');
  QRtemp2.SQL.Add(' where CadGrupos.tipoescala = "6/2" and');
  QRtemp2.SQL.Add(' CadGrupos.datainicio <= date() and CadGrupos.datavolta > date()');
  QRtemp2.ExecSQL;

//se data atual = datavolta e grupo tipo 6/2, soma-se 8 dias as datainicio e datavolta

  QRtemp2.Close;
  QRtemp2.SQL.Clear;
  QRtemp2.SQL.Add('update CadGrupos set CadGrupos.datainicio = CadGrupos.datainicio + 8,');
  QRtemp2.SQL.Add(' CadGrupos.datavolta = CadGrupos.datavolta + 8 where CadGrupos.tipoescala = "6/2" and');
  QRtemp2.SQL.Add(' CadGrupos.datavolta = date()');
  QRtemp2.ExecSQL;

//----------------------------------------------------------------------------------------------------------

//se data atual estiver entre datainicio e datavolta e grupo tipo 5/2, designa o mesmo como folga

  QRtemp2.Close;
  QRtemp2.SQL.Clear;
  QRtemp2.SQL.Add('update CadGrupos set CadGrupos.folga = true');
  QRtemp2.SQL.Add(' where CadGrupos.tipoescala = "5/2" and');
  QRtemp2.SQL.Add(' CadGrupos.datainicio <= date() and CadGrupos.datavolta > date()');
  QRtemp2.ExecSQL;

//se data atual = datavolta, grupo tipo 5/2 e dias descançados = 1, adiciona 6 dias em datainicio e 7 dias em datavolta

  QRtemp2.Close;
  QRtemp2.SQL.Clear;
  QRtemp2.SQL.Add('update CadGrupos set CadGrupos.datainicio = CadGrupos.datainicio + 6,');
  QRtemp2.SQL.Add(' CadGrupos.datavolta = CadGrupos.datavolta + 7 where CadGrupos.tipoescala = "5/2" and');
  QRtemp2.SQL.Add(' CadGrupos.datavolta = date() and (CadGrupos.datavolta - CadGrupos.datainicio) = 1');
  QRtemp2.ExecSQL;

//se data atual = datavolta, grupo tipo 5/2 e dias descançados = 2, adiciona 8 dias em datainicio e 7 dias em datavolta

  QRtemp2.Close;
  QRtemp2.SQL.Clear;
  QRtemp2.SQL.Add('update CadGrupos set CadGrupos.datainicio = CadGrupos.datainicio + 8,');
  QRtemp2.SQL.Add(' CadGrupos.datavolta = CadGrupos.datavolta + 7 where CadGrupos.tipoescala = "5/2" and');
  QRtemp2.SQL.Add(' CadGrupos.datavolta = date() and (CadGrupos.datavolta - CadGrupos.datainicio) = 2');
  QRtemp2.ExecSQL;

//----------------------------------------------------------------------------------------------------------

 QRMotorista.Close;
 QRMotorista.SQL.Clear;
 QRMotorista.SQL.Add('update CadMotorista set folga = false where inativo = false');
 QRMotorista.ExecSQL;

  QRtemp2.Close;
  QRtemp2.SQL.Clear;
  QRtemp2.SQL.Add('select grupo from cadGrupos where folga = true');
  QRtemp2.Open;

    QRtemp2.First;

i := 1;

 if not QRtemp2.IsEmpty then
   begin
    while not QRtemp2.Eof do
    begin
         if a = '' then
          a := a + inttostr(QRtemp2.FieldByName('grupo').AsInteger)
         else
          a := a + ', ' + inttostr(QRtemp2.FieldByName('grupo').AsInteger);
    grupofolga[i] := QRtemp2.FieldByName('grupo').AsInteger;
    inc(i,1);
    QRtemp2.Next;
    end;
 end;

   for i := 1 to 7 do
   begin
       if grupofolga[i] <> 0 then
         begin
           //update via sql para atualizar motoristas de folga
           QRMotorista.Close;
           QRMotorista.SQL.Clear;
           QRMotorista.SQL.Add('update CadMotorista set folga = true where grupo = ' + inttostr(grupofolga[i]) + '');
           QRMotorista.SQL.Add(' and inativo = false and ferias = false and falta = false');
           QRMotorista.ExecSQL;
         end;
      end;

  FrmPrincipal.Label2.Caption := a;
  QRtemp2.Close;

end; // With

end; // final da procedure

end.

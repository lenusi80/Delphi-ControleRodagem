unit UGerarEscala;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DB, BDE, ComCtrls;

procedure GerarEscala(turno : string);
Procedure NumeroOrdem(turno : string);
Procedure ReordenaEscala;

implementation

uses UDM, UTeste;



Procedure NumeroOrdem(turno : string);
var
 a : integer;
begin
  with DM do
   begin
  QRTemp2.close;
  QRTemp2.SQL.Clear;
  QRTemp2.SQL.Add('select max(ordemescala) as ultimo from CadMotorista');
  QRTemp2.SQL.Add(' where turno = "' + turno + '" and funcao not in ("Administrativo","Apoio de Pista")');
  QRTemp2.SQL.Add(' and ferias = false and inativo = false');
  QRTemp2.Open;


  a := QRTemp2.FieldByName('ultimo').AsInteger;

   if TbMotoristaOrdemEscala.AsInteger = 0 then
     begin
      TbMotoristaOrdemEscala.AsInteger := a + 1;
     end;

   QRTemp2.close;

   end; //with

end;

Procedure ReordenaEscala;
var
 cont, i : integer;
 a : string;
begin
  with DM do
   begin

  for i:= 0 to 3 do
  begin
    Str(i,a);
    a:= a + 'º';
    QRTemp2.close;
    QRTemp2.SQL.Clear;
    QRTemp2.SQL.Add('select * from CadMotorista where turno = "' + a + '" and');
    QRTemp2.SQL.Add(' funcao not in ("Administrativo","Apoio de Pista")');
    QRTemp2.SQL.Add(' and ferias = false and inativo = false order by ordemescala');
    QRTemp2.Open;
    QRTemp2.First;
    cont := 1;
    if not QRTemp2.IsEmpty then
     begin
      while not QRTemp2.Eof do
        begin
          QRTemp2.Edit;
          QRtemp2.FieldByName('ordemescala').AsInteger := cont;
          QRTemp2.Post;
          inc(cont,1);
          QRTemp2.Next;
        end; // while
      end;  // if
  end;  // for

  QRTemp2.close;
   end; // with

end;


procedure GerarEscala (turno : string);
var
 a, cont : integer;
begin
  with DM do
   begin

// designa condiçoes de falta e ferias dos motoristas em "falso"

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('update CadMotorista set falta = false, ferias = false where turno = "' + turno + '"');
     QRTemp1.ExecSQL;

// Rotina para verificar se o motorista esta com folga programada para o dia atual

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('update CadMotorista set CadMotorista.falta = true where CadMotorista.turno = "' + turno + '"');
     QRTemp1.SQL.Add(' and CadMotorista.ferias = false and CadMotorista.inativo = false and CadMotorista.folga = false');
     QRTemp1.SQL.Add(' and CadMotorista.nome = some(select Motorista from CadAusencias where');
     QRTemp1.SQL.Add(' DataAusencia = date())');
     QRTemp1.ExecSQL;

     
// Rotina para verificar, e se verdade, designar motorista para férias

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('update CadMotorista set CadMotorista.ferias = true where CadMotorista.turno = "' + turno + '"');
     QRTemp1.SQL.Add(' and CadMotorista.falta = false and CadMotorista.inativo = false and CadMotorista.folga = false');
     QRTemp1.SQL.Add(' and CadMotorista.nome = any(select Motorista from CadFerias where Datainicio <= date() and');
     QRTemp1.SQL.Add(' DataVolta > date())');
     QRTemp1.ExecSQL;

// Rotina para zerar ordem de escala dos motorista inativos, em ferias, os administrativos e os apoios
// nescessaria nas auterações de cadastros dos motoristas.

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('update CadMotorista set ordemescala = 0 where turno = "' + turno + '"');
     QRTemp1.SQL.Add(' and ordemescala <> 0 and funcao in ("Administrativo","Apoio de Pista")');
     QRTemp1.SQL.Add(' or ferias = true');
  If QRTemp1.ExecSQL <> 0 then
    ReordenaEscala;


//----------------------------------------------------------------------------------------------------------------

//1 Rotina para inserir, se tiver, motoristas em Férias na tabela MotoristasAusentes

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('select Nome from Cadmotorista where turno = "' + turno + '"');
     QRTemp1.SQL.Add(' and ferias = true');
     QRTemp1.Open;

QRTemp1.First;
if not QRTemp1.IsEmpty then
begin
 while not QRTemp1.Eof do
  begin
   QRMotorAusentes.append;
   QRMotorAusentesmotorista.AsString := QRTemp1.FieldByName('nome').AsString;
   QRMotorAusentesMotivo.AsString :=  'FÉRIAS';
   QRMotorAusentes.Post;
   QRTemp1.Next;
  end; // while
end;

  QRTemp1.close;

//-----------------------------------------------------------------------------------------

//2 Rotina acrescenta 1 no numero de ordem da escala diaria dos motoristas

  QRMotorista.close;
  QRMotorista.SQL.Clear;
  QRMotorista.SQL.Add('select * from CadMotorista where turno = "' + turno + '"');
  QRMotorista.SQL.Add(' and funcao not in ("Administrativo","Apoio de Pista")');
  QRMotorista.SQL.Add(' and ferias = false and inativo = false');
  QRMotorista.Open;

  a := QRMotorista.RecordCount;

  QRMotorista.close;
  QRMotorista.SQL.Clear;
  QRMotorista.SQL.Add('select * from CadMotorista where turno = "' + turno + '"');
  QRMotorista.SQL.Add(' and funcao not in ("Administrativo","Apoio de Pista") and ferias = false');
  QRMotorista.SQL.Add(' and inativo = false order by ordemescala');
  QRMotorista.Open;

  QRMotorista.First;

  while QRMotorista.Eof = false do
  begin
   if QRMotorista.FieldByName('ordemescala').AsInteger = 0 then
     begin
      QRMotorista.Edit;
      QRMotorista.FieldByName('ordemescala').AsInteger := a;
      QRMotorista.Post;
     end;
      cont := QRMotorista.FieldByName('ordemescala').AsInteger;
       begin
       if cont < a then
        inc(cont,1)
       else
        cont := 1;
       end;
         QRMotorista.Edit;
         QRMotorista.FieldByName('ordemescala').AsInteger := cont;
         QRMotorista.Post;
     QRMotorista.Next;
  end;

//-----------------------------------------------------------------------------------------

//3 Rotina para inserir, se tiver, motoristas folguistas na tabela MotoristasAusentes

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('select Nome from Cadmotorista where turno = "' + turno + '"');
     QRTemp1.SQL.Add(' and folga = true');
     QRTemp1.Open;

QRTemp1.First;
if not QRTemp1.IsEmpty then
begin
 while not QRTemp1.Eof do
  begin
   QRMotorAusentes.append;
   QRMotorAusentesmotorista.AsString := QRTemp1.FieldByName('nome').AsString;
   QRMotorAusentesMotivo.AsString :=  'Descanso Semanal';
   QRMotorAusentes.Post;
   QRTemp1.Next;
  end; // while
end;

//-----------------------------------------------------------------------------------------

//4 Rotina para inserir, se tiver, motoristas com ausencia programada na tabela MotoristasAusentes

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('select CadMotorista.Nome, CadAusencias.Motorista, CadAusencias.motivo');
     QRTemp1.SQL.Add(' from CadAusencias INNER JOIN CadMotorista on CadMotorista.Nome = CadAusencias.Motorista');
     QRTemp1.SQL.Add(' where CadMotorista.turno = "' + turno + '" and CadMotorista.falta = true ');
     QRTemp1.Open;

QRTemp1.First;
if not QRTemp1.IsEmpty then
begin
 while not QRTemp1.Eof do
  begin
   QRMotorAusentes.append;
   QRMotorAusentesmotorista.AsString := QRTemp1.FieldByName('nome').AsString;
   QRMotorAusentesMotivo.AsString := ' FP (' + QRTemp1.FieldByName('motivo').AsString + ')';
   QRMotorAusentes.Post;
   QRTemp1.Next;
  end; // while
end;

//-----------------------------------------------------------------------------------------

//5 Rotina para concatenar motoristas pré - escalados na tabela "EscalaEspecial" com seus
// respectivos veiculos se a data do campo "data" coincidir com data atual.

{     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('select * from EscalaEspecial where turno = "' + turno + '" and Data = date()');
     QRTemp1.open;

     QRVeiculo.Close;
     QRVeiculo.SQL.Clear;
     QRVeiculo.SQL.Add('select * from posicaoveiculo where rodando = true');
     QRVeiculo.open;

QRTemp1.First;
QRVeiculo.First;

if not QRTemp1.IsEmpty then
begin
 while not QRTemp1.Eof do
  begin
   if QRVeiculo.Locate('veiculo',QRTemp1.FieldByName('veiculo').AsString,[loCaseInsensitive]) then
    begin
    QRVeiculo.edit;
    QRVeiculo.FieldByName('motorista1').AsString := QRTemp1.FieldByName('motorista1').AsString;
     if QRTemp1.FieldByName('motorista2').AsString <> '' then
       QRVeiculo.FieldByName('motorista2').AsString := QRTemp1.FieldByName('motorista2').AsString;
    QRVeiculo.Post;
   end
    else
     begin
      QRTemp1.Edit;
      QRTemp1.FieldByName('VeicParado').AsBoolean := true;
      QRTemp1.Post;
     end;
  QRTemp1.Next;
  end; // while
end;}

//-----------------------------------------------------------------------------------------

//6 Rotina para gerar escala diaria dos motoristas


               // filtra os motoristas que satisfazem as condiçoes para rodagem do dia
   QRMotorista.Close;
   QRMotorista.SQL.Clear;
   QRMotorista.SQL.Add('select * from CadMotorista where CadMotorista.turno = "' + turno + '" and');
   QRMotorista.SQL.Add(' CadMotorista.funcao not in ("Administrativo","Apoio de Pista") and CadMotorista.ferias');
   QRMotorista.SQL.Add(' = false and CadMotorista.inativo = false and CadMotorista.folga = false and CadMotorista.falta');
   QRMotorista.SQL.Add(' = false order by ordemescala');
   QRMotorista.open;

   QRVeiculo.Close;
   QRVeiculo.SQL.Clear;
   QRVeiculo.SQL.Add('select * from posicaoveiculo where rodando = true and motorista1 = ""');
   QRVeiculo.open;

   QRMotorista.First;


               // Concatena os motoristas que tem nº de ordemescala igual a nº ordemveiculos

 while not QRMotorista.Eof do
  begin
    cont := QRMotoristaOrdemEscala.AsInteger;
    if QRVeiculo.Locate('NumeroOrdem',cont,[loCaseInsensitive]) then
     begin
          QRVeiculo.Edit;
          QRVeiculo.FieldByName('motorista1').AsString := QRMotorista.FieldByName('nome').AsString;
          QRVeiculo.Post;
        end
     else
        begin
         TBMotorDispTemp.Append;
         TBMotordispTempMotorista.AsString := QRMotoristaNome.AsString;
         TBMotorDispTemp.Post;
        end;
    QRMotorista.Next;
 end; // while


                // completa os veiculos que ficaram sem motoristas com os que estão disponíveis


   QRVeiculo.Close;
   QRVeiculo.SQL.Clear;
   QRVeiculo.SQL.Add('select * from posicaoveiculo where rodando = true and motorista1 = "" order by NumeroOrdem');
   QRVeiculo.open;

   QRTemp1.Close;
   QRTemp1.SQL.Clear;
   QRTemp1.SQL.Add('select * from CadMotoristasDispTemp');
   QRTemp1.Open;

if not QRVeiculo.IsEmpty then
 begin
   QRVeiculo.First;
   while not QRVeiculo.Eof do
    begin
     QRTemp1.Requery([]);
     QRTemp1.First;
     if not QRTemp1.IsEmpty then
      begin
       QRVeiculo.Edit;
       QRVeiculo.FieldByName('motorista1').AsString := QRTemp1.FieldByName('motorista').AsString;
       QRVeiculo.Post;
       QRTemp1.Delete;
      end
     else
       begin
       QRVeiculo.Edit;
       QRVeiculo.FieldByName('motorista1').AsString := ' Falta MO';
       QRVeiculo.Post;
       end;
     QRVeiculo.Next;
    end; // while
 end;

                // insere na tabela MotoristasDisponíveis os Motoristas que não foram escalados

QRTemp1.Requery([]);

if not QRTemp1.IsEmpty then
 begin
   while not QRTemp1.Eof do
    begin
       QRMotorDisponiveis.Append;
       QRMotorDisponiveismotorista.AsString := QRTemp1.FieldByName('motorista').AsString;
       QRMotorDisponiveis.Post;
     QRTemp1.Next;
    end;
 end;

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('delete * from CadMotoristasDispTemp');
     QRTemp1.ExecSQL;


                // insere os motoristas escalados na tabela MotoristasEscalados do turno

   QRVeiculo.Close;
   QRVeiculo.SQL.Clear;
   QRVeiculo.SQL.Add('select * from posicaoveiculo where rodando = true and motorista1 <> "" order by NumeroOrdem');
   QRVeiculo.open;

   QRVeiculo.First;

   while not QRVeiculo.Eof do
    begin
       QRMotorEscalados.Append;
       QRMotorEscaladosVeiculo.AsString :=  inttostr(QRVeiculo.FieldByName('numeroordem').AsInteger);
       QRMotorEscaladosmotorista1.AsString := QRVeiculo.FieldByName('motorista1').AsString;
       if QRVeiculo.FieldByName('motorista1').AsString <> '' then
         QRMotorEscaladosmotorista2.AsString := QRVeiculo.FieldByName('motorista2').AsString;
       QRMotorEscalados.Post;
     QRVeiculo.Next;
    end; // while


// Limpa os campos motorista1 e motorista2 do cadastro de veiculos

     QRTemp1.Close;
     QRTemp1.SQL.Clear;
     QRTemp1.SQL.Add('update posicaoveiculo set Motorista1 = "", Motorista2 = ""');
     QRTemp1.ExecSQL;

     QRTemp1.Close;
//-----------------------------------------------------------------------------------------

end; // with



end; //final procedure





end.

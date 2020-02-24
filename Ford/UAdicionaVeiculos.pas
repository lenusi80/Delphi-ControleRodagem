unit UAdicionaVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DB, BDE, ComCtrls;


Procedure OrdemVeiculo (fator : string);

implementation

uses UDM;

Procedure OrdemVeiculo (fator : string);
var
 a, b: integer;
begin

if fator = 'ADD SP' then
 begin
        a := DM.QREstadoVeiculosSP.RecordCount;
        DM.QREstadoVeiculosSP.Insert;
        DM.QREstadoVeiculosSPPrioridade.AsString  := 'SPECIAL PLUS';
        DM.QREstadoVeiculosSPNumeroOrdem.AsInteger  := a+1;
        DM.QREstadoVeiculosSP.Post;
        DM.QREstadoVeiculosSP.Requery([]);
        DM.QREstadoVeiculosHIGH.Requery([]);
     if DM.QREstadoVeiculosHIGH.RecordCount > 0 then
      begin
       b := DM.QREstadoVeiculosSP.RecordCount;
       a := 1;
       DM.QREstadoVeiculoshigh.First;
       while DM.QREstadoVeiculoshigh.eof <> true do
         begin
           DM.QREstadoVeiculosHIGH.Edit;
           DM.QREstadoVeiculosHIGHNumeroOrdem.AsInteger  := b + a;
           DM.QREstadoVeiculosHIGH.Post;
           inc(a,1);
           DM.QREstadoVeiculosHIGH.next;
         end;
      end;
       DM.QREstadoVeiculosHIGH.Requery([]);
end;

if fator = 'ADD HIGH' then
 begin
        a := DM.QREstadoVeiculosSP.RecordCount;
        b := DM.QREstadoVeiculosHigh.RecordCount;
        DM.QREstadoVeiculosHigh.Insert;
        DM.QREstadoVeiculosHighPrioridade.AsString := 'HIGH';
        DM.QREstadoVeiculosHiGHNumeroOrdem.AsInteger  := a + b + 1;
        DM.QREstadoVeiculosHigh.Post;
        DM.QREstadoVeiculosHigh.Requery([]);
        DM.QREstadoVeiculosSP.Requery([]);
 end;


 if fator = 'Del sp' then
 begin
  a := 0;
  DM.TbVeiculo.Requery([]);
  DM.QREstadoVeiculosSP.Requery([]);
       while  DM.QREstadoVeiculosSP.eof <> true do
         begin
           inc(a,1);
           DM.QREstadoVeiculosSP.Edit;
           DM.QREstadoVeiculosSPNumeroOrdem.AsInteger  :=  a;
           DM.QREstadoVeiculosSP.Post;
           DM.QREstadoVeiculosSP.next;
         end;
 end;

 if fator = 'Del high' then
 begin
  a := DM.QREstadoVeiculosSP.RecordCount;
  b := 0;
  DM.TbVeiculo.Requery([]);
  DM.QREstadoVeiculosHIGH.Requery([]);
       while DM.QREstadoVeiculoshigh.eof <> true do
         begin
           inc(a,1);
           DM.QREstadoVeiculosHIGH.Edit;
           DM.QREstadoVeiculosHIGHNumeroOrdem.AsInteger  := b + a;
           DM.QREstadoVeiculosHIGH.Post;
           DM.QREstadoVeiculosHIGH.next;
         end;
 end;


 // AdoQuery QREstadoVeiculosSP

 if fator = 'UP sp' then
 begin
    a := DM.QREstadoVeiculosSPNumeroOrdem.AsInteger;
    DM.QREstadoVeiculosSP.Next;
   if DM.QREstadoVeiculosSP.Eof <> true then
   begin
    b := DM.QREstadoVeiculosSPNumeroOrdem.AsInteger;
    DM.QREstadoVeiculosSP.Prior;
    inc(a,1);
    dec(b,1);
    DM.QREstadoVeiculosSP.Edit;
    DM.QREstadoVeiculosSPNumeroOrdem.AsInteger  :=  a;
    DM.QREstadoVeiculosSP.Post;
    DM.QREstadoVeiculosSP.next;
    DM.QREstadoVeiculosSP.Edit;
    DM.QREstadoVeiculosSPNumeroOrdem.AsInteger  :=  b;
    DM.QREstadoVeiculosSP.Post;
    DM.QREstadoVeiculosSP.Requery([]);
    DM.QREstadoVeiculosSP.Locate('numeroordem',a,[loCaseInsensitive]);
   end;
  end;

 if fator = 'Down sp' then
 begin
    a := DM.QREstadoVeiculosSPNumeroOrdem.AsInteger;
    DM.QREstadoVeiculosSP.Prior;
   if DM.QREstadoVeiculosSP.bof <> true then
   begin
    b := DM.QREstadoVeiculosSPNumeroOrdem.AsInteger;
    DM.QREstadoVeiculosSP.Next;
    dec(a,1);
    inc(b,1);
    DM.QREstadoVeiculosSP.Edit;
    DM.QREstadoVeiculosSPNumeroOrdem.AsInteger  :=  a;
    DM.QREstadoVeiculosSP.Post;
    DM.QREstadoVeiculosSP.Prior;
    DM.QREstadoVeiculosSP.Edit;
    DM.QREstadoVeiculosSPNumeroOrdem.AsInteger  :=  b;
    DM.QREstadoVeiculosSP.Post;
    DM.QREstadoVeiculosSP.Requery([]);
    DM.QREstadoVeiculosSP.Locate('numeroordem',a,[loCaseInsensitive]);
   end;
 end;

 // AdoQuery QREstadoVeiculosHigh

  if fator = 'UP high' then
 begin
    a := DM.QREstadoVeiculosHighNumeroOrdem.AsInteger;
    DM.QREstadoVeiculosHigh.Next;
   if DM.QREstadoVeiculosHigh.Eof <> true then
   begin
    b := DM.QREstadoVeiculosHighNumeroOrdem.AsInteger;
    DM.QREstadoVeiculosHigh.Prior;
    inc(a,1);
    dec(b,1);
    DM.QREstadoVeiculosHigh.Edit;
    DM.QREstadoVeiculosHighNumeroOrdem.AsInteger  :=  a;
    DM.QREstadoVeiculosHigh.Post;
    DM.QREstadoVeiculosHigh.next;
    DM.QREstadoVeiculosHigh.Edit;
    DM.QREstadoVeiculosHighNumeroOrdem.AsInteger  :=  b;
    DM.QREstadoVeiculosHigh.Post;
    DM.QREstadoVeiculosHigh.Requery([]);
    DM.QREstadoVeiculosHigh.Locate('numeroordem',a,[loCaseInsensitive]);
   end;
  end;

 if fator = 'Down high' then
 begin
    a := DM.QREstadoVeiculosHighNumeroOrdem.AsInteger;
    DM.QREstadoVeiculosHigh.Prior;
   if DM.QREstadoVeiculosHigh.bof <> true then
   begin
    b := DM.QREstadoVeiculosHighNumeroOrdem.AsInteger;
    DM.QREstadoVeiculosHigh.Next;
    dec(a,1);
    inc(b,1);
    DM.QREstadoVeiculosHigh.Edit;
    DM.QREstadoVeiculosHighNumeroOrdem.AsInteger  :=  a;
    DM.QREstadoVeiculosHigh.Post;
    DM.QREstadoVeiculosHigh.Prior;
    DM.QREstadoVeiculosHigh.Edit;
    DM.QREstadoVeiculosHighNumeroOrdem.AsInteger  :=  b;
    DM.QREstadoVeiculosHigh.Post;
    DM.QREstadoVeiculosHigh.Requery([]);
    DM.QREstadoVeiculosHigh.Locate('numeroordem',a,[loCaseInsensitive]);
   end;
 end;

end;

end.

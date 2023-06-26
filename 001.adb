with Ada.Text_IO;

procedure Sumar is
   a, b, suma: Integer := 5; 
   
begin
   suma := a + b;
   
   Ada.Text_IO.Put_Line(suma'Image);
end Sumar;



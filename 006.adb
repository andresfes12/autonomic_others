with Ada.Text_IO;

procedure Rounding is
   function Round(Number: Float) return Integer is
      begin
         if Number >= 0.0 then
            return Integer(Number + 0.5);
         else
            return Integer(Number - 0.5);
         end if;
      end Round;

   procedure Process_Numbers is
      Number: Float;
      Rounded: Integer;
   begin
      Ada.Text_IO.Get(Number);
      Rounded := Round(Number);
      Ada.Text_IO.Put(Rounded);
      Ada.Text_IO.New_Line;
   end Process_Numbers;

   Num_Cases: constant Integer := 1;
begin
   for I in 1 .. Num_Cases loop
      Process_Numbers;
   end loop;
end Rounding;


--  My first program in Ada

with Ada.Text_IO; use Ada.Text_IO;

procedure Day0 is
-- Variable declarations
   A,B : Integer := 0;
   C   : Integer := 1000;
   D   : Boolean := false;
begin
   Put_Line("Hello, World!");

   if C > A then
     Put_Line("C is greater than A");
   end if;

end Day0;

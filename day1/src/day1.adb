-- Advent of Code 2024 - Day 1
--
--    ___ _     _       __          _     _             _             
--   / __\ |__ (_) ___ / _|   /\  /(_)___| |_ ___  _ __(_) __ _ _ __  
--  / /  | '_ \| |/ _ \ |_   / /_/ / / __| __/ _ \| '__| |/ _` | '_ \ 
-- / /___| | | | |  __/  _| / __  /| \__ \ || (_) | |  | | (_| | | | |
-- \____/|_| |_|_|\___|_|   \/ /_/ |_|___/\__\___/|_|  |_|\__,_|_| |_|
-- 
--     ___              _ 
--    /   \__ _ _   _  / |
--   / /\ / _` | | | | | |
--  / /_// (_| | |_| | | |
-- /___,' \__,_|\__, | |_|
--              |___/     
-- 
-- Author : Jonathan Lin - jlin@winteroftext.ca
-- Date   : 2024-11-30
--  
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Day1 is
-- Variable declarations
-- Int_Array max size is 1000
   Max_Size : constant Integer := 1000;
   type Int_Array is array (1 .. Max_Size) of Integer;
   array1 : Int_Array;
   array2 : Int_Array;
   count : Integer := 0;
   totalDistance : Integer := 0;
   
   array1FileName : String := "day1.input1.1.txt";
   array2FileName : String := "day1.input1.2.txt";
   inputFile : File_Type;
   currentNumber : Integer;

   i : Integer := 0;

begin
   -- Open the file for reading
   Open(inputFile, In_File, array1FileName);

   -- Read integers from the file until the end of file or maximum size reached
   while not End_Of_File(inputFile) and then count < Max_Size loop
      
      -- implment this function using Get_Line and then extract the integer
      -- Read(inputFile, currentNumber)
      count := count + 1;
      array1(count) := currentNumber;
   end loop;
Close(inputFile);

   -- Output the numbers read from the file
   for i in 1 .. count loop
        Put_Line(Integer'Image(array1(I)));
   end loop;
end Day1;

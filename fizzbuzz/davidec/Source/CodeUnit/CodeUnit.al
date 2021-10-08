codeunit 50100 "FizzBuzzUnit"
{
    procedure MyProcedure()
    var
        FizzBuzz: Record FizzBuzzTable;
        i: Integer;
    begin
        FizzBuzz.DeleteAll();
        for i := 1 to 100 do begin
            FizzBuzz.Init();
            FizzBuzz."Numero" := i;
            FizzBuzz."Text" := FizzBuzzReturn(i);
            FizzBuzz.Insert();
        end;
    end;

    internal procedure FizzBuzzReturn(i: Integer) FizzBuzz: Text
    begin
        if (i mod 3 = 0) and (i mod 5 = 0) then begin
            FizzBuzz := 'FizzBuzz';
            exit;
        end;
        if (i mod 5 = 0) then
            FizzBuzz := 'Buzz';
        if i mod 3 = 0 then
            FizzBuzz := 'Fizz';
    end;
}
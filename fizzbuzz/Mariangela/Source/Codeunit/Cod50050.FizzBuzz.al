codeunit 50050 "FizzBuzz"
{
    procedure FizzBuzzProcedure()
    var
        FizzBuzz: Record FizzBuzz;
        i: Integer;
    begin
        for i := 1 to 100 do begin
            FizzBuzz.Init();
            FizzBuzz."No." := i;
            FizzBuzz."Type" := CopyStr(FizzBuzzReturn(i), 1); // per troncare la stringa alla lunghezza massima
            FizzBuzz.Insert();

        end;
    end;

    local procedure FizzBuzzReturn(i: Integer) FizzBuzz: Text
    begin
        if (i mod 3 = 0) and (i mod 5 = 0) then begin
            FizzBuzz := 'FizzBuzz';
            exit;
        end;

        if (i mod 3 = 0) then
            FizzBuzz := 'Fizz'
        else
            if (i mod 5 = 0) then
                FizzBuzz := 'Buzz';


    end;
}
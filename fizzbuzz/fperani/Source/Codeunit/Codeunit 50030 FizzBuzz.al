codeunit 50030 "Codeunit FizzBuzz"
{
    procedure CalculateFizzBuzz()
    var
        iter: Integer;
        FizzBuzz: Record "FizzBuzz Table";
        i: Integer;
    begin
        for i := 1 to 100 do begin
            FizzBuzz.Init();
            FizzBuzz.Number := i;
            if (i MOD 15 = 0) then
                FizzBuzz.FizzBuzz := 'FizzBuzz'
            else
                if (i MOD 3 = 0) then
                    FizzBuzz.FizzBuzz := 'Fizz'
                else
                    if (i MOD 5 = 0) then
                        FizzBuzz.FizzBuzz := 'Buzz';
            FizzBuzz.Insert();
        end;
    end;

    procedure Azzera()
    var
        FizzBuzz: Record "FizzBuzz Table";
    begin
        FizzBuzz.DeleteAll();
    end;
}
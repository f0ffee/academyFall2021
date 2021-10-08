codeunit 50030 "Populate Table"
{
    internal procedure PopulateTable()
    var
        FizzRec: Record "FizzBuzz Table";
        i: Integer;
    begin
        FizzRec.DeleteAll();
        for i := 1 to 100 do begin
            FizzRec.Init();
            FizzRec."Integer Num" := i;
            FizzRec.Description := Copystr(FizzBuzz(i), 1);
            FizzRec.Insert();
        end;
    end;

    local procedure FizzBuzz(Number: Integer) fizzBuzz: Text[100]
    begin
        if (Number Mod 3 = 0) and (Number mod 5 = 0) then begin
            fizzBuzz := 'FizzBuzz';
            exit;
        end;

        if (Number Mod 3 = 0) then
            fizzBuzz := 'Fizz'
        else
            if (Number Mod 5 = 0) then
                fizzBuzz := 'Buzz'
            else
                fizzBuzz := Format(Number);
    end;
}
codeunit 50030 "Codeunit FizzBuzz"
{
    procedure CalcFizzBuzz()
    var
        FizzBuzz: Record "Table 50030 FizzBuzz";
        iter: Integer;
    begin
        iter := 1;
        repeat

            FizzBuzz.Init();
            // FizzBuzz.Number := iter;
            //     FizzBuzz.Insert();
            // if iter MOD 3 = 0 then
            //     FizzBuzz.Fizz := 'Fizz';
            // if iter MOD 5 = 0 then
            //     FizzBuzz.Fizz := 'Buzz';
            // if (iter MOD 3 = 0) AND (iter MOD 5 = 0) then
            //     FizzBuzz.Fizz := 'FizzBuzz';

            // FizzBuzz.Fizz := Format(iter);

            // if iter MOD 15 = 0 then
            //     FizzBuzz.Fizz := 'FizzBuzz'
            // else
            //     if iter MOD 3 = 0 then
            //         FizzBuzz.Fizz := 'Fizz'
            //     else
            //         if iter MOD 5 = 0 then
            //             FizzBuzz.Fizz := 'Buzz';

            FizzBuzz.Number := iter;
            if (iter MOD 3 = 0) AND (iter MOD 5 = 0) then
                FizzBuzz.Fizz := 'FizzBuzz'
            else
                if iter MOD 5 = 0 then
                    FizzBuzz.Fizz := 'Buzz'
                else
                    if iter MOD 3 = 0 then
                        FizzBuzz.Fizz := 'Fizz'
                    else
                        FizzBuzz.Fizz := Format(iter);

            FizzBuzz.Insert();


            iter += 1;

        until iter > 100;
    end;

    procedure DeleteTable()
    var
        FizzBuzz: Record "Table 50030 FizzBuzz";

    begin

        FizzBuzz.DeleteAll();
    end;
}
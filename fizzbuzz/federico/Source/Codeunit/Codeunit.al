codeunit 50030 "Codeunit FizzBuzz"
{
    procedure CalcFizzBuzz()

    var
        FizzBuzz: Record "FizzBuzz table";
        iter: Integer;

    begin
        iter := 1;
        repeat
            FizzBuzz.Init();
            FizzBuzz.Number := iter;

            // FizzBuzz.Insert();

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

    procedure Delete()
    var
        FizzBuzz: Record "FizzBuzz table";

    begin
        FizzBuzz.DeleteAll();
    end;
}
codeunit 50037 "FizzBuzz CODEUNIT"
{
    internal procedure FizzBuzzProcedure()
    var
        FizzBuzz: Record TableFZ;
        i: Integer;
    begin
        for i := 1 to 100 do begin
            FizzBuzz.Init();
            FizzBuzz.NumeroFZ := i;
            FizzBuzz.Text := CopyStr(FizzBuzzReturn(i), 1);
            FizzBuzz.Insert();
        end;

    end;

    local procedure FizzBuzzReturn(i: Integer) FizzBuzz: Text

    begin
        if (i mod 3 = 0) and (i mod 5 = 0) then begin
            FizzBuzz := 'FizzBuzz';
            exit;
        end;

        if (i mod 5 = 0) then
            FizzBuzz := 'Buzz'
        else
            if (i mod 3 = 0) then
                FizzBuzz := 'Buzz';

    end;
    //     local procedure FizzBuzzReturn2(i: Integer): Text
    // var
    //     FizzBuzz:Text;
    // begin
    //     exit(FizzBuzz);
    // end;
}


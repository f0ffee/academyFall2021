codeunit 50501 "Populate Table"
{
    procedure "Populate Table"(Value: Integer)
    var
        i: Integer;
        textn: Text;
        NumberRec: Record "Number From 1 To 100";
    begin
        i := 1;
        NumberRec.Init();
        for i := 1 to 100 do begin
            if ((i mod 3 = 0) or (i mod 5 = 0) or ((i mod 3 = 0) and (i mod 5 = 0))) then begin
                NumberRec.Value := i;
                if (i mod 3 = 0) then begin
                    textn := 'Fizz';
                    if (i mod 5 = 0) then begin
                        textn := 'Buzz';
                        if ((i mod 3 = 0) and (i mod 5 = 0)) then begin
                            textn := 'FizzBuzz';
                            textn := '';
                            NumberRec.Value := i;
                            NumberRec.Insert();
                            NumberRec.Init();
                        end;
                    end;
                end;
            end;
        end;
    end;
}
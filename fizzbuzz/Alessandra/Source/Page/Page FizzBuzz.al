page 50030 "Page FizzBuzz"
{
    Caption = 'Page FizzBuzz';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Table FizzBuzz";

    layout
    {
        area(Content)
        {

            repeater(Group)
            {

                field("No."; rec."No.")
                {
                    ApplicationArea = All;

                }

                field(Risposta; rec.Risposta)
                {
                    ApplicationArea = all;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Calcolo)
            {
                ApplicationArea = All;
                Caption = 'Calcolo';

                trigger OnAction()
                var
                    Intero: Integer;
                    posizione: Record "Table FizzBuzz";
                begin
                    for Intero := 0 to 100 do begin
                        posizione.Init();
                        posizione."No." := Intero;
                        if (Intero mod 3 = 0) and (Intero mod 5 = 0) then begin
                            posizione.Risposta := 'Fizz';
                        end else begin
                            if Intero mod 5 = 0 then begin
                                posizione.Risposta := 'Buzz';
                            end else begin
                                if Intero mod 3 = 0 then begin
                                    posizione.Risposta := 'FizzBuzz';
                                end;
                            end;
                        end;
                    end;

                    posizione.Modify();
                end;
            }
        }
    }

    var
        myInt: Integer;
}
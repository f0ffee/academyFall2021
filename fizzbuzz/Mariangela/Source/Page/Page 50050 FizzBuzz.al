
page 50050 "FizzBuzz"
{
    Caption = 'FizzBuzz';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = FizzBuzz;
    Editable = false;

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

                field(Type; rec.Type)
                {
                    ApplicationArea = All;

                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(LoadFizzBuzz)
            {
                ApplicationArea = All;
                Caption = 'Load FizzBuzz';

                //per mettere il tasto nalla barra principale e non a tendina
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction();
                var
                    CountNumber: Integer;
                    FizzOrBuzz: Text;
                    RowFizzBuzz: Record FizzBuzz;
                //FizzBuzzcodeunit : Codeunit FizzBuzz;
                begin
                    //FizzBuzzcodeunit.FizzBuzzProcedure();

                    if (RowFizzBuzz.Count = 0) then begin
                        for CountNumber := 1 to 100 do begin
                            FizzOrBuzz := '';

                            if (CountNumber mod 3 = 0) then
                                FizzOrBuzz := 'Fizz';

                            if (CountNumber mod 5 = 0) then
                                FizzOrBuzz := 'Buzz';

                            if ((CountNumber mod 3 = 0) and (CountNumber mod 5 = 0)) then
                                FizzOrBuzz := 'FizzBuzz';

                            RowFizzBuzz.Init();
                            RowFizzBuzz."No." := CountNumber;
                            RowFizzBuzz."Type" := FizzOrBuzz;
                            RowFizzBuzz.Insert();

                        end;
                    end;
                end;
            }

            action(CleanFizzBuzz)
            {
                ApplicationArea = All;
                Caption = 'Clean FizzBuzz';
                trigger OnAction();
                var
                    RowFizzBuzz: Record FizzBuzz;
                begin
                    RowFizzBuzz.DeleteAll();
                end;
            }

        }
    }
}
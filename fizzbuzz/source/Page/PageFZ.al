page 50030 PageFZ
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TableFZ;
    Editable = false;
    Caption = 'PageFizzBuzz';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(NumeroFZ; rec.NumeroFZ)
                {
                    ApplicationArea = All;

                }

                field(Text; rec.Text)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(LoadFizzBuzz)
            {
                ApplicationArea = All;
                Caption = 'LoadFizzBuzz';

                trigger OnAction()
                var
                    CountN: Integer;
                    FizzOrBuzz: Text;
                    RecordNumero: Record TableFZ;

                begin
                    for CountN := 1 to 100 do begin
                        FizzOrBuzz := '';

                        if (CountN mod 3 = 0) then
                            FizzOrBuzz := 'Fizz';


                        if (CountN mod 5 = 0) then
                            FizzOrBuzz := 'Buzz';


                        if ((CountN mod 3 = 0) and (CountN mod 5 = 0)) then
                            FizzOrBuzz := 'FizzBuzz';


                        RecordNumero.Init();
                        RecordNumero.NumeroFZ := CountN;
                        RecordNumero.Text := FizzOrBuzz;
                        RecordNumero.Insert();
                    end;

                    // Numero.NumeroFZ += 1;
                    // while ((Numero.NumeroFZ >= 1) and (Numero.NumeroFZ <= 100)) do begin

                    //     Rec.Insert();
                    //     Numero.NumeroFZ += 1;

                    // end;


                end;
                // IncrNr += 1;

                // rec.NumeroFZ := IncrNr;


            }
            action(CleanFizzBuzz)
            {
                ApplicationArea = All;
                Caption = 'CleanFizzBuzz';

                trigger OnAction()
                var
                    RecordNumero: Record TableFZ;

                begin
                    RecordNumero.DeleteAll();
                end;
            }
            action(FZ)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    FZCodeunit: Codeunit "FizzBuzz CODEUNIT";
                begin

                    FZCodeunit.FizzBuzzProcedure();
                    CurrPage.Update();


                end;
            }
        }
    }
}
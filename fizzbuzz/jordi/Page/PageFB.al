page 50030 PageFB
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TableFB;

    layout
    {
        area(Content)
        {
            repeater(varchar)
            {
                field(NumeroFB; rec.NumeroFB)
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
                Caption = 'LoadFizzBuzz';
                ApplicationArea = All;

                trigger OnAction()
                var
                    CountN: Integer;
                    FizzOrBuzz: Text;
                    RecordNumero: Record TableFB;

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
                        RecordNumero.NumeroFB := CountN;
                        RecordNumero.Text := FizzOrBuzz;
                        RecordNumero.Insert();

                    end;

                end;
            }
            action(CleanFizzBuzz)
            {
                ApplicationArea = All;
                Caption = 'CleanFizzBuzz';

                trigger OnAction()
                var
                    RecordNumero: record TableFB;
                begin
                    RecordNumero.DeleteAll();
                end;
            }
        }
    }

}
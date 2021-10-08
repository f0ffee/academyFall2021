report 50030 "FizzBuzz Report"
{
    UsageCategory = Administration;
    Caption = 'FizzBuzz Report';
    ApplicationArea = All;
    RDLCLayout = './Source/Report/FizzBuzz Report.rdl';

    dataset
    {
        dataitem("Table 50030 FizzBuzz"; "Table 50030 FizzBuzz")
        {
            column(Number; Number)
            { }

            column(Fizz; Fizz)
            { }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    Caption = 'Options';
                    field(FizzBuzz; FizzBuzz)
                    {
                        ApplicationArea = All;
                        Caption = 'Print FizzBuzz';

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        FizzBuzz: text[20];
}
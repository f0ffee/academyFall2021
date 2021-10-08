page 50030 "Page 50030 FizzBuzz"
{
    Caption = 'FizzBuzz Page';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Table 50030 FizzBuzz";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                // field(Number; rec."Number")
                // {
                //     ApplicationArea = All;
                // }

                field(Fizz; rec."Fizz")
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
            action(CalcFizzBuzz)
            {
                Caption = 'CalcFizzBuzz';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Result: Text[20];
                    FizzBuzzCode: Codeunit "Codeunit FizzBuzz";


                begin
                    FizzBuzzCode.DeleteTable();
                    FizzBuzzCode.CalcFizzBuzz();

                end;
            }
        }
    }
}
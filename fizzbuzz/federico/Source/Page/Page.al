page 50030 "Page FizzBuzz"
{
    Caption = 'FizzBuzz page';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "FizzBuzz table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                // field(Number; rec.Number)
                // {
                //     ApplicationArea = All;
                // }
                field(Fizz; rec.Fizz)
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
                    FizzBuzzCode: Codeunit "Codeunit FizzBuzz";

                begin
                    FizzBuzzCode.Delete();
                    FizzBuzzCode.CalcFizzBuzz();
                end;
            }
        }
    }
}
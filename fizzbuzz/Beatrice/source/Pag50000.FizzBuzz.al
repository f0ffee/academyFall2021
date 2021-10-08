page 50000 "FizzBuzz"
{
    ApplicationArea = All;
    PageType = List;
    SourceTable = FizzBuzz;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("FizzBuzz Number"; Rec."FizzBuzz Number")
                {
                    ApplicationArea = All;
                }
                field("FizzBuzz Text"; Rec."FizzBuzz Text")
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
            action(FizzBuzzAction)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    FizzBuzzCodeunit: Codeunit FizzBuzz;
                begin
                    FizzBuzzCodeunit.FizzBuzzProcedure();
                    CurrPage.Update();
                end;
            }
        }
    }
}
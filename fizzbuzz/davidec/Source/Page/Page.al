page 50100 "FizzBuzzPage"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = FizzBuzzTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Numero"; rec."Numero")
                {
                    ApplicationArea = All;

                }
                field("Text"; rec."Text")
                {
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

                trigger OnAction()
                var
                    MyCodeUnit: Codeunit "FizzBuzzUnit";
                begin
                    MyCodeUnit.MyProcedure();
                    CurrPage.Update();
                end;
            }
        }
    }

    var
        myInt: Integer;
        MyCodeUnit: Codeunit "FizzBuzzUnit";
}
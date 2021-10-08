page 50030 "FizzBuzz Page"
{
    Caption = 'FizzBuzz Page';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "FizzBuzz Table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Number"; rec."Number")
                {
                    ApplicationArea = All;

                }
                field("FizzBuzz"; rec."FizzBuzz")
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
                ApplicationArea = All;
                Caption = 'Calc FizzBuzz';
                Image = Calculate;

                trigger OnAction()
                var
                    CodeFizz: Codeunit "Codeunit FizzBuzz";
                begin
                    CodeFizz.CalculateFizzBuzz();
                end;
            }
            action(DeleteAll)
            {
                ApplicationArea = All;
                Caption = 'DeleteAll';
                Image = Delete;

                trigger OnAction()
                var
                    CodeFizz: Codeunit "Codeunit FizzBuzz";
                begin
                    CodeFizz.Azzera();
                end;
            }
        }
    }
}
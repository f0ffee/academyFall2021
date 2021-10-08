page 50030 "Fizz Buzz Page"
{
    Caption = 'Fizz Buzz';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "FizzBuzz Table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Integer Num"; rec."Integer Num")
                {
                    ApplicationArea = All;
                }
                field(Description; rec.Description)
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
            action(FizzBuzz)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction();
                var
                    //intNum: Integer;
                    //fizzRecord: Record "FizzBuzz Table";
                    fizzB: Codeunit "Populate Table";
                begin
                    //fizzRecord.DeleteAll();
                    //for intNum := 0 to 100 do begin
                    //fizzRecord.Init();
                    //fizzRecord."Integer Num" := intNum;
                    //fizzRecord.Description := fizzB.FizzBuzz(intNum);
                    //fizzRecord.Insert();
                    //end
                    fizzB.PopulateTable();
                    CurrPage.Update();
                end;
            }
        }
    }
}
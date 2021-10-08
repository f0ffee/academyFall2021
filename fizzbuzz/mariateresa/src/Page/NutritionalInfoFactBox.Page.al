page 50001 "ADM Nutritional Info FactBox"
{
    Caption = 'Nutritional Info FactBox';
    PageType = ListPart;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "ADM Nutritional Information";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Item No."; rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field(Type; rec.Type)
                {
                    ApplicationArea = All;
                }
                field("Calories Amount"; rec."Calories Amount")
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
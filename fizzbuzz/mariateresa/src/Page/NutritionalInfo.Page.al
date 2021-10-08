page 50000 "ADM Nutritional Informations"
{
    Caption = 'Nutritional Informations';
    PageType = List;
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
                field("Item Description"; rec."Item Description")
                {
                    ApplicationArea = All;
                }
                field(Description; rec.Description)
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
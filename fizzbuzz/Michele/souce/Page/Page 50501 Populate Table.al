page 50501 "Populate Table "
{
    Caption = 'Population Page';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Number From 1 To 100";

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field(Value; rec.Value)
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
            action(PopulateTable)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}
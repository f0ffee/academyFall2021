page 50001 "FizzBuzzIS"
{
    Caption = 'FizzBuzz Number List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = FizzBuzzIS;
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("NumberList"; rec."NumberList")
                {
                    ApplicationArea = All;
                }

                field("NumberType"; rec."NumberType")
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
            action(ShowFBList)
            {
                Caption = 'Show FB List';
                ApplicationArea = All;
                trigger OnAction()
                var
                    FiBuNum: Integer;
                    FiBu: Text;
                    FiBuRow: Record FizzBuzzIS;
                begin
                    for FiBuNum := 1 to 100 do begin
                        FiBu := '';
                        if (FiBuNum mod 3 = 0) then
                            FiBu := 'Fizz';
                        if (FiBuNum mod 5 = 0) then
                            FiBu := 'Buzz';
                        if ((FiBuNum mod 3 = 0) and (FiBuNum mod 5 = 0)) then
                            FiBu := 'FizzBuzz';
                        FiBuRow.Init();
                        FiBuRow."NumberList" := FiBuNum;
                        FiBuRow."NumberType" := FiBu;
                        FiBuRow.Insert();
                    end;
                end;
            }
            action(ClearFBList)
            {
                Caption = 'Clear FB List';
                ApplicationArea = All;
                trigger OnAction();
                var
                    FiBuRow: Record FizzBuzzIS;
                begin
                    FiBuRow.DeleteAll();
                end;
            }
        }
    }
}
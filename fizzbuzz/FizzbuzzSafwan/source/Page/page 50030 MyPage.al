page 50030 "MyPage"
{
    Caption = 'MyPageFizzBuzz';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = MyTable;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Index; rec.Index)
                {
                    ApplicationArea = All;
                }
                field(Testo; rec.Testo)
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
            action(Populate)
            {
                ApplicationArea = All;

                trigger OnAction();
                var

                    tmp: Integer;
                    Pos: Record MyTable;
                begin
                    pos.DeleteAll();
                    for tmp := 0 to 100 do begin
                        Pos.Init();
                        Pos.Index := tmp;
                        Pos.Insert();
                    end;



                end;
            }
            action(FizzBuzzIT)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    Pos: Record MyTable;

                begin
                    if (Pos.FindSet) then
                        repeat
                            if ((Pos.Index mod 3) = 0) then begin
                                Pos.Testo := 'Fizz';
                                Pos.Modify;
                            end;
                            if ((Pos.Index mod 5) = 0) then begin
                                Pos.Testo := 'Buzz';
                                Pos.Modify;
                            end;
                            if ((Pos.Index mod 3 = 0) and (Pos.Index mod 5 = 0)) then begin
                                Pos.Testo := 'FizzBuzz';
                                Pos.Modify;
                            end;
                        until (Pos.Next = 0);
                end;
            }

        }
    }
}
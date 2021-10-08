codeunit 50000 "ADM Nutritritional Info Mgt"
{
    trigger OnRun()
    begin

    end;

    procedure CalcItemTotalCalories(ItemNo: Code[20]; var TotalCalories: Decimal)
    var
        ADMNutritionalInfo: Record "ADM Nutritional Information";
    begin
        TotalCalories := 0;
        ADMNutritionalInfo.SetRange("Item No.", ItemNo);
        if ADMNutritionalInfo.FindSet() then
            repeat
                TotalCalories += ADMNutritionalInfo."Calories Amount";
            until ADMNutritionalInfo.Next() = 0;
    end;

}
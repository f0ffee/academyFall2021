pageextension 50000 "ADM Item Card" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Item)
        {
            group(NutrationlInformation)
            {
                Caption = 'Item Nutrational Informations';
                field("ADM Total Calories FF"; rec."ADM Total Calories FF")
                {
                    ApplicationArea = All;
                }
                field("ADM Total Calories"; rec."ADM Total Calories")
                {
                    ApplicationArea = All;
                }
            }
        }

        addfirst(factboxes)
        {
            part(NutritionalInfoFactBox; "ADM Nutritional Info FactBox")
            {
                Caption = 'Nutritional information';
                SubPageLink = "Item No." = field("No.");
            }
        }
    }


    actions
    {
        // Add changes to page actions here
        addfirst(navigation)
        {
            action(NutritionalInfo)
            {
                ApplicationArea = All;
                Caption = 'Show Item Nutritional Info';
                RunObject = page "ADM Nutritional Informations";
                RunPageLink = "Item No." = field("No.");
                Image = RelatedInformation;
                trigger OnAction()
                begin

                end;
            }
            action(CalculateNuritionalInfo)
            {
                ApplicationArea = All;
                Caption = 'Calc total Calories';
                Image = Calculate;
                trigger OnAction()
                var
                    ADMNutrInfoMgt: Codeunit "ADM Nutritritional Info Mgt";
                    TotItemCalories: Decimal;
                    Item: Record Item;
                    ErrorLable: label 'Total Calories must be positive!!';
                begin
                    TotItemCalories := 0;
                    ADMNutrInfoMgt.CalcItemTotalCalories(rec."No.", TotItemCalories);

                    //if TotItemCalories > 0 then begin
                    Item.Get(rec."No.");
                    Item."ADM Total Calories" := TotItemCalories;
                    Item.Modify;
                    //end;

                    if TotItemCalories < 0 then
                        rec.FieldError("ADM Total Calories", ErrorLable);
                end;
            }
        }
    }


}
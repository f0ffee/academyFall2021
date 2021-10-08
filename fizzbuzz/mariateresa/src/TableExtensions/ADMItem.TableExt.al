tableextension 50000 "ADM Item" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50000; "ADM Total Calories FF"; Decimal)
        {
            Caption = 'Total Calories FF';
            FieldClass = FlowField;
            CalcFormula = sum("ADM Nutritional Information"."Calories Amount" where("Item No." = field("No.")));
        }
        field(50001; "ADM Total Calories"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

}
table 50000 "ADM Nutritional Information"
{
    DataClassification = ToBeClassified;
    Caption = 'Nutrational Informations';

    fields
    {
        field(10; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(11; "Item Description"; text[100])
        {
            Caption = 'Item Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Item.Description where("No." = field("Item No.")));
        }
        field(20; Type; Enum "ADM Nutritional Info Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Nutritional Info Type';
        }
        field(50; Description; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }

        field(100; "Calories Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Calories';
        }

    }

    keys
    {
        key(PK; "Item No.", Type)
        {
            Clustered = true;
        }
    }
}
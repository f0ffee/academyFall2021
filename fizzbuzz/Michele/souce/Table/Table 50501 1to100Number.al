table 50501 "Number From 1 To 100"
{
    DataClassification = ToBeClassified;
    Caption = 'Number From 1 to 100';

    fields
    {
        field(1; Value; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Number Value';
        }
        field(2; Text; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Text Value';
        }
    }

    keys
    {
        key(PK; Value)
        {
            Clustered = true;
        }
    }
}
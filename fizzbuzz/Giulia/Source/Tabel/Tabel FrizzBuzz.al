table 50030 FrizzBuzz
{
    DataClassification = ToBeClassified;
    Caption = 'FrizzBuzz';


    fields
    {
        field(10; "No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
        }
        field(11; Answer; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Answer';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
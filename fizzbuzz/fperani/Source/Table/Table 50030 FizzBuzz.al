table 50030 "FizzBuzz Table"
{
    DataClassification = ToBeClassified;
    Caption = 'FizzBuzz Table';

    fields
    {
        field(10; "Number"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Number';
        }
        field(11; "FizzBuzz"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'FizzBuzz';
        }
    }

    keys
    {
        key(PK; "Number")
        {
            Clustered = true;
        }
    }
}
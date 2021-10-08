table 50030 "FizzBuzz Table"
{
    DataClassification = ToBeClassified;
    Caption = 'Fizz Buzz Table';

    fields
    {
        field(1; "Integer Num"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Number';
        }
        field(2; Description; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK; "Integer Num")
        {
            Clustered = true;
        }
    }
}
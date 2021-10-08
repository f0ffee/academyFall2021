table 50030 "Table 50030 FizzBuzz"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Number"; Integer)
        {
            Caption = 'Number';
            DataClassification = ToBeClassified;
        }

        field(10; "Fizz"; Text[20])
        {
            Caption = 'FizzBuzz';
            DataClassification = ToBeClassified;
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
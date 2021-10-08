table 50030 "FizzBuzz table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Number"; Integer)
        {
            Caption = 'Number';
            DataClassification = ToBeClassified;
        }
        field(2; "Fizz"; Text[10])
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
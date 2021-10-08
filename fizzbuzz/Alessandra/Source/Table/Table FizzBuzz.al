table 50030 "Table FizzBuzz"
{
    DataClassification = ToBeClassified;
    Caption = 'Table FizzBuzz';

    fields
    {
        field(10; "No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
        }

        field(11; Risposta; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Risposta';
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
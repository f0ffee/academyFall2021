table 50100 "FizzBuzzTable"
{
    DataClassification = ToBeClassified;
    Caption = 'FizzBuzz';
    fields
    {
        field(1; "Numero"; Integer)
        {
        }
        field(2; "Text"; Text[50])
        {
        }
    }

    keys
    {
        key(PrimaryKey; "Numero")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

}
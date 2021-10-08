table 50001 "FizzBuzzIS"
{
    DataClassification = ToBeClassified;
    Caption = 'FIzzBuzz Number List';

    fields
    {
        field(1; "NumberList"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'NumberList';
        }

        field(2; "NumberType"; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'NumberType';
        }
    }

    keys
    {
        key(PK; "NumberList", "NumberType")
        {
            Clustered = true;
        }
    }
}
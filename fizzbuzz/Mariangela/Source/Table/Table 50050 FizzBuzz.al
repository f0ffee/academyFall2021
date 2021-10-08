table 50050 "FizzBuzz"
{
    DataClassification = ToBeClassified;
    Caption = 'FizzBuzz';

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
        }

        field(2; "Type"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Type';
        }

    }

    keys
    {
        key(PK; "No.", "Type")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
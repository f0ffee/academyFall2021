table 50030 TableFZ
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; NumeroFZ; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Text"; Text[20])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; NumeroFZ, "Text")
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
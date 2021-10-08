table 50030 TableFB
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; NumeroFB; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(2; Text; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }



    keys
    {
        key(PK; NumeroFB)
        {
            Clustered = true;
        }



    }

    var
        NumeroFB: Integer;

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
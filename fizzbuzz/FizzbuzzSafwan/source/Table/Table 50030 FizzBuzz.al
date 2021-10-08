table 50030 MyTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; Index; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(20; Testo; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Pk; Index)
        {
            Clustered = true;
        }
    }


}
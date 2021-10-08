table 50000 "FizzBuzz"
{
    fields
    {
        field(1; "FizzBuzz Number"; Integer)
        {
        }
        field(2; "FizzBuzz Text"; Text[10])
        {
        }
    }

    keys
    {
        key(Key1; "FizzBuzz Number")
        {
            Clustered = true;
        }
    }
}
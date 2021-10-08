//QUESTO FILE CONTIENE LA TABELLA CON I CAMPI NECESSARI, IN QUESTO CASO NUMBER E RESULT
//50000 CORRISPONDE ALL'ID DELLA TABELLA, MENTRE "FizzBuzz Table" È IL NOME DELLA TABELLA
table 50000 "FizzBuzz Table"
{
    DataClassification = ToBeClassified;
    Caption = 'FizzBuzz Table';

    fields
    {
        field(1; "Number"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Number';
        }
        field(2; "Result"; Code[8])
        {
            DataClassification = ToBeClassified;
            Caption = 'Result';
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

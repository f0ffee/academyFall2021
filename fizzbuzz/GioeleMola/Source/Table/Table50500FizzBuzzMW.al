table 50500 "FizzBuzzMW"
{
    DataClassification = ToBeClassified;
    Caption = 'FIzzBuzz Number List';

    fields
    {
        //Creo una tabella con due campi
        //Un campo intero per la lista dei numeri
        //Un campo di testo per specificare se si tratta di numero normale
        //o se si tratta di un multiplo di 3, di 5 o di entrambi
        //Per ora servono entrambi i tipi, perchè non so se c'è un modo per fare casting da Intero a Stringa di Testo
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
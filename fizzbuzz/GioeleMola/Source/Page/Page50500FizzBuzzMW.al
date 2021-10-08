page 50500 "FizzBuzzMW"
{
    Caption = 'FizzBuzz Number List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = FizzBuzzMW;
    Editable = false;

    //Creazione pagina di tipo lista non editabile, in modo da poter visualizzare
    //una serie di valori senza rischi di modifiche non volute dall'utente

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("NumberList"; rec."NumberList")
                {
                    ApplicationArea = All;
                }

                field("NumberType"; rec."NumberType")
                {
                    ApplicationArea = All;
                }
            }
            //Gruppo di campi di tipo Repeater, permette di avere una visualizzazione
            //chiara di valori presi dalle righe di una tabella, sotto forma di una tabella (visualizzazione con righe e colonne)
        }
    }

    actions
    {
        area(Processing)
        {
            action(ShowFBList)
            {
                Caption = 'Show FB List';
                ApplicationArea = All;
                //Creazione pulsante di azione per la presentazione della lista FizzBuzz
                //Inizializzazione di tre variabili
                //FiBuNum è l'intero che verrà utilizzato per la gestione del ciclo
                //for usato per verificare di che tipo di numero si tratta e per popolare la tabella
                //FiBu è la stringa che dirà se si tratta di un multiplo di 3, 5 o entrambi
                //FiBuRow è il riferimento alla tabella FizzBuzzMW, in esso verranno caricati
                //i valori temporanei presenti nel ciclo per poi essere caricati in tabella
                trigger OnAction()
                var
                    FiBuNum: Integer;
                    FiBu: Text;
                    FiBuRow: Record FizzBuzzMW;
                begin
                    for FiBuNum := 1 to 100 do begin
                        FiBu := '';

                        if (FiBuNum mod 3 = 0) then
                            FiBu := 'Fizz';

                        if (FiBuNum mod 5 = 0) then
                            FiBu := 'Buzz';

                        if ((FiBuNum mod 3 = 0) and (FiBuNum mod 5 = 0)) then
                            FiBu := 'FizzBuzz';
                        //Inizializzo FiBu a NULL prima di verificare di che tipo di numero si tratta
                        //In caso non fosse un multiplo di 3 e/o 5, allora la stringa deve rimanere vuota
                        //Per limitazioni di AL non si può fare uno schema if-else if-else
                        //Per ulteriori limitazioni di AL non si possono nemmeno fare più di una operazione all'interno di un if

                        FiBuRow.Init();
                        FiBuRow."NumberList" := FiBuNum;
                        FiBuRow."NumberType" := FiBu;
                        FiBuRow.Insert();
                        //Alla fine della fine del controllo di caso
                        //Inizializzo una riga nella tabella, pulendola da eventuali valori contenuti al suo interno
                        //Alla colonna "No." assegno il valore attuale di CountNumber
                        //Alla colonna "Type" assegno il valore di FizzOrBuzz, variabile in base al numero ottenuto
                        //Inserisco i valori nella tabella di riferimento
                    end;
                end;
            }
            action(ClearFBList)               //Azione di pulizia della lista
            {

                Caption = 'Clear FB List';
                ApplicationArea = All;
                trigger OnAction();
                var
                    FiBuRow: Record FizzBuzzMW;   //Variabile FiBuRow inizializzata in questa parte del codice
                begin
                    FiBuRow.DeleteAll();        //Cancello ogni singolo valore al suo interno
                end;
            }
        }
    }
}
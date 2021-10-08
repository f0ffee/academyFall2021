//PAGE È CIO' CHE VIENE VISUALIZZATO DALL'UTENTE

page 50001 "FizzBuzz Page"
{
    Caption = 'Pagina FizzBuzz';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "FizzBuzz Table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                //INSERISCO I CAMPI (TABELLA BC GRAFICA)
                field("Number"; rec."Number")
                {
                    ApplicationArea = All;
                }
                field("Result"; rec."Result")
                {
                    ApplicationArea = All;
                }

            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                //AL FINE DI RICHIAMARE LA CODEUNIT, CREO UN OGGETTO E SUCCESSIVAMENTE LO UTILIZZO PER RICHIAMARE LE "FUNZIONI"
                trigger OnAction()
                var
                    FizzBuzzCall: codeunit FizzBuzzCodeunit;
                //Cont: Decimal;
                begin
                    FizzBuzzCall.DeleteRecord();
                    FizzBuzzCall.CompileFizzBuzzTable();
                end;
            }
        }
    }

    var
        myInt: Integer;
}
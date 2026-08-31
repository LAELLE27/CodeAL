page 50102 "Loyal Customer FactBox"
{
    PageType = CardPart;
    SourceTable = "Loyal Customer";

    layout
    {
        area(Content)
        {
            field(Points; Rec.Points)
            {
                Caption = 'Points actuels';
                ApplicationArea = All;
            }
            field(Status; Rec.Status)
            {
                Caption = 'Statut';
                ApplicationArea = All;
            }
        }
    }
}

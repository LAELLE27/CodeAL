page 50105 "Loyal Customer Card"
{
    PageType = Card;
    SourceTable = "Loyal Customer";

    layout
    {
        area(Content)
        {
            field("No."; Rec."No.") { }
            field("Name"; Rec."Name") { }
            field("Points"; Rec."Points") { }
        }
    }

    actions
    {
        area(Processing)
        {
            action(AddPoints)
            {
                Caption = 'Ajouter 100 points';
                Image = Add;

                trigger OnAction()
                var
                    LoyaltyMgt: Codeunit "Loyalty Management";
                begin
                    LoyaltyMgt.AddPoints(Rec."No.", 100);
                    CurrPage.Update();
                end;
            }
        }
    }
}



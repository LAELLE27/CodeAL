page 50105 "Loyal Customer Card"
{
    PageType = Card;
    SourceTable = "Loyal Customer";

    layout
    {
        area(Content)
        {
            field("No."; Rec."No.") { applicationArea= all;}
            field("Name"; Rec."Name") {applicationArea= all;} 
            field("Points"; Rec."Points") {applicationArea= all;} 
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



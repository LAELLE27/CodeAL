pageextension 50103 "Customer Card Loyalty FactBox" extends "Customer Card"
{
    layout
    {
        addlast(FactBoxes)
        {
            part(LoyaltyFactBox; "Loyal Customer FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
        }
    }
}

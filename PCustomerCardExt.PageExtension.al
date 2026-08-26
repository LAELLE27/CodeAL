pageextension 50100 "Customer Card Loyalty Ext" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field("Loyalty Points"; Rec."Loyalty Points")
            {
                Caption = 'Loyalty Points';
                ApplicationArea = All;
            }
        }
    }
}

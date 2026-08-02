page 50100 "Loyal Customer Card"
{
    PageType = Card;
    SourceTable = "Loyal Customer";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { }
                field("Name"; Rec."Name") { }
                field("Points"; Rec."Points") { }
            }
        }
    }
}

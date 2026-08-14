page 50100 "Loyal Customer Card"
{
    PageType = Card;
    SourceTable = "Loyal Customer";
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = "Ma page"

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { }
                field("Name"; Rec."Name") { }
                field("Points"; Rec."Points") { }
 field("Status";rec.Status")
        { }
            }
        }
    }
 actions
    {
        area(Processing)
        {
            action("Export Loyal Customers")
            {
                ApplicationArea = All;
                Caption = 'Export Loyal Customers';
                Image = Export;
                trigger OnAction()
                var
                    xmlLoyalCustomer: xmlport "Loyal Customers Export";
                begin
                    xmlLoyalCustomer.SetTableView(Rec);
                    xmlLoyalCustomer.Run();
                    Message('Exported loyal customers to XML.');
                end;
            }

action("Querie Loyal Customers")
            {
                ApplicationArea = All;
                Caption = 'Export Loyal Customers';
                Image = Export;
                trigger OnAction()
                var
                    LoyalCustomersPoints: Query "Loyal Customers Points";
                begin
                    LoyalCustomersPoints.Open();
                    while LoyalCustomersPoints.Read() do
                        Message('%1: %2', LoyalCustomersPoints.No, LoyalCustomersPoints.TotalPoints);
                    LoyalCustomersPoints.Close();
                end;
            }

        }
    }
}

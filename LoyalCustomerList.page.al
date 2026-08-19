page 50100 "LoyalCustomer"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "Loyal Customer";
    UsageCategory = Documents;
    caption = 'LoyalCustomer';
    CardPageId = 50105;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.") { }
                field("Name"; Rec."Name") { }
                field("Points"; Rec."Points") { }
                field("Status"; Rec."Status") { }
            }
        }
    }

    actions
    {
        area(Processing)
        {

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

        }
    }

}

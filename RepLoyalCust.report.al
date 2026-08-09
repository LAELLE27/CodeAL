report 50100 "Loyal Customers Export"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(LoyalCustomer; "Loyal Customer")
        {
            column(No; "No.") { }
            column(Name; "Name") { }
            column(Points; "Points") { }
        }
    }
}

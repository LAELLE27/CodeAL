report 50103 "Loyal Customers Export 2"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LoyalCustomerWord;

    dataset
    {
        dataitem(LoyalCustomer; "Loyal Customer")
        {
            column(No; "No.") { }
            column(Name; "Name") { }
            column(Points; "Points") { }

        }
    }

    rendering
    {
        layout(LoyalCustomerWord)
        {
            Type = Word;
            LayoutFile = 'LoyalCustomerLayout.docx';
            Caption = 'Loyal Customer (Word)';
        }
    }
}

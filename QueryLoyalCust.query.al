query 50100 "Loyal Customers Points"
{
    QueryType = Normal;

    elements
    {
        dataitem(LoyalCustomer; "Loyal Customer")
        {
            column(No; "No.") { }
            column(Name; "Name") { }
            column(TotalPoints; Points)
            {
                Method = Sum;
            }
        }
    }
}

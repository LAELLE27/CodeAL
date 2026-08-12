xmlport 50100 "Loyal Customers Export"
{
    Format = Xml;
    Direction = Export;

    schema
    {
        textelement(Root)
        {
            tableelement(LoyalCustomer; "Loyal Customer")
            {
                XmlName = 'Customer';

                fieldattribute(No; LoyalCustomer."No.") { }
                fieldelement(Name; LoyalCustomer."Name") { }
                fieldelement(Points; LoyalCustomer."Points") { }
            }
        }
    }
}

codeunit 50101 "Loyalty Points Management"
{
    procedure AddLoyaltyPoints()
    var
           LoyalCustomer: Record "Loyal Customer";
        nom: Code[20];
        commentaire: Text[100];
        tempDate: Date;
        tempcustomer: Record Customer temporary;
        status: Enum "Loyalty Status";
        loyaltyPointsManagement: Codeunit "Loyalty Points Management";

    begin
        LoyalCustomer.Get('C0001');
        LoyalCustomer.Points += 10;
        LoyalCustomer.Modify();
    end;

}

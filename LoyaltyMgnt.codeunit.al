codeunit 50100 "Loyalty Management"
{
    procedure AddPoints(CustomerNo: Code[20]; Amount: Decimal)
    var
        LoyalCustomer: Record "Loyal Customer";
        PointsToAdd: Integer;
    begin
        LoyalCustomer.Get(CustomerNo);
        PointsToAdd := Round(Amount / 10, 1);
        LoyalCustomer.Points += PointsToAdd;
        LoyalCustomer.Modify();
    end;
}

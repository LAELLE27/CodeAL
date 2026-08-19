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
        // Charger une ligne précise
        LoyalCustomer.Get('C0003');
        // Modifier un champ avec validation
        LoyalCustomer.Validate(Points, 50);
        LoyalCustomer.Modify();
        // Filtrer, puis parcourir plusieurs lignes
        LoyalCustomer.SetRange(Points, 50, 100000);
        if LoyalCustomer.FindSet() then
            repeat
                Message('%1: %2 points', LoyalCustomer.Name, LoyalCustomer.Points);
            until LoyalCustomer.Next() = 0;
        // Charger uniquement la première ligne correspondante
        if LoyalCustomer.FindFirst() then
            Message('Premier client filtré : %1', LoyalCustomer.Name);
        // Supprimer une ligne
        LoyalCustomer.Get('C0003');
        LoyalCustomer.Delete();
    end;

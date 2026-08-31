permissionset 50100 "Loyalty Permissions"
{
    Assignable = true;
    Caption = 'Loyalty Program Permissions';

    Permissions =
        table "Loyal Customer" = X,
        page "Loyal Customer Card" = X,
        codeunit "Loyalty Management" = X;
}

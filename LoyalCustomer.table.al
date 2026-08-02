table 50100 "Loyal Customer"
{
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Name"; Text[100])
        {
            Caption = 'Name';
        }
        field(3; "Points"; Integer)
        {
            Caption = 'Points';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}

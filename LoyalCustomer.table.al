table 50100 "Loyal Customer"
{
    fields
    {
        field(1; "No."; Code[20])
        { 
          Caption = 'No.'; 
        trigger OnValidate()
        begin
            if Rec."No." = 'XXXX' then
                Error('Invalid customer number.');
        end;
        }
        field(2; "Name"; Text[100])
        { Caption = 'Name'; }
        field(3; "Points"; Integer)
        { Caption = 'Points'; }
        field(4; "Status"; Enum "Loyalty Status")
        { Caption = 'Status'; }
    }

    keys
    {
        key(PK; "No.")
        { Clustered = true; }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Name")
        { }
    }
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        Rec.points := 0;
    end;
    
    trigger OnModify()
    begin
        Rec.points := Rec.points + 10;
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
}

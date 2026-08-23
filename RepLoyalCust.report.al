report 50100 "Loyal Customers Export"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    dataset
    {
        dataitem(LoyalCustomer; "Loyal Customer")
        {
            column(No; "No.") { }
            column(Points; "Points") { }
            trigger OnPreDataItem()
            begin
                if Count = 0 then
                    Error('Aucun client fidèle à exporter.');
            end;
        }
    }
     trigger OnPostReport()
    begin
        Message('Export terminé.');
    end;
   
}

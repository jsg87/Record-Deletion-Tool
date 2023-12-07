report 50000 "Delete Customer"
{
    ApplicationArea = All;
    Caption = 'Delete Customer';
    UsageCategory = Tasks;
    ProcessingOnly = true;
    dataset
    {
        dataitem(BookCustomer; "Book Customer")
        {
            column(CustomerNo; "Customer No")
            {

            }

            trigger OnAfterGetRecord()
            begin
                If Cust.get("Customer No") then begin
                    IF Cust.delete(True) then
                        Deleted := true;
                    Modify();
                end;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    var
        Cust: Record Customer;
}

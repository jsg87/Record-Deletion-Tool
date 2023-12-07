table 50002 "Book Customer"
{
    Caption = 'Book Customer';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer No"; Code[50])
        {
            Caption = 'Customer No';
        }
        field(2; Deleted; Boolean)
        {
            Caption = 'Deleted';
        }
    }
    keys
    {
        key(PK; "Customer No")
        {
            Clustered = true;
        }
    }
}

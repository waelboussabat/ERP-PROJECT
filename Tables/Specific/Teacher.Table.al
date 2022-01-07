table 50102 "Teacher"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ID';

        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'First Name';

        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Last Name';

        }
        field(4; Email; Text[150])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';

        }
        field(5; Address; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';

        }
        field(6; Phone; Code[12])
        {
            DataClassification = CustomerContent;
            Caption = 'Phone';

        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
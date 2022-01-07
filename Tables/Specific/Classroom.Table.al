table 50104 "Classroom"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ShortDescription; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ShortDescription';

        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';

        }
    }

    keys
    {
        key(PK; ShortDescription)
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
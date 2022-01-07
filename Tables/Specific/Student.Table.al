table 50100 Student
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CIN; Code[8])
        {

            DataClassification = CustomerContent;
            Caption = 'CIN';

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

        field(4; Email; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';
        }
        field(5; Phone; Code[12])
        {
            DataClassification = CustomerContent;
            Caption = 'Phone';
        }
        field(6; Country; Code[12])
        {
            DataClassification = CustomerContent;
            Caption = 'Country';
            TableRelation = "Country/Region".Code;
        }
        field(7; "ID Classroom"; Code[12])
        {
            DataClassification = CustomerContent;
            Caption = 'ID Classroom';
            TableRelation = Classroom.ShortDescription;

        }
        field(8; "Classroom Description"; Text[100])
        {
            //DataClassification = CustomerContent;
            Caption = 'Classroom Description';
            // user can't edit this field
            Editable = False;
            // read the field (Description) from classrom table without saving it again
            FieldClass = FlowField;
            // Search the key
            CalcFormula = lookup(Classroom.Description where(ShortDescription = field("ID Classroom")));

        }

    }


    keys
    {
        key(PK; CIN)
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
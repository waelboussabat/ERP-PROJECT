table 50106 "StudentEntries"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID_Student"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ID_Student';
            TableRelation = Student;

        }
        field(2; "ID_Cours"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ID_Cours';
            TableRelation = Cours;

        }
        field(3; "Cours_Description"; Text[100])
        {
            Caption = 'Cours_Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Cours.Description where(ID = field(ID_Cours)));

        }
        field(4; "Marks"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Marks';
            MinValue = 0;
            MaxValue = 20;

        }
        field(5; "ID_Classroom"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ID_Classroom';
            TableRelation = Classroom;

        }
    }

    keys
    {
        key(PK; ID_Student, ID_Cours, Marks, ID_Classroom)
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
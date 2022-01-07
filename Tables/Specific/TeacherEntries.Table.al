table 50105 "TeacherEntries"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID_Teacher; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ID_Teacher';
            TableRelation = Teacher;

        }
        field(2; ID_Classroom; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ID_Classroom';
            TableRelation = Classroom;

        }
        field(3; ID_Cours; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = Cours;

        }
        field(4; Classroom_Description; Text[100])
        {
            Caption = 'Classroom_Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Classroom.Description where(ShortDescription = field(ID_Classroom)));

        }
        field(5; Cours_Description; Text[100])
        {
            Caption = 'Cours_Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Cours.Description where(ID = field(ID_Cours)));

        }
    }

    keys
    {
        key(PK; ID_Teacher, ID_Classroom, ID_Cours)
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
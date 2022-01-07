page 50108 "Student Marks"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    Caption = 'Student Marks';
    InsertAllowed = true;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    Caption = 'First Name';
                    Editable = false;

                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    Caption = 'Last Name';
                    Editable = false;

                }
                field("Mark"; Note)
                {
                    ApplicationArea = All;
                    Caption = 'Mark';
                    trigger OnValidate()
                    var
                        Difference: Decimal;
                    begin
                        StudentEntries.Reset();
                        StudentEntries.SetRange(ID_Student, Rec.CIN);
                        StudentEntries.SetRange("ID_Classroom", Rec."ID Classroom");
                        StudentEntries.SetRange(ID_Cours, IDCours);

                        if not StudentEntries.IsEmpty() then begin
                            StudentEntries.CalcSums(Marks);
                            Difference := Note - StudentEntries.Marks;
                            StudentEntries.Init();
                            StudentEntries.Validate("ID_Student", Rec.CIN);
                            StudentEntries.Validate("ID_Classroom", Rec."ID Classroom");
                            StudentEntries.Validate("ID_Cours", IDCours);
                            StudentEntries.Validate(Marks, Difference);
                            StudentEntries.Insert();
                        end else begin
                            StudentEntries.Init();
                            StudentEntries.Validate("ID_Student", Rec.CIN);
                            StudentEntries.Validate("ID_Classroom", Rec."ID Classroom");
                            StudentEntries.Validate("ID_Cours", IDCours);
                            StudentEntries.Validate(Marks, Note);
                            StudentEntries.Insert();
                        end;
                    end;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    var
        Note: Decimal;
        IDCours: Code[20];
        StudentEntries: Record "StudentEntries";

    trigger OnAfterGetRecord()
    var
    begin
        StudentEntries.Reset();
        StudentEntries.SetRange(ID_Student, Rec.CIN);
        StudentEntries.SetRange("ID_Classroom", Rec."ID Classroom");
        StudentEntries.SetRange(ID_Cours, IDCours);
        if StudentEntries.FindSet() then begin
            StudentEntries.CalcSums(Marks);
            Note := StudentEntries.Marks;
        end;
    end;

    procedure SetCoursID(CoursID: Code[20])
    begin
        IDCours := CoursID;
    end;

}
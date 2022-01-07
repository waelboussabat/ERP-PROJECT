page 50106 "Classroom/Courses"
{
    PageType = List;
    //ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = TeacherEntries;
    Caption = 'Classroom/Courses';
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ID_Classroom; Rec.ID_Classroom)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;

                }
                field(Classroom_Description; Rec.Classroom_Description)
                {
                    ApplicationArea = All;


                }
                field(ID_Cours; Rec.ID_Cours)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;


                }
                field(Cours_Description; Rec.Cours_Description)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Mark")
            {
                ApplicationArea = All;
                Caption = 'Mark';
                Promoted = true;
                PromotedCategory = Process;
                Image = AddWatch;
                trigger OnAction()
                var
                    StudentMark: Page "Student Marks";
                    Student: Record Student;
                begin
                    StudentMark.SetCoursID(Rec.ID_Cours);
                    Student.SetRange("ID Classroom", Rec.ID_Classroom);
                    StudentMark.SetTableView(Student);
                    StudentMark.Run();
                end;

            }
        }
    }

}
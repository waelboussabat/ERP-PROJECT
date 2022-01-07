page 50103 "Teacher Card"
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = None;
    SourceTable = Teacher;
    Caption = 'Teacher Card';
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Général';
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;

                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;

                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;

                }

            }
            group(Personal)
            {
                Caption = 'Personnelle';
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;

                }
                field(Phone; Rec.Phone)
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
            action("Classroom/Courses")
            {
                ApplicationArea = All;
                Caption = 'Classroom/Courses';
                Promoted = true;
                PromotedCategory = Process;
                Image = ListPage;
                RunObject = page "Classroom/Courses";
                RunPageLink = "ID_Teacher" = field(ID);
            }
        }
    }

    var
        myInt: Integer;
}
page 50101 "Student Card"
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = Student;
    Caption = 'Student Card';
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(CIN; Rec.CIN)
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
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
                field("ID Classrom"; Rec."ID Classroom")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        CurrPage.Update();
                    end;

                }
                field("Classroom Description"; Rec."Classroom Description")
                {
                    ApplicationArea = All;
                }
                part("StudentEntries"; "StudentEntriesList")
                {
                    SubPageLink = "ID_Student" = field(CIN);
                }

            }
        }
    }


    var
        myInt: Integer;
}
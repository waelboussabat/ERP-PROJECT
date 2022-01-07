page 50107 "StudentEntriesList"
{
    PageType = ListPart;
    //ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = StudentEntries;
    Caption = 'StudentEntriesList';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Cours_Description; Rec.Cours_Description)
                {
                    ApplicationArea = All;

                }
                field(Marks; Rec.Marks)
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
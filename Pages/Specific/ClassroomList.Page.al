page 50105 "Classroom List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Classroom;
    Caption = 'Classroom List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ShortDescription; Rec.ShortDescription)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

}
page 90722 "EIE Statements Card"
{
    Caption = 'Statements Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    Caption = 'Difficulty';
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        Statements.GetSuggestion(Level, Suggestion, Difficulty);
                    end;
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Suggestion; Suggestion)
                {
                    Caption = 'Suggestion';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Level; Level)
                {
                    Caption = 'Level';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;
        Statements: Codeunit "EIE Statements";
}
codeunit 90721 "EIE Validations"
{
    procedure CheckForPlusSign(TextToVerify: Text)
    var
        Pos: Integer;
    begin
        Pos := StrPos(TextToVerify, '+');
        If Pos <> 0 then
            Message('Plus + sign cannot be used.');
    end;
}
codeunit 90722 "EIE Event Subscribers"
{
    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnBeforeValidateEvent', 'Address', false, false)]
    local procedure OnBeforeValidateAddress(Rec: Record Customer; xRec: Record Customer)
    var
        Validations: Codeunit "EIE Validations";
    begin
        Validations.CheckForPlusSign(Rec.Address);
    end;
}
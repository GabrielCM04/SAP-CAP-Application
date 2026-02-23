namespace university;
entity Modules{
    key moduleID : UUID;
    study : Association to university.Studies;
    name : String;
    credits : Integer;
    weights : Integer;
    hasFixedWeight : Boolean;
    validFrom : Date;
    validTo : Date;
    isMandatory : Boolean;
    isFinalThesis : Boolean;
    additionalInfo : String;
    assignments : Association to university.Students;
}
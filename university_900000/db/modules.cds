namespace university;
entity Modules{
    @UI.Hidden
    key moduleID : UUID;
    
    @title: 'Study'
    study : Association to university.Studies;

    @title: 'Name'
    name : String;

    @title: 'Amount of Credits'
    credits : Integer;

    @title: 'Weights'
    weights : Integer;

    @UI.Hidden
    hasFixedWeight : Boolean;

    @title: 'Valid From'
    validFrom : Date;

    @title: 'Valid To'
    validTo : Date;

    @UI.Hidden
    isMandatory : Boolean;

    @UI.Hidden
    isFinalThesis : Boolean;

    @title: 'Additional Informations'
    additionalInfo : String;

    @title: 'Assignments'
    assignments : Association to university.Students;
}
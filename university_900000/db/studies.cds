namespace university;
entity Studies{
    key subjectID : UUID;
    name : String;
    creditsForCompletion : Integer;
    duration : Integer;
    modules : Association to many university.Modules on modules.study = $self;
    students : Association to many university.Students on students.study = $self;
}
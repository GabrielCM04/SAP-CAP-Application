namespace university;
entity Studies{
    @UI.Hidden
    key subjectID : UUID;

    @title: 'Study Name'
    name : String;

    @title: 'Amount of Credits'
    creditsForCompletion : Integer;

    @title: 'Duration'
    duration : Integer;

    @title: 'Modules'
    modules : Association to many university.Modules on modules.study = $self;

    @title: 'Students'
    students : Association to many university.Students on students.study = $self;
}
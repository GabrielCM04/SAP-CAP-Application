namespace university;
entity Students{
    @UI.Hidden
    key userID : UUID;

    @title: 'First Name'
    firstName : String;

    @title: 'Last Name'
    lastName : String;

    @title: 'Study Attended'
    study : Association to university.Studies;

    @title: 'Modules Attended'
    modules : Association to university.Modules;
}
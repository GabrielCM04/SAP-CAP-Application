namespace university;
entity Students{
    key userID : UUID;
    firstName : String;
    lastName : String;
    study : Association to university.Studies;
    modules : Association to university.Modules;
}
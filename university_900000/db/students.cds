namespace university;

using { university.Studies }  from './studies';
using { university.Modules }  from './modules';


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

    @title: 'Assignments'
    assignments : Association to many university.Module_Assignments on assignments.student = $self;
}
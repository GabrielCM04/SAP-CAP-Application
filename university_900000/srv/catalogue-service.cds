using { university.Modules as modules } from '../db/modules';
using { university.Module_Assignments as assignments } from '../db/modules';

service CatalogueService {


@(restrict: [
    { grant: 'READ', where: 'exists study.students[userID = $user.id]' },
    { grant: 'assign', where: 'not exists assignments[student.userID = $user.id]'}
])
entity Modules as projection on modules actions {
    action assign() returns Boolean;
};

@(restrict: [
    { grant: 'READ', where: 'student.userID = $user.id' },
    { grant: 'unassign', where: 'student.userID = $user.id'}
])
entity ModuleAssignments as projection on assignments actions {
    action unassign() returns Boolean;
};


}
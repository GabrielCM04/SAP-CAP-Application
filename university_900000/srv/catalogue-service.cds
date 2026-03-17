using { university.Modules as modules } from '../db/modules';


service CatalogueService {


@(restrict: [{ grant: 'READ', where: 'exists assignments [userID = $user.id]' }])
entity Modules as projection on modules actions {
    action assign() returns Boolean;
};

@(restrict: [{ grant: 'READ', where: 'student = $user.id' }])
entity ModuleAssignments as projection on modules actions {
    action unassign() returns Boolean;
};


}
using { university.Students as students } from '../db/students';
using { university.Studies as studies } from '../db/studies';

service StudentsService {

@odata.draft.enabled
entity Students as projection on students;

@odata.draft.enabled
entity Studies as projection on studies;

}
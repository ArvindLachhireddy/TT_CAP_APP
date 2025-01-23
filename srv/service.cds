using {TT_CAP_APP as TAPP} from '../db/schema';

service CAP_APP {
    entity VIEW            as projection on TAPP.view;
    entity STUDENT_DETAILS as projection on TAPP.Student;
}

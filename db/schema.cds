namespace TT_CAP_APP;

entity Student {
    STUDENT_ID : Integer;
    FIRST_NAME : String;
    LAST_NAME : String;
    GENDER: String;
    PHONE_NUMBER : String;
}

entity Marks {
    STUDENT_ID : Integer;
    SUB_CODE : Integer;
    SUB_NAME: String;
    MARKS: Integer;
}

entity view as select a.STUDENT_ID,concat(a.FIRST_NAME,a.LAST_NAME) as NAME,b.SUB_NAME,b.MARKS from Student a left join Marks b on a.STUDENT_ID=b.STUDENT_ID;
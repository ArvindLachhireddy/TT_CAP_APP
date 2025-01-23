namespace TT_CAP_APP;

type TYP_NAME : String;
entity Student {
    key STUDENT_ID   : Integer;
        FIRST_NAME   : String;
        LAST_NAME    : String;
        GENDER       : String;
        PHONE_NUMBER : String;
}

entity Marks {
    key STUDENT_ID : Integer;
        SUB_CODE   : Integer;
        SUB_NAME   : String;
        MARKS      : Integer;
}

entity view as
    select
        key a.STUDENT_ID,
            concat(a.FIRST_NAME,' ', 
            a.LAST_NAME) as FULL_NAME: TYP_NAME,
            b.SUB_NAME,
            b.MARKS
    from Student as a
    left join Marks as b
        on a.STUDENT_ID = b.STUDENT_ID;

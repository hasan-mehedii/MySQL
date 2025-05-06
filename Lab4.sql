select * from instructor

select count(*), count(salary), min(distinct salary), sum(salary)
from inst_dup

update inst_dup set salary = null

select * from inst_dup

insert into inst_dup2 select * from instructor

select * from prereq
select * from instructor


select distinct course_id

from section

where semester = 'Fall' and year= 2017 and
course_id not in (select course_id

from section

where semester = 'Spring' and year= 2018);


select distinct course_id

from section

where semester = 'Fall' and year= 2017 and
course_id not in (select course_id

from section

where semester = 'Spring' and year= 2018);


select s1.course_id, s2.course_id
from section s1, section s2
where (s1.semester = 'Fall' and s1.year = 2017) and (s2.semester = 'Spring' and s2.year = 2018)


select distinct ID
from takes
where (course_id, sec_id, semester, year) in
(select course_id, sec_id, semester, year
from teaches
where teaches.ID= 10101);

select distinct ID
    from takes t1, teaches t2
    where(t1.ID = t2.ID)


SELECT DISTINCT t.ID
FROM takes t
NATURAL JOIN teaches te
WHERE te.ID = 10101;

select distinct id from teaches natural join section where teaches.id = 10101

SELECT DISTINCT t.ID
FROM takes t
JOIN teaches te ON t.course_id = te.course_id
               AND t.sec_id = te.sec_id
               AND t.semester = te.semester
               AND t.year = te.year
WHERE te.ID = 10101;

select distinct ID
from takes t1 join teaches t2 on (t1.course_id = t2.course_id and t1.sec_id = t2.sec_id and t1.semester = t2.semester and t1.year = t2.year)
where t2.ID= 10101;

select count (distinct t1.ID)
from takes t1 join teaches t2 using (course_id, sec_id, semester, year)
where t2.id = 10101;

select dept_name, name, salary
    from instructor
    where salary = all (select salary
    from instructor
    where dept_name = 'Comp. Sci.');


select distinct T.name
from instructor as T, instructor as S
where T.salary > S.salary and S.dept_name = 'Biology';


select course_id
from section S
where semester = 'Fall' and year = 2017 and exists (select *
    from section T
    where semester = 'Spring' and year = 2018
    and S.course_id = T.course_id);

select course_id
from section S
where semester = 'Fall' and year = 2017 and not exists (select *
    from section T
    where semester = 'Spring' and year = 2018
    and S.course_id = T.course_id);

select distinct S.ID, S.name
from student S
where not exists (select course_id
from course
where dept_name = 'Biology')
minus
(select T.course_id
from takes T
where S.ID = T.ID);

SELECT DISTINCT S.ID, S.name
FROM student AS S
WHERE NOT EXISTS (
    (SELECT course_id
     FROM course
     WHERE dept_name = 'Biology')
    EXCEPT
    (SELECT T.course_id
     FROM takes AS T
     WHERE S.ID = T.ID)
);

SELECT DISTINCT S.ID, S.name
FROM student S
WHERE NOT EXISTS (
    SELECT 1
    FROM course C
    WHERE C.dept_name = 'Biology'
    AND NOT EXISTS (
        SELECT 1
        FROM takes T
        WHERE T.ID = S.ID
        AND T.course_id = C.course_id
    )
);

select T.course_id
from course T
where 1 = (select count(R.course_id)
from section R
where T.course_id = R.course_id
and R.year = 2017);

select T.course_id
from course T
where 1 <= (select count(R.course_id)
from section R
where T.course_id = R.course_id
and R.year = 2018);

minus

select T.course_id
from course T
where 1 < (select count(R.course_id)
from section R
where T.course_id = R.course_id and R.year = 2018);

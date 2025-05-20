select * from instructor

select *
    from instructor i1, (select i2.dept_name, avg(i2.salary) as avg_salary
    from instructor i2
    group by i2.dept_name)

select *
    from instructor i1, (select i2.dept_name i2_dn, avg(i2.salary) as avg_salary
    from instructor i2
    group by i2.dept_name)
where i1.dept_name = i2_dn

   
select i1.name,
       i1.salary,
       (select avg(i2.salary)
        from instructor i2
        where i2.dept_name = i1.dept_name) as avg_salary
from instructor i1;

select i2.dept_name, avg(i2.salary) as avg_salary
    from instructor i2
    group by i2.dept_name

with dept_avg as (
    select i2.dept_name, avg(i2.salary) as avg_salary
    from instructor i2
    group by i2.dept_name
)
select * from dept_avg;


with max_budget (value) as
(select max(budget) from department)
select dept_name, budget
from department, max_budget
where department.budget = max_budget.value;


(select i1.dept_name, i1.salary, avg_salary
from instructor i1, (select i2.dept_name i2_dn, avg(i2.salary) as avg_salary
    from instructor i2
    group by i2.dept_name)
where i1.dept_name = i2_dn)

minus
   
(with dept_avg_sal (dept_name, avg_salary) as
(select dept_name, avg(salary) as avg_salary
    from instructor
    group by dept_name)
select i1.dept_name, i1.salary, i2.avg_salary
from instructor i1, dept_avg_sal i2
where i1.dept_name = i2.dept_name)

-- from chatgpt
(
    select i1.dept_name, i1.salary, i2.avg_salary
    from instructor i1,
         (select i2.dept_name as i2_dn, avg(i2.salary) as avg_salary
          from instructor i2
          group by i2.dept_name) i2
    where i1.dept_name = i2.i2_dn
)

minus

(
    with dept_avg_sal (dept_name, avg_salary) as (
        select dept_name, avg(salary)
        from instructor
        group by dept_name
    )
    select i1.dept_name, i1.salary, i2.avg_salary
    from instructor i1, dept_avg_sal i2
    where i1.dept_name = i2.dept_name
);

with dept_total (dept_name, value) as (
    select dept_name, sum(salary)
    from instructor
    group by dept_name),
dept_total_avg(value) as (
    select avg(value)
    from dept_total
)
select dept_name
from dept_total, dept_total_avg
where dept_total.value >= dept_total_avg.value;

select i1.name, i1.dept_name, i1.salary, (select avg(i2.salary)
        from instructor i2
          where i1.dept_name = i2.dept_name)
    as avg_salary
from instructor i1;


select name
from instructor
where salary * 10 >
    (select budget from department
     where department.dept_name = instructor.dept_name);


select * from inst_dup
   
create table inst_dup2 as
    select * from instructor

select * from inst_dup2

delete from inst_dup2
where dept_name in (select dept_name
from department
where building = 'Watson');

select * from instructor
where dept_name in (select dept_name
from department
where building = 'Watson');


insert into inst_dup2
select * from instructor
where dept_name in (
    select dept_name
    from department
    where building = 'Watson'
);

insert into instructor select * from instructor --error khaibo

update instructor
set salary = salary * 1.03
where salary > 100000;
update instructor
set salary = salary * 1.05
where salary <= 100000;

select * from inst_dup2
   
update inst_dup2
set salary = salary * 2
where salary <= 40000


update inst_dup2
set salary = case
                when salary >= 90000 then salary * 0.5
                else salary
             end;

select * from course

create table dup_course as
    select * from course

select * from dup_course

update dup_course
set course_id = case
when course_id like 'CS%' then 'CSE' || substr(course_id, 3)
else course_id
end;

drop table dup_course

update dup_course
set course_id = 'CSE-' || substr(4, 3)
where course_id like 'CS%'

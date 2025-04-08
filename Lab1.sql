create table branch(
    branch_name VARCHAR2(15) PRIMARY KEY,
    branch_city VARCHAR2(15) NOT NULL,
    assets NUMBER(12) check (assets >= 100000)
);

create table customer
(customer_id varchar2(5),
customer_name varchar2(15),
customer_street varchar2(12),
customer_city varchar2(12) not null,
cell varchar2(11) unique,
dob date not null,
primary key (customer_id));


create table loan(
    loan_no char(5),
    branch_name varchar2(15),
    amount number(10,2) not null,
    primary key (loan_no),
    foreign key (branch_name) references branch(branch_name),
    check (amount >= 0),
    check (loan_no like 'L-%')
);

create table account(
    account_no char(5),
    branch_name varchar2(15),
    balance number(10,2) not null,
    constraint pk_acc_no primary key (account_no),
    constraint nm_acc_bal check (balance is not null),
    constraint fk_br_acc_nm foreign key (branch_name) references branch(branch_name),
    constraint chk_acc_bal check(balance >= 0),
    constraint chk_acc_acc_no check (account_no like 'A-%')
);

create table depositor(
    customer_id varchar2(5),
account_no char(5),
primary key (customer_id, account_no),
foreign key (customer_id) references customer(customer_id),
foreign key (account_no) references account(account_no)
);

create table borrower(
    customer_id varchar2(5),
loan_no char(5),
primary key (customer_id, loan_no),
foreign key (customer_id) references customer(customer_id),
foreign key (loan_no) references loan(loan_no)
);

create table employee(
    emp_id varchar2(15),
    emp_name varchar2(20),
    salary number(10,2)
);

alter table employee
add(
    mobile number(11),
    doj date,
    constraint dt_o_jn check(doj is not null)
);

alter table employee
add primary key(emp_id)

alter table employee
modify (
    emp_name varchar2(35)
);

alter table employee add constraint nn_emp_name check(emp_name is not null)

alter table employee
modify(
    mobile varchar2(11)
);

alter table employee
rename column emp_name to employee_name;

alter table employee
drop column mobile;

alter table employee
drop primary key;

alter table employee drop constraint dt_o_jn

alter table employee rename to mehedi

create table ka as select * from mehedi

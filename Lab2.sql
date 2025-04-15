insert all
into branch values('Brighton', 'Brooklyn', 7100000)
into branch values ('Downtown', 'Brooklyn', 9000000)
into branch values ('Mianus', 'Horseneck', 400000)
into branch values ('Northtown', 'Rye', 3700000)
into branch values ('Perryridge','Horseneck', 1700000)
into branch values ('Pownal','Bennington', 300000)
into branch values ('Redwood', 'Palo Alto', 2100000)
into branch values ('Round Hill', 'Horseneck', 8000000)
select * from dual

INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_005', 'Adams', 'Spring', 'Pittsfield', '01552524521', TO_DATE('1-Nov-71', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_007', 'Brooks', 'Senator', 'Brooklyn', '01725545895', TO_DATE('5-Dec-80', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_001', 'Curry', 'North', 'Rye', '01551425428', TO_DATE('15-May-84', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_003', 'Glenn', 'Sand Hill', 'Woodside', '01915475865', TO_DATE('1-Feb-75', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_012', 'Green', 'Walnut', 'Stamford', '01715254632', TO_DATE('12-Sep-85', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_002', 'Hayes', 'Main', 'Harrison', '01912542548', TO_DATE('18-Jul-80', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_004', 'Johnson', 'Alma', 'Palo Alto', '01552986547', TO_DATE('17-May-78', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_009', 'Jones', 'Main', 'Harrison', '01754254256', TO_DATE('25-Dec-74', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_006', 'Lindsay', 'Park', 'Pittsfield', '01785458565', TO_DATE('18-Jun-88', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_008', 'Smith', 'North', 'Rye', '01925654785', TO_DATE('15-Sep-90', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_010', 'Turner', 'Putnam', 'Stamford', '19145258745', TO_DATE('11-Mar-78', 'DD-Mon-YY'));
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, CUSTOMER_STREET, CUSTOMER_CITY, CELL, DOB) VALUES ('C_099', 'Williams', 'Nassau', 'Princeton', '01724552654', TO_DATE('8-Aug-92', 'DD-Mon-YY'));

INSERT INTO ACCOUNT (ACCOUNT_NO, BRANCH_NAME, BALANCE) VALUES ('A-101', 'Downtown', 500);
INSERT INTO ACCOUNT (ACCOUNT_NO, BRANCH_NAME, BALANCE) VALUES ('A-102', 'Perryridge', 400);
INSERT INTO ACCOUNT (ACCOUNT_NO, BRANCH_NAME, BALANCE) VALUES ('A-201', 'Brighton', 900);
INSERT INTO ACCOUNT (ACCOUNT_NO, BRANCH_NAME, BALANCE) VALUES ('A-215', 'Mianus', 700);
INSERT INTO ACCOUNT (ACCOUNT_NO, BRANCH_NAME, BALANCE) VALUES ('A-217', 'Brighton', 750);
INSERT INTO ACCOUNT (ACCOUNT_NO, BRANCH_NAME, BALANCE) VALUES ('A-222', 'Redwood', 700);
INSERT INTO ACCOUNT (ACCOUNT_NO, BRANCH_NAME, BALANCE) VALUES ('A-305', 'Round Hill', 350);


INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_002', 'A-102');
INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_004', 'A-101');
INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_004', 'A-201');
INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_009', 'A-217');
INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_006', 'A-222');
INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_008', 'A-215');
INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_003', 'A-305');
INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_002', 'A-309');
INSERT INTO DEPOSITOR (CUSTOMER_ID, ACCOUNT_NO) VALUES ('C_004', 'A-309');



INSERT INTO LOAN (LOAN_NO, BRANCH_NAME, AMOUNT) VALUES ('L-11', 'Round Hill', 900);
INSERT INTO LOAN (LOAN_NO, BRANCH_NAME, AMOUNT) VALUES ('L-14', 'Downtown', 1500);
INSERT INTO LOAN (LOAN_NO, BRANCH_NAME, AMOUNT) VALUES ('L-15', 'Perryridge', 1500);
INSERT INTO LOAN (LOAN_NO, BRANCH_NAME, AMOUNT) VALUES ('L-16', 'Perryridge', 1300);
INSERT INTO LOAN (LOAN_NO, BRANCH_NAME, AMOUNT) VALUES ('L-17', 'Downtown', 1000);
INSERT INTO LOAN (LOAN_NO, BRANCH_NAME, AMOUNT) VALUES ('L-23', 'Redwood', 2000);
INSERT INTO LOAN (LOAN_NO, BRANCH_NAME, AMOUNT) VALUES ('L-93', 'Mianus', 500);


INSERT INTO BORROWER (CUSTOMER_ID, LOAN_NO) VALUES ('C_005', 'L-16');
INSERT INTO BORROWER (CUSTOMER_ID, LOAN_NO) VALUES ('C_001', 'L-93');
INSERT INTO BORROWER (CUSTOMER_ID, LOAN_NO) VALUES ('C_002', 'L-15');
INSERT INTO BORROWER (CUSTOMER_ID, LOAN_NO) VALUES ('C_004', 'L-14');
INSERT INTO BORROWER (CUSTOMER_ID, LOAN_NO) VALUES ('C_010', 'L-17');
INSERT INTO BORROWER (CUSTOMER_ID, LOAN_NO) VALUES ('C_008', 'L-11');
INSERT INTO BORROWER (CUSTOMER_ID, LOAN_NO) VALUES ('C_008', 'L-23');
INSERT INTO BORROWER (CUSTOMER_ID, LOAN_NO) VALUES ('C_009', 'L-17');

select * from branch
select * from customer
select * from account
select * from depositor
select * from loan
select * from borrower

select branch_name from loan
select distinct branch_name from loan
   
select
    substr(branch_name, 3, 6),
    branch_name,
    loan_no,
    amount * 100 as Mehedi,
    amount / 1000
from loan

select * from loan
where branch_name='Perryridge' and amount > 1300

select * from loan
where branch_name='Perryridge' or amount > 1300

select * from loan
where amount between 1300 and 1500

select * from loan
where amount >= 1300 and amount <= 1500

select cell, customer_name from customer
where substr(cell, 1, 3) = '017'

SELECT CUSTOMER_NAME, DOB
FROM CUSTOMER
WHERE EXTRACT(MONTH FROM DOB) = 12;

select * from loan
where amount = 1500

select * from loan
where amount <> 1500

select * from branch b, loan l
where b.branch_name = l.branch_name

select count(*) from customer
select count(*) from borrower
   
select customer_name, cell
from borrower b, customer c
where b.customer_id = c.customer_id

select * from borrower
select * from customer
select * from account
select * from loan

SELECT c.*, b.*, a.*, l.*
FROM borrower b
JOIN customer c ON b.customer_id = c.customer_id
JOIN loan l ON b.loan_no = l.loan_no
JOIN depositor d ON c.customer_id = d.customer_id
JOIN account a ON d.account_no = a.account_no;

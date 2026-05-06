create table department(
    dnumber number(5) not null,
    dname varchar(15),
    mgrssn number(12),
    mgrstartdate date,
    primary key (dnumber)
);

create table employee(
    ssn number primary key,
    fname varchar(20),
    minit char(1),
    lname varchar(20),
    bdate date,
    address varchar(100),
    sex char(1),
    salary number,
    superssn number,
    dno number,
    foreign key (superssn) references employee(ssn),
    foreign key (dno) references department(dnumber)
);

create table dependent(
    essn number,
    dependent_name varchar(30),
    sex char(1),
    bdate date,
    relationship varchar(20),
    primary key (essn, dependent_name),
    foreign key (essn) references employee(ssn)
);

describe department;
describe employee;
describe dependent;

insert into department(dnumber, dname, mgrssn, mgrstartdate)
values (1, 'research', 123456789, date '2020-01-10');

insert into department(dnumber, dname, mgrssn, mgrstartdate)
values (2, 'administration', 987654321, date '2021-05-15');

insert into employee(ssn, fname, minit, lname, bdate, address, sex, salary, superssn, dno)
values (123456789, 'john', 'a', 'doe', date '1990-05-10', 'dhaka', 'm', 50000, null, 1);

insert into employee(ssn, fname, minit, lname, bdate, address, sex, salary, superssn, dno)
values (987654321, 'sara', 'b', 'khan', date '1995-08-15', 'chittagong', 'f', 60000, 123456789, 2);

insert into dependent(essn, dependent_name, sex, bdate, relationship)
values (123456789, 'anya', 'f', date '2015-02-05', 'daughter');

insert into dependent(essn, dependent_name, sex, bdate, relationship)
values (987654321, 'ali', 'm', date '2018-11-20', 'son');

select * from department;
select * from employee;
select * from dependent;

drop table dependent;
drop table employee;
drop table department;
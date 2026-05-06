create table cars (
    md_num number(3),
    md_name varchar(10),
    style varchar(10),
    year number(3)
);

create table specs (
    md_num number(3),
    mpg number(3),
    radio varchar(10),
    engine varchar(10)
);

create table stock (
    md_num number(3),
    qty number(3),
    price number(6)
);

insert into cars values (1, 'honda', 'coupe', 1983);
insert into cars values (2, 'toyota', 'saloon', 1990);
insert into cars values (3, 'buick', 'estate', 1991);
insert into cars values (4, 'nissan', 'van', 1992);
insert into cars values (5, 'ford', 'saloon', 1993);

insert into specs values (1, 43, 'yes', '2l-4cyl');
insert into specs values (2, 25, 'no', '4l-v8');
insert into specs values (3, 18, 'yes', '5l-v8');
insert into specs values (4, 50, 'no', '2l-4cyl');
insert into specs values (5, 45, 'yes', '3l-v6');

insert into stock values (1, 10, 4980);
insert into stock values (2, 3, 13865);
insert into stock values (3, 5, 14900);
insert into stock values (4, 1, 11000);
insert into stock values (5, 2, 24600);

select * from cars;
select * from specs;
select * from stock;

alter table specs add tyre varchar(10);
alter table cars add (company varchar(10), supplier varchar(10));

alter table specs modify tyre number(3);
alter table cars modify (company varchar(20), supplier varchar(20));

alter table specs drop column tyre;
alter table cars rename column company to manufacturer;

update cars set year = 2007 where md_name = 'ford';
delete from cars where md_name = 'ford';

select * from cars;
select * from specs;
select * from stock;
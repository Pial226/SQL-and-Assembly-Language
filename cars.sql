create table cars(
  md_num number(10),
  md_name varchar(10),
  style varchar(10),
  year number(10)
);

create table specs(
  md_num number(10),
  mpg number(20),
  radio varchar(20),a
  engine varchar(30)
);

create table stock(
  md_num number(10),
  qty number(20),
  price number(20)
);

describe cars;
describe specs;
describe stock;

insert into cars(md_num, md_name, style, year) values (1, 'honda', 'coupe', 1983);
insert into cars(md_num, md_name, style, year) values (2, 'toyota', 'saloon', 1990);
insert into cars(md_num, md_name, style, year) values (3, 'buick', 'estate', 1991);

insert into specs(md_num, mpg, radio, engine) values (1, 43, 'yes', '2l-4cyl');
insert into specs(md_num, mpg, radio, engine) values (2, 25, 'no', '4l-v8');
insert into specs(md_num, mpg, radio, engine) values (3, 18, 'yes', '5l-v8');

insert into stock(md_num, qty, price) values (1, 10, 4980);
insert into stock(md_num, qty, price) values (2, 3, 12865);
insert into stock(md_num, qty, price) values (3, 5, 14900);

select * from cars;
select * from specs;
select * from stock;

update specs set mpg = 80 where engine = '4l-v8';

delete from stock where price = 14900;

select * from cars;
select * from specs;
select * from stock;
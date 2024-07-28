--Task4 part 2,we have to perform each query what we have learned till date

--1. Select
select * from person;

--2.Select Distinct
select distinct country from person;

--3.Where
select * from person where gender='Female';

--4.And 
select * from person
where country='China'and gender='Male';

--5.Or
select * from person
where country='China'or gender='Male';

--6. Not Equal to
select * from person
where not country='China'and not country='Indonesia';

--7.Update
select * from person
update person
set first_name='Deepika',last_name='Padukone',gender='Female',Country='India'
where person_id= 100;

--8.Delete
select * from person
delete from person
where country='Philippines';

--9.Alter
--9.1 adding a column
select * from person
alter table person
add column occupation varchar(100);

--9.2 dropping a column
select * from person
alter table person
drop column occupation;

--9.3 rename a column
select * from person
alter table person
rename column person_id to p_id;

--9.4 to change data type of a column
select* from person
alter table person
alter column gender type varchar(100);

--9.5 alter column constraint
select * from person
alter table person
alter column last_name set not null;

--10.in
select * from person
select p_id,country from person
where country in ('Brazil','Germany');

--11. between
select * from person 
where p_id between 1 and 10;

--12.Like
select * from person
where country like 'I%' ;

--13.Order by
select * from person
order by first_name asc ;

--14. limit
select gender,last_name from person
limit 10;

--15.Copy query
select* from person
copy person from 'D:\copy_query_task_4_SQL.csv' delimiter ',' csv header;

--16.Foreign key
create table population(
	pop_id serial primary key,
	continent varchar(100),
	country_id int,
	foreign key (country_id) references person(p_id)
);

select * from person


--task 4:part3 (1)constraint to check age should not greater than 78 
             --(2)custom constraint that particular column not contain 'a1,''b1','check'

create table personal_details(
	id serial primary key,
	name varchar(100), 
	age int,
	address varchar(150),
	city varchar (100)
);

select * from personal_details;

insert into personal_details(name,age,address,city)
values
('a1', 30, 'add1', 'Mumbai'),
('b1', 35, 'add2', 'Delhi'),
('c1', 40, 'add3', 'Bangalore'),
('d1', 45, 'add4', 'Hyderabad'),
('e1', 50, 'add5', 'Chennai'),
('f1', 55, 'add6', 'Kolkata'),
('g1', 60, 'add7', 'Pune'),
('h1', 65, 'add8', 'Ahmedabad'),
('i1', 70, 'add9', 'Jaipur'),
('j1', 75, 'add10', 'Surat'),
('k1', 78, 'add11', 'Lucknow'),
('l1', 80, 'add12', 'Kanpur'),
('m1', 90, 'add13', 'Nagpur'),
('n1', 37, 'add14', 'Gujrat'),
('o1', 42, 'add15', 'Bhopal'),
('p1', 47, 'add16', 'Patna'),
('q1', 52, 'add17', 'Vadodara'),
('r1', 57, 'add18', 'Indore'),
('s1', 62, 'add19', 'Thane'),
('t1', 67, 'add20', 'Agra');

select * from personal_details;

-- constraint to check age should not greater than 78 
select * from personal_details where age>78;

update personal_details
set age =78
where age >78;

select * from personal_details;

alter table personal_details
add constraint age check(age<=78);

select* from personal_details;

--custom constraint that particular column not contain 'a1,''b1','check'
update personal_details
set name='New Name'
where name in('a1','b1','check');

select* from personal_details;
alter table personal_details
add constraint name check(name not in('a1','b1','check'));

select* from personal_details;

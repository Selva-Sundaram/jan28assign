use DotNet
create table Products(
ProductId int not null primary key identity (1,1),
Description varchar(40) not null unique,
Quantity int not null
check (Quantity=1 or quantity=5 or quantity=10)
default 1,
Price decimal (10,2)
check (price>=100 and price<=5000)
)

insert into Products values ('Dairy milk',10,1000)
insert into Products values ('Mouse pad',1,300)
insert into Products values ('Fashion clips',5,100)
insert into Products values ('Milky bar',10,500)
insert into Products values ('Preethi mixer',1,4000)
insert into Products values ('Clips',10,100)
insert into Products values ('Mobile Adapter',5,3000)
insert into Products values ('3/4 shorts',10,4000)
insert into Products values ('SS bat',1,5000)
insert into Products values ('Leather ball red',5,1500)
insert into Products values ('SS gloves',5,3000)

select * from Products
Update Products set price = price *1.1
from Products

--4 Delete record 
delete from products
where ProductId=11

--5 Alter the table with margin code
alter table products
add MarginCode char(1)
check (MarginCode='A' or MarginCode='B' or MarginCode=null)

--6 update few records
update Products
set MarginCode='A'
where productid < 7 

update products
set MarginCode = 'B'
where ProductId > 4

--7 Update all setqty to 10
update products
set Quantity = 10
where margincode = 'A'

update products
set Quantity = 5
where margincode = 'B' and Quantity=1

select * from Products
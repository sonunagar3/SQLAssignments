create database ineuron_assignment;
use ineuron_assignment;

#Linkedlin case study
create table technology(id integer , technology varchar(10));
insert into technology values(1, "DS"),("1", "Tableau"),
("1", "SQL"),("2", "R"),("2", "PowerBI"),("1", "Python");
select * from technology;

#required skills "Python","SQL","PowerBI"
select id from technology where technology in ("Python","SQL","PowerBI");
select id from technology where technology = "Python" and 
id in (select id from technology where technology = "SQL");

#Facebook Case study 
create table product_info(id int, product_name varchar(50));
create table product_likes(user_id int, product_id int, liked_date date);

#drop table product_info;

insert into product_info values(1001, "Blog"),("1002", "Youtubr"),
("1003", "Education");
select * from product_info;

insert into product_likes values(1,1001, "2024-06-29"),(2, 1003, "2024-06-27");
select * from product_likes;

SELECT pi.id, pi.product_name
FROM product_info pi
LEFT JOIN product_likes pl ON pi.id = pl.product_id
WHERE pl.liked_date IS NULL;

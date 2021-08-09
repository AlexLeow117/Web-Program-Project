drop database if exists YamiFoodRestaurant;
create database YamiFoodRestaurant;
use YamiFoodRestaurant;

create table category(
category_id int(10),
category_name varchar(250) NOT NULL,
primary key (category_id)
)engine=innodb;
insert into category values(1,'Drink');
insert into category values(2,'Rice');
insert into category values(3,'Soup');
insert into category values(4,'Noodle');
insert into category values(5,'Home Cooking');
insert into category values(6,'Seafood');
insert into category values(7,'Fried');
insert into category values(8,'Western Food');

create table products(
product_id int(10),
product_name varchar(250) NOT NULL,
category_id int(10),
price double(9,2) NOT NULL,
image varchar(250) NOT NULL,
primary key (product_id),
foreign key (category_id)references category(category_id)
)engine=innodb;

insert into products values(1, 'Traditional Chinese Medicine Stewed Chicken Soup',3, 40.00, 'images/chickensoup.jpg');
insert into products values(2, 'Braised Beef Noodles',4, 15.00, 'images/beefnoodles.jpg');
insert into products values(3, 'Watermelon Juice',1, 10.00, 'images/watermelon.jpg');
insert into products values(4, 'Boba Milktea',1, 15.00, 'images/milktea.jpg');
insert into products values(5, 'Orange Juice',1, 10.00, 'images/orangejuice.jpg');
insert into products values(6, 'Cocacola',1, 5.00, 'images/cola.jpg');
insert into products values(7, 'Ice Lemon Tea',1, 12.00, 'images/icelemontea.jpg');
insert into products values(8, 'Hot Coffee',1, 13.00, 'images/coffee.jpg');
insert into products values(9, 'Cappuccino',1, 15.00, 'images/kapucino.jpg');
insert into products values(10,'Overlord Burger Set',8, 25.00, 'images/img-04.jpg');
insert into products values(11,'Salmon dumplings with rice',2, 45.00, 'images/img-06.jpg');
insert into products values(12,'Seafood Bah Kut Teh',3, 30.00, 'images/bahkutteh.jpg');
insert into products values(13,'Authentic Hainanese Chicken Rice',2, 20.00, 'images/chickenrice.jpg');
insert into products values(14,'Tomyam Wudongmee',4, 20.00, 'images/wudongmee.jpg');
insert into products values(15,'Laksa Bihun',4, 18.00, 'images/laksa.jpg');
insert into products values(16,'Chestnut cake',5, 15.00, 'images/img-07.jpg');
insert into products values(17,'Bibimbap',2, 20.00, 'images/img-08.jpg');
insert into products values(18,'French grilled steak',8, 65.00, 'images/img-09.jpg');
insert into products values(19,'Tomato Pasta',4, 25.00, 'images/spaghetti.jpg');
insert into products values(20,'Roast Steak',8, 40.00, 'images/steak.jpg');
insert into products values(21,'Pizza',8, 15.00, 'images/pizza.jpg');
insert into products values(22,'Chicken Chop with Rice',2, 20.00, 'images/chickenchop.jpg');
insert into products values(23,'Nasi Lemak',2, 15.00, 'images/nasilemak.jpg');
insert into products values(24,'Omurice',5, 15.00, 'images/omurice.jpg');
insert into products values(25,'Char Kuey Teow',5, 12.00, 'images/charkueyteow.jpg');
insert into products values(26,'Black Pepper King Crab',6, 150.00, 'images/kingcrab.jpg');
insert into products values(27,'Korean Fried Chicken',7, 35.00, 'images/koreanfrieldchicken.jpg');
insert into products values(28,'Freanch Fries',7, 7.00, 'images/fries.jpg');
insert into products values(29,'Fried Squid',6, 25.00, 'images/friedsquid.jpg');
insert into products values(30,'Shrimp',6, 35.00, 'images/shrimp.jpg');





create table cartorder(
orderId int unsigned auto_increment,
orderDate date,
memId char(5) NOT NULL,
totalpricePurchase float(6,2) NOT NULL,
primary key (orderId)
)engine=innodb;


create table orderlist(
orderId int NULL,
proCode varchar(100),
pricePurchase float(6,2) NOT NULL,
quantity int unsigned NOT NULL
)engine=innodb;
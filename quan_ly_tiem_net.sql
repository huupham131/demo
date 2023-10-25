create database quan_ly_tiem_net;
use quan_ly_tiem_net;
create table computer(
id int primary key auto_increment,
brand varchar(20) not null,
position int unique not null
);
create table type_customer(
id int primary key auto_increment,
name varchar(30)
);
create table customer(
id int primary key auto_increment,
name varchar (45) not null,
phone_number varchar (45) not null,
email varchar (45),
id_type_customer int,
foreign key (id_type_customer) references type_customer(id)
);
create table service_user(
id int primary key ,
start_time datetime,
end_time datetime,
id_computer int,
id_customer int,
foreign key (id_computer) references computer(id),
foreign key (id_customer) references customer(id)
);
create table accompanied_service(
id int primary key,
`name` varchar(45) not null,
price double not null check(price>=0),
unit varchar(10) not null
);
create table service_detail(
id int primary key ,
total int,
id_service_user int,
id_accompanied_service int,
foreign key (id_service_user) references service_user(id),
foreign key (id_accompanied_service) references accompanied_service(id)
);
-- insert values
insert into type_customer
value
(1,'Vip'),
(2,'Member'),
(3,'Other');
insert into customer
value
(1,'Thuận','0213245678','thuan@gmail.com',1),
(2,'Tuấn','0123456678', 'tuan@gmail.com',2),
(3,'Tưởng','0123123155','tuong@gmail.com',3),
(4,'Quyền','0124157457','quyen@gmail.com',2);
insert into computer
value
(1,'Tàu',2),
(2,'Tàu',3),
(3,'Việt',1),
(4,'Hàn',5),
(5,'Tàu',4);
insert into accompanied_service
value
(1,'Nước ngọt',20000,'chai'),
(2,'Bánh mì',15000, 'Ổ'),
(3,'Mì tôm',10000, 'Tô');

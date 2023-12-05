
use zomato;
create table zomato.user3(
id int primary key auto_increment,
name varchar(30) not null,
email varchar(30) null,
phone int check(length(phone)=10)
);

create table zomato.useraddress(
id  int primary key auto_increment,
street varchar(40) not null,
loctation varchar(40) not null,
city varchar(40) not null,
state varchar(50) not null,
country varchar(30) default('India'),
userid int not null

);

alter table zomato.user3
add column gender varchar(40);

alter table zomato.user3
modify gender varchar(50);

select * from zomato.user3;

alter table zomato.user3
drop column  gender;


alter table user3
modify column email varchar(30) not null;

alter table zomato.user3
add constraint unique_name unique(name);

alter table zomato.user3
drop index unique_name;

alter table zomato.user3
add constraint user3_pk_id primary key(id);



alter table zomato.useraddress
add constraint fk_useraddress_user3_id foreign key(userid)references zomato.user3(id);

alter table zomato.useraddress
drop foreign key useraddress_ibfk_1;



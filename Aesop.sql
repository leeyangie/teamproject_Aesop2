-- UTF-8로 database 생성 --
create database Aesop default character set utf8 collate utf8_general_ci;
-- 데이터베이스 보기 --
show databases;
-- 데이터 베이스 사용 --
use Aesop;

-- update 가능하게 변경 --
set sql_safe_updates = 0;

-- Member 테이블 추가 --
CREATE TABLE member(
  email VARCHAR(100) PRIMARY KEY NOT NULL,
  pw VARCHAR(100) NOT NULL,
  name VARCHAR(30) NOT NULL,
  tel VARCHAR(20) default null,
  addr1 VARCHAR(100)default null,
  addr2 VARCHAR(100)default null,
  postcode VARCHAR(100)default null,
  birth date default null,
  point int default null,
  regDate timestamp NOT NULL default current_timestamp
);
drop table member;
drop table qna;
drop table review;
drop table sales;
drop table cart; 
drop table wishlist; 
select * from member;


-- QNA 테이블 추가 --
create table qna(no int auto_increment primary key, title varchar(200), content varchar(1000), lev int default 1, parno int default 0, 
hits int default 0, resdate timestamp default current_timestamp, id varchar(20), name varchar(100));
-- foreign키 추가 --
alter table qna add constraint fk_mem0 foreign key (id) references member(id);

-- Notice 테이블 추가 -- 
create table notice(nno int auto_increment primary key, title varchar(200), content varchar(1000), 
author varchar(20) default 'admin', vcnt int default 0, resdate timestamp default current_timestamp);


-- Product 테이블 추가 --
create table Product(pno int auto_increment primary key, category varchar(20) not null, pname varchar(100) not null,
com varchar(1000), price int default 1000, img1 varchar(300), img2 varchar(300), img3 varchar(300), category_sub varchar(20) not null);
-- category_sub 추가 --


-- ProductVO view 추가 --
create view productvo as (select p.pno as pno, p.category as category, p.category_sub as category_sub, p.pname as pname,
p.com as com, p.img1 as img1, p.img2 as img2, p.img3 as img3, avg(i.iprice) as iprice, max(i.oprice) as oprice,
sum(i.amount) as amount from product p, inventory i where p.pno=i.pno); 

-- CategoryVO view 추가 --
create view categoryVO as (select p.category as category, p.category_sub as category_sub, p.pno as pno, p.pname as pname from product p where p.pno=pno);
drop view categoryVO;


-- Review 테이블 추가 -- 
create table Review(email varchar(20), pno int, title varchar(200), content varchar(1000),
resdate timestamp default current_timestamp, img varchar(300), rate int);
-- Review(id) foreign키 추가 --
alter table review add constraint fk_mem1 foreign key (id) references member(id);
-- Review(pno) foreign키 추가 --
alter table review add constraint fk_pro1 foreign key (pno) references product(pno);


-- Inventory 테이블 추가 --
create table inventory(ino int auto_increment primary key, pno int, iprice int default 1000, oprice int default 1000,
amount int default 1, remark varchar(200), resdate timestamp default current_timestamp, foreign key(pno) references product(pno)); 
insert into inventory values(default, 12, 25000, 29000, 100, '재고 있음', '2025-06-07');
-- InventoryVO view추가 --
create view inventoryvo as (select i.ino as ino, i.pno as pno, p.pname as pname, avg(i.iprice) as iprice, max(i.oprice) as oprice, sum(i.amount) as amount, 
i.remark as remark, max(i.resdate) as resdate from inventory i, product p where i.pno=p.pno group by i.ino, p.pname, i.remark, i.pno);


-- Sales 테이블 추가 --
create table sales(sno int auto_increment primary key, pno int, amount int default 1, tot int, id varchar(20),
paymethod varchar(20), paynum varchar(30), addr varchar(300), tel varchar(100), delcom varchar(50), deltel varchar(50), 
delno varchar(50), delstatus varchar(20), st varchar(20));
-- Sales(id) foreign키 추가 --
alter table sales add constraint fk_mem2 foreign key (email) references member(email);
-- Sales(pno) foreign키 추가 --
alter table sales add constraint fk_pro2 foreign key (pno) references product(pno);
alter table sales change id email varchar(100);
desc sales;

select * from product;
-- 장바구니 테이블 추가 -- 
create table cart(cno int auto_increment primary key, id varchar(20), pno int, amount int, remark varchar(100));
-- 와래키 추가
alter table cart add constraint fk_mem3 foreign key (id) references member(id);
alter table cart add constraint fk_pro3 foreign key (pno) references product(pno);


-- wishList 테이블 추가 --
create table wishList(id varchar(20), pno int, wishId int primary key, qty int, regDate timestamp default current_timestamp);
-- wishList(id) foreign키 추가 --
alter table wishList add constraint fk_mem4 foreign key (id) references member(id);
-- wishList(pno) foreign키 추가 --
alter table wishList add constraint fk_pro4 foreign key (pno) references product(pno);

create table chatMessage(email varchar(100) primary key, message varchar(1000), timestamp timestamp default current_timestamp);

commit;


create table Search;




drop table member;

create table member (
userid varchar2(50) not null primary key,
passwd varchar(64) not null,
name varchar2(50) not null,
email varchar2(50),
hp varchar2(50),
zipcode varchar2(7),
address1 varchar2(200),
address2 varchar2(200),
join_date date default sysdate
);

insert into member (userid,passwd,name,email) values
('kim','1234','김철수','kim@naver.com');
insert into member (userid,passwd,name,email) values
('hong','1234','홍길동','hong@nate.com');
insert into member (userid,passwd,name,email) values
('choi','1234','최민수','choi@nate.com');

select * from member;

commit;


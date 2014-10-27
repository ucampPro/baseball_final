drop table customer cascade constraints;

create table customer(
	cust_id varchar2(20) primary key,
	cust_name varchar2(20),
	cust_pwd varchar2(20),
	address varchar2(100)
);

insert into customer values('admin','admin','admin','admin');
insert into customer values('aaaa','aaaa','aaaa','aaaa');
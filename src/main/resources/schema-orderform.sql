drop table if exists catalog_item;
create table catalog_item (
	item_code varchar(30) not null,
	item_short_descr varchar(50) not null,
	num_volumes int default 1,
	sort_order int not null default 0,
	author varchar(100),
	price_us float,
	active char(1) default 'Y',
	primary key (item_code)
);

drop table if exists catalog_type;
-- Book / Audio CD
create table catalog_type (
	catalog_type_id varchar(10) not null,
	catalog_type_name varchar(30) not null,
	primary key (catalog_type_id)
);

drop table if exists catalog_category;
-- Prophecy / Study Bibles / Science & the Bible / etc...
create table catalog_category (
	category_code varchar(30) not null,
	category_name varchar(50) not null,
	primary key (category_code)
);

drop table if exists catalog_type_category_xref;
-- Book - Prophecy / CD - Old Testament Bible Study Series
create table catalog_type_category_xref (
	catalog_type_id varchar(10) not null,
	category_code varchar(30) not null,
	primary key (catalog_type_id, category_code)
);

drop table if exists category_catalog_item_xref;
-- Prophecy - Creation and the End Times
create table category_catalog_item_xref (
	category_code varchar(30) not null,
	catalog_item varchar(30) not null,
	primary key (category_code, catalog_item)
);

drop sequence if exists order_id_seq;
create sequence order_id_seq start with 1;
-- select order_id_seq.nextval from dual;

drop table if exists order_form;
create table order_form (
	order_id int not null,
	item_code varchar(30) not null,
	price_us_at_purchase float not null,
	quantity int not null,
	primary key (order_id, item_code)
);

drop table if exists customer_order;
create table customer_order (
	order_id int not null,
	prefix varchar(10),
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	address1 varchar(50) not null,
	address2 varchar(50),
	city varchar(50) not null,
	state_province varchar(50) not null,
	zip_postal_code varchar(20) not null,
	country_code char(2) not null,
	email varchar2(50) not null,
	church_name varchar(50),
	order_date date not null,
	primary key (order_id)
);


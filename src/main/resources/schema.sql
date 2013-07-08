DROP TABLE IF EXISTS CONTACT;
CREATE TABLE CONTACT (
ID INT NOT NULL AUTO_INCREMENT
, FIRST_NAME VARCHAR(60) NOT NULL
, LAST_NAME VARCHAR(40) NOT NULL
, BIRTH_DATE DATE
, DESCRIPTION VARCHAR(2000)
, PHOTO BLOB
, VERSION INT NOT NULL DEFAULT 0
, UNIQUE UQ_CONTACT_1 (FIRST_NAME, LAST_NAME)
, PRIMARY KEY (ID)
);


DROP TABLE IF EXISTS page_fragment;
create table page_fragment (
	page_fragment_id int not null auto_increment,
	title varchar(120) not null,
	version int not null default 0,
	body clob,
	primary key (page_fragment_id)
);

DROP TABLE IF EXISTS church;
create table church (
	church_id int not null auto_increment,
	church_path varchar(120) not null,
	enabled int default 1,
	sort_order int not null default 0,	
	version int not null default 0,
	primary key (church_id)
);

drop table if exists church_details;
create table church_details (
	church_id int not null,
	locale varchar(10) not null,
	church_name varchar(120) not null,
	primary key (church_id, locale)
);

drop table if exists church_content;
create table church_content (
	church_id int not null,
	locale varchar(10) not null,
	title varchar(200) not null,
	body longtext,
	primary key (church_id, locale)
);

DROP TABLE IF EXISTS church_org;
create table church_org (
	church_org_id int not null auto_increment,
	church_org_path varchar(120) not null,
	sort_order int not null default 0,	
	version int not null default 0,
	primary key (church_org_id)
);

drop table if exists church_org_details;
create table church_org_details (
	church_org_id int not null,
	locale varchar(10) not null,
	church_org_name varchar(120) not null,
	primary key (church_org_id, locale)
);

drop table if exists church_hierarchy;
create table church_hierarchy (
	parent_church_org_id int,
	church_org_id int,
	church_id int,
);

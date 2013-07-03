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


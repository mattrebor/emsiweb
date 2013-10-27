


-- remove address, latitude, longitude.
--   these become key values in church_detail/church_detail_key
DROP TABLE IF EXISTS church;
create table church (
	church_id int not null auto_increment,
	church_path varchar(120) not null,
	enabled int default 1,
	sort_order int not null default 0,
	address varchar(200),
	latitude double,
	longitude double,
	version int not null default 0,
	primary key (church_id)
);



drop table if exists church_detail;
create table church_detail (
	church_id int not null,
	locale varchar(10) not null,
	key varchar(30) not null,
	value varchar(255) not null,
	last_mod_by varchar(20),
	last_mod_date date,
	primary key (church_id, locale, key)
);

-- create church_detail_key
-- values for keys:
--   worship_address
--   worship_address_prefix
--   worship_address_suffix
--   office_address
--   worship_address_latitude
--   worship_address_longitude
--   established_date
--   church_detail_name
--   church_detail_phone1
--   church_detail_phone2
--   church_detail_fax
--   church_detail_email
--   church_detail_skype
--   meta_description_tag01
--   meta_description_tag02
--   ...
--   meta_description_tag10
drop table if exists church_detail_key;
create table church_detail_key (
	church_detail_key varchar(30) not null,
	descr varchar(255) not null,
	mandatory int default 1,
	primary key (church_detail_key)
);


-- create sequence for minister table
drop sequence if exists minister_id_seq;
create sequence minister_id_seq;

-- create minister table
-- with primary key minister_id and locale
drop table if exists minister;
create table minister (
	minister_id int not null,
	enabled int default 1,
	primary key (minister_id)
);

-- create minister_detail table
-- similar to church_detail table
-- key value columns
drop table if exists minister_detail;
create table minister_detail(
	minister_id int not null,
	locale varchar(10) not null,
	minister_detail_key varchar(30) not null,
	value varchar(255) null,
	last_mod_by varchar(20),
	last_mod_date date,
	primary key (minister_id, locale, minister_detail_key)
);

-- create minister_detail_key table
-- values for keys:
--   title_id
--   name
--   phone1
--   phone2
--   email
--   skype
drop table if exists minister_detail_key;
create table minister_detail_key (
	minister_detail_key varchar(30) not null,
	short_descr varchar(20) not null,
	long_descr varchar(255) not null,
	display_order int default 0,
	edit_htmlctrl_type varchar(20) default 'text',
	mandatory int default 1,
	language_agnostic int default 0,
	primary key (minister_detail_key)
);


-- create church_minister cross-referecne table
--  church_id
--  minister_id
--  position_id
drop table if exists church_minister;
create table church_minister (
	church_id int not null,
	minister_id int not null,
	position_id varchar(20) not null,
	sort_order int not null default 0,
	last_mod_by varchar(20),
	last_mod_date date,
	primary key (church_id, minister_id, position_id)
);


-- create position_key table
--  position_id
--  locale
--  name
drop table if exists position_key;
create table position_key (
	position_id varchar(20) not null,
	name varchar(50) not null,
	primary key (position_id)
);

drop table if exists church_content;
create table church_content (
	church_id int not null,
	page_id varchar(30) not null,
	locale varchar(10) not null,
	title varchar(255) not null,
	body longtext,
	last_mod_by varchar(20),
	last_mod_date date,
	primary key (church_id, page_id, locale)
);

-- create page_id_key table
-- columns:
--   page_id
--   order
--   
-- values for keys:
--   intro
--   minister
--   news
--   schedule
--   contactus
drop table if exists page_id_key;
create table page_id_key (
	page_id varchar(30) not null,
	sort_order int not null default 0,
	primary key (page_id)
);

-- create page_template table
--   page_id (pk)
--   locale (pk)
--   template body longtext
drop table if exists page_template;
create table page_template (
	page_id varchar(30) not null,
	locale varchar(10) not null,
	template longtext not null,
	last_mod_by varchar(20),
	last_mod_date date,
	primary key (page_id, locale)
);

DROP TABLE IF EXISTS church_org;
create table church_org (
	church_org_id int not null auto_increment,
	church_org_path varchar(120) not null,
	enabled int default 1,	
	sort_order int not null default 0,	
	version int not null default 0,
	primary key (church_org_id)
);

drop table if exists church_org_detail;
create table church_org_detail (
	church_org_id int not null,
	locale varchar(10) not null,
	key varchar(30) not null,
	value varchar(255) not null,
	primary key (church_org_id, locale, key)
);

drop table if exists church_hierarchy;
create table church_hierarchy (
	parent_entity_id int,
	church_org_id int,
	church_id int
);

drop table if exists locales;
create table locales (
	locale varchar(10) not null,
	default int default 0,
	primary key (locale)
);

drop view if exists localized_church;
create view localized_church
as select distinct c.church_id, l.locale, c.church_path, c.address, c.latitude, c.longitude, c.version, c.enabled, c.sort_order
from church c, locales l;


drop view if exists localized_church_org;
create view localized_church_org
as select distinct c.church_org_id, l.locale, c.church_org_path, c.version, c.enabled, c.sort_order
from church_org c, locales l;

drop view if exists localized_church_hierarchy;
create view localized_church_hierarchy
as select distinct l.locale, h.parent_entity_id, h.church_org_id, h.church_id
from church_hierarchy h, locales l;


-- news
--  title
--  start_date
--  end_date
--  short_description (long text)
--  long_description (long text)
--  enabled
drop table if exists news;
create table news (
	news_id int not null auto_increment,
	locale varchar(10) not null,
	title varchar(255) not null,
	sort_date date not null,
	short_description longtext not null,
	long_description longtext,
	enabled int not null default 1,
	last_mod_by varchar(20),
	last_mod_date date,
	primary key (news_id, locale)
);


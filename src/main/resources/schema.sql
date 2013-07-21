



DROP TABLE IF EXISTS church;
create table church (
	church_id int not null auto_increment,
	church_path varchar(120) not null,
	enabled int default 1,
	sort_order int not null default 0,	
	version int not null default 0,
	primary key (church_id)
);

drop table if exists church_detail;
create table church_detail (
	church_id int not null,
	locale varchar(10) not null,
	key varchar(30) not null,
	value varchar(255) not null,
	primary key (church_id, locale, key)
);

drop table if exists church_content;
create table church_content (
	church_id int not null,
	page_id varchar(30) not null,
	locale varchar(10) not null,
	title varchar(255) not null,
	body longtext,
	primary key (church_id, page_id, locale)
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
	primary key (locale)
);

drop view if exists localized_church;
create view localized_church
as select distinct c.church_id, l.locale, c.church_path, c.version, c.enabled, c.sort_order
from church c, locales l;


drop view if exists localized_church_org;
create view localized_church_org
as select distinct c.church_org_id, l.locale, c.church_org_path, c.version, c.enabled, c.sort_order
from church_org c, locales l;

drop view if exists localized_church_hierarchy;
create view localized_church_hierarchy
as select distinct l.locale, h.parent_entity_id, h.church_org_id, h.church_id
from church_hierarchy h, locales l

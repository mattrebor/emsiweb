INSERT INTO PUBLIC.CHURCH_ORG(CHURCH_ORG_ID, CHURCH_ORG_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(17, 'southafrica', 1, 0, 0);
INSERT INTO PUBLIC.CHURCH_ORG_DETAIL(CHURCH_ORG_ID, LOCALE, KEY, VALUE) VALUES(17, 'en', 'menu_name', 'CEM in South Africa');          
INSERT INTO PUBLIC.CHURCH_ORG_DETAIL(CHURCH_ORG_ID, LOCALE, KEY, VALUE) VALUES(17, 'zh', 'menu_name', '南非分會');          

delete from public.church_hierarchy where parent_entity_id = 1 and church_org_id = 16;
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(1, 16, NULL);
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(16, 17, NULL);


update church_hierarchy
	set parent_entity_id = 17
	where parent_entity_id = 16
	and church_id is not null;


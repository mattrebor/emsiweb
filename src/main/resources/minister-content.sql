INSERT INTO MINISTER_DETAIL_KEY(
	MINISTER_DETAIL_KEY
	, SHORT_DESCR
	, LONG_DESCR
	, DISPLAY_ORDER
	, EDIT_HTMLCTRL_TYPE
	, MANDATORY
	, LANGUAGE_AGNOSTIC
) VALUES (
	'title'
	, 'Title'
	, 'Title'
	, 10
	, 'DROPDOWN'
	, 0
	, 0
);

INSERT INTO MINISTER_DETAIL_KEY(
	MINISTER_DETAIL_KEY
	, SHORT_DESCR
	, LONG_DESCR
	, DISPLAY_ORDER
	, EDIT_HTMLCTRL_TYPE
	, MANDATORY
	, LANGUAGE_AGNOSTIC
) VALUES (
	'name'
	, 'Minister Name'
	, 'Minister Name'
	, 20
	, 'TEXT'
	, 1
	, 0
);

INSERT INTO MINISTER_DETAIL_KEY(
	MINISTER_DETAIL_KEY
	, SHORT_DESCR
	, LONG_DESCR
	, DISPLAY_ORDER
	, EDIT_HTMLCTRL_TYPE
	, MANDATORY
	, LANGUAGE_AGNOSTIC
) VALUES (
	'phone1'
	, 'Phone#1'
	, 'Phone#1'
	, 30
	, 'TEXT'
	, 0
	, 1
);

INSERT INTO MINISTER_DETAIL_KEY(
	MINISTER_DETAIL_KEY
	, SHORT_DESCR
	, LONG_DESCR
	, DISPLAY_ORDER
	, EDIT_HTMLCTRL_TYPE
	, MANDATORY
	, LANGUAGE_AGNOSTIC
) VALUES (
	'phone2'
	, 'Phone#2'
	, 'Phone#2'
	, 40
	, 'TEXT'
	, 0
	, 1
);

INSERT INTO MINISTER_DETAIL_KEY(
	MINISTER_DETAIL_KEY
	, SHORT_DESCR
	, LONG_DESCR
	, DISPLAY_ORDER
	, EDIT_HTMLCTRL_TYPE
	, MANDATORY
	, LANGUAGE_AGNOSTIC
) VALUES (
	'email'
	, 'Email'
	, 'Email Address'
	, 50
	, 'TEXT'
	, 0
	, 1
);

INSERT INTO MINISTER_DETAIL_KEY(
	MINISTER_DETAIL_KEY
	, SHORT_DESCR
	, LONG_DESCR
	, DISPLAY_ORDER
	, EDIT_HTMLCTRL_TYPE
	, MANDATORY
	, LANGUAGE_AGNOSTIC
) VALUES (
	'skype'
	, 'Skype Id'
	, 'Skype Id'
	, 60
	, 'TEXT'
	, 0
	, 1
);

INSERT INTO MINISTER(MINISTER_ID, ENABLED) VALUES (nextval('minister_id_seq'), 1);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'name', 'Moses Yang', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'name', 'Moses Yang', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'title', 'Rev', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'title', 'Rev', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'phone1', '555-555-5555', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'phone1', '555-555-5555', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'phone2', '999-999-9999', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'phone2', '999-999-9999', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'email', 'moses@test.com', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'email', 'moses@test.com', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'skype', null, 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'skype', null, 'admin', sysdate);

INSERT INTO MINISTER(MINISTER_ID, ENABLED) VALUES (nextval('minister_id_seq'), 1);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'name', 'Zion Wu', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'name', 'Zion Wu', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'title', 'Rev', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'title', 'Rev', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'phone1', '111-111-1111', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'phone1', '111-111-1111', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'phone2', '222-222-2222', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'phone2', '222-222-2222', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'email', 'zionwu@test.com', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'email', 'zionwu@test.com', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'skype', 'zionwu', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'skype', 'zionwu', 'admin', sysdate);

INSERT INTO MINISTER(MINISTER_ID, ENABLED) VALUES (nextval('minister_id_seq'), 1);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'name', 'Patty Chien', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'name', 'Patty Chien', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'title', 'Ev', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'title', 'Ev', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'phone1', '333-333-3333', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'phone1', '333-333-3333', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'phone2', '444-444-4444', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'phone2', '444-444-4444', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'email', 'patty@test.com', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'email', 'patty@test.com', 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'en', 'skype', null, 'admin', sysdate);
INSERT INTO MINISTER_DETAIL(MINISTER_ID, LOCALE, MINISTER_DETAIL_KEY, VALUE, LAST_MOD_BY, LAST_MOD_DATE) VALUES (currval('minister_id_seq'), 'zh', 'skype', null, 'admin', sysdate);


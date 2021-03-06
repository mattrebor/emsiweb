INSERT INTO EBI_COUNTRY(COUNTRY, DESCRIPTION) VALUES ('AMERICA', 'America');
INSERT INTO EBI_COUNTRY(COUNTRY, DESCRIPTION) VALUES ('EUROPE', 'Europe');

INSERT INTO EBI_ACADEMIC_YEAR (ACADEMIC_YEAR, COUNTRY, DESCRIPTION) VALUES ('2013-2014', 'AMERICA', '2013 - 2014');

INSERT INTO EBI_ACADEMIC_QTR (ACADEMIC_YEAR, COUNTRY, QUARTER, DESCRIPTION, IS_ACTIVE, MOD_BY, MOD_DATE) VALUES ('2013-2014', 'AMERICA', 'WINTER', 'Winter Quarter (12/2/2013 - 2/21/2014)', 1, 'admin', sysdate);
INSERT INTO EBI_ACADEMIC_QTR (ACADEMIC_YEAR, COUNTRY, QUARTER, DESCRIPTION, IS_ACTIVE, MOD_BY, MOD_DATE) VALUES ('2013-2014', 'AMERICA', 'SPRING', 'Spring Quarter (xx/xx/2014 - xx/xx/2014)', 0, 'admin', sysdate);

INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Monday - Tuesday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Monday - Wednesday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Monday - Thursday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Monday - Friday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Tuesday - Wednesday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Tuesday - Thursday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Tuesday - Friday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Monday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Tuesday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Wednesday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Thursday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Friday');
INSERT INTO EBI_CLASS_DAYS (CLASS_DAYS) VALUES ('Thursday/Friday');

INSERT INTO EBI_COURSE (
	ACADEMIC_YEAR, COUNTRY, QUARTER, ROW_NUM
	, COURSE_LINE1_EN, COURSE_LINE2_EN, COURSE_LINE3_EN
	, COURSE_LINE1_ZH, COURSE_LINE2_ZH
	, IS_INTENSIVE_COURSE, START_DATE, END_DATE
	, CLASS_DAYS, CLASS_TIME1, CLASS_TIME2
	, PROFESSOR_EN, PROFESSOR_ZH
	, MOD_BY, MOD_DATE
	) VALUES (
	'2013-2014', 'AMERICA', 'WINTER', 1
	, 'Doctrine of Salvation (3)', NULL, NULL
	, STRINGDECODE('\u6551\u00a0\u6069\u00a0\u8AD6'), NULL
	, 0, DATE '2014-01-06', DATE '2014-02-18'
	, 'Monday - Tuesday', '10:00 a.m. - 12:00 noon', NULL
	, 'Moses Yang', NULL
	, 'admin', sysdate
);
INSERT INTO EBI_COURSE (
	ACADEMIC_YEAR, COUNTRY, QUARTER, ROW_NUM
	, COURSE_LINE1_EN, COURSE_LINE2_EN, COURSE_LINE3_EN
	, COURSE_LINE1_ZH, COURSE_LINE2_ZH
	, IS_INTENSIVE_COURSE, START_DATE, END_DATE
	, CLASS_DAYS, CLASS_TIME1, CLASS_TIME2
	, PROFESSOR_EN, PROFESSOR_ZH
	, MOD_BY, MOD_DATE
	) VALUES (
	'2013-2014', 'AMERICA', 'WINTER', 2
	, 'Personal Evangelism (2)', NULL, NULL
	, STRINGDECODE('\u500B\u00a0\u4EBA\u00a0\u4F48\u00a0\u9053'), NULL
	, 0, DATE '2014-01-08', DATE '2014-02-19'
	, 'Wednesday', '10:00 a.m. - 12:00 noon', NULL
	, 'Moses Yang', NULL
	, 'admin', sysdate
);
INSERT INTO EBI_COURSE (
	ACADEMIC_YEAR, COUNTRY, QUARTER, ROW_NUM
	, COURSE_LINE1_EN, COURSE_LINE2_EN, COURSE_LINE3_EN
	, COURSE_LINE1_ZH, COURSE_LINE2_ZH
	, IS_INTENSIVE_COURSE, START_DATE, END_DATE
	, CLASS_DAYS, CLASS_TIME1, CLASS_TIME2
	, PROFESSOR_EN, PROFESSOR_ZH
	, MOD_BY, MOD_DATE
	) VALUES (
	'2013-2014', 'AMERICA', 'WINTER', 3
	, 'Isaiah 2 (3)', NULL, NULL
	, STRINGDECODE('\u4EE5\u00a0\u8CFD\u00a0\u4E9E\u00a0\u66F82'), NULL
	, 1, DATE '2013-12-10', DATE '2013-12-13'
	, 'Tuesday - Friday', '9:00 a.m. - 12:00 noon', '1:00 p.m. - 4:00 p.m.'
	, 'Gordon Franz', NULL
	, 'admin', sysdate
);
INSERT INTO EBI_COURSE (
	ACADEMIC_YEAR, COUNTRY, QUARTER, ROW_NUM
	, COURSE_LINE1_EN, COURSE_LINE2_EN, COURSE_LINE3_EN
	, COURSE_LINE1_ZH, COURSE_LINE2_ZH
	, IS_INTENSIVE_COURSE, START_DATE, END_DATE
	, CLASS_DAYS, CLASS_TIME1, CLASS_TIME2
	, PROFESSOR_EN, PROFESSOR_ZH
	, MOD_BY, MOD_DATE
	) VALUES (
	'2013-2014', 'AMERICA', 'WINTER', 4
	, 'Revelation (3)', NULL, NULL
	, STRINGDECODE('\u5553\u00a0\u793A\u00a0\u9304'), NULL
	, 0, DATE '2014-02-10', DATE '2014-02-14'
	, 'Monday - Friday', '9:00 a.m. - 12:00 noon', '1:00 p.m. - 3:00 p.m.'
	, 'D.A. Waite', NULL
	, 'admin', sysdate
);
INSERT INTO EBI_COURSE (
	ACADEMIC_YEAR, COUNTRY, QUARTER, ROW_NUM
	, COURSE_LINE1_EN, COURSE_LINE2_EN, COURSE_LINE3_EN
	, COURSE_LINE1_ZH, COURSE_LINE2_ZH
	, IS_INTENSIVE_COURSE, START_DATE, END_DATE
	, CLASS_DAYS, CLASS_TIME1, CLASS_TIME2
	, PROFESSOR_EN, PROFESSOR_ZH
	, MOD_BY, MOD_DATE
	) VALUES (
	'2013-2014', 'AMERICA', 'WINTER', 5
	, 'Chorus (1)', NULL, NULL
	, STRINGDECODE('\u5408\u00a0\u5531'), NULL
	, 0, DATE '2013-12-05', DATE '2014-02-20'
	, 'Thursday', '10:00 a.m. - 12:00 noon', NULL
	, 'Jing Huang', NULL
	, 'admin', sysdate
);
INSERT INTO EBI_COURSE (
	ACADEMIC_YEAR, COUNTRY, QUARTER, ROW_NUM
	, COURSE_LINE1_EN, COURSE_LINE2_EN, COURSE_LINE3_EN
	, COURSE_LINE1_ZH, COURSE_LINE2_ZH
	, IS_INTENSIVE_COURSE, START_DATE, END_DATE
	, CLASS_DAYS, CLASS_TIME1, CLASS_TIME2
	, PROFESSOR_EN, PROFESSOR_ZH
	, MOD_BY, MOD_DATE
	) VALUES (
	'2013-2014', 'AMERICA', 'WINTER', 6
	, 'Sight-Singing (1)', NULL, NULL
	, STRINGDECODE('\u8A66\u00a0\u5531'), NULL
	, 0, DATE '2013-12-05', DATE '2014-02-20'
	, 'Thursday', '1:00 p.m. - 2:00 p.m.', NULL
	, 'Jing Huang', NULL
	, 'admin', sysdate
);
INSERT INTO EBI_COURSE (
	ACADEMIC_YEAR, COUNTRY, QUARTER, ROW_NUM
	, COURSE_LINE1_EN, COURSE_LINE2_EN, COURSE_LINE3_EN
	, COURSE_LINE1_ZH, COURSE_LINE2_ZH
	, IS_INTENSIVE_COURSE, START_DATE, END_DATE
	, CLASS_DAYS, CLASS_TIME1, CLASS_TIME2
	, PROFESSOR_EN, PROFESSOR_ZH
	, MOD_BY, MOD_DATE
	) VALUES (
	'2013-2014', 'AMERICA', 'WINTER', 7
	, 'Voice (1)', NULL, NULL
	, STRINGDECODE('\u8072\u00a0\u6A02'), NULL
	, 0, DATE '2013-12-05', DATE '2014-02-20'
	, 'Thursday/Friday', '(Individually Arranged)', NULL
	, 'Jing Huang', NULL
	, 'admin', sysdate
);

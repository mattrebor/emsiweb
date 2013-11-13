drop table if exists ebi_course;

drop table if exists ebi_academic_qtr;

drop table if exists ebi_academic_year;

drop table if exists ebi_country;
-- should change this as europe is not a country...
CREATE TABLE ebi_country (
   country       varchar(30) NOT NULL,
   description   varchar(30) NOT NULL,
   PRIMARY KEY (country)
);

-- e.g.: academic_year = '2013-2014'
-- e.g.: description = '2013 - 2014'
CREATE TABLE ebi_academic_year (
   academic_year   varchar(9) NOT NULL,
   country         varchar(30) NOT NULL,
   description     varchar(20) NOT NULL,
   PRIMARY KEY (academic_year, country)
);

CREATE TABLE ebi_academic_qtr (
   academic_year   varchar(9) NOT NULL,
   country         varchar(30) NOT NULL,
   quarter         varchar(6) NOT NULL,
   description     varchar(50) NOT NULL,
   is_active       int NOT NULL,
   mod_by          varchar(20),
   mod_date        timestamp,
   PRIMARY KEY (academic_year, country, quarter),
   FOREIGN KEY (academic_year, country) REFERENCES ebi_academic_year(academic_year, country)
);

drop table if exists ebi_class_days;
CREATE TABLE ebi_class_days (
	class_days varchar(30) NOT NULL,
	PRIMARY KEY (class_days)
);

CREATE TABLE ebi_course (
   academic_year          varchar(9) NOT NULL,
   country                varchar(30) NOT NULL,
   quarter                varchar(6) NOT NULL,
   row_num                int NOT NULL,
   course_line1_en        varchar(50) NOT NULL,
   course_line2_en        varchar(50),
   course_line3_en        varchar(50),
   course_line1_zh        varchar(20) NOT NULL,
   course_line2_zh        varchar(20),
   is_intensive_course    int NOT NULL,
   start_date             date NOT NULL,
   end_date               date NOT NULL,
   class_days             varchar(30),
   class_time1            varchar(40) NOT NULL,
   class_time2            varchar(40),
   professor_en           varchar(30) NOT NULL,
   professor_zh           varchar(20),
   mod_by                 varchar(20),
   mod_date               timestamp,
   PRIMARY KEY (academic_year, country, quarter, row_num),
   FOREIGN KEY (academic_year, country, quarter) REFERENCES ebi_academic_qtr (academic_year, country, quarter)
);


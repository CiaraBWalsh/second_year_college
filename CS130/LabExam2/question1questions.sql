DROP TABLE IF EXISTS HAS CASCADE;
DROP TABLE IF EXISTS Company CASCADE ; 

create table Company (
	CompanyID VARCHAR(50)  NOT NULL,
	CompanyName VARCHAR(50)  NOT NULL,
	CompanyLocation VARCHAR(50)  NOT NULL,
	CONSTRAINT Company_PKEY PRIMARY KEY (CompanyID)
);
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('RV16', 'Muxo', 'Pennsylvania');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('HG47', 'Quaxo', 'New York');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('AZ33', 'Aivee', 'California');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('WU31', 'Eazzy', 'California');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('QQ75', 'Lazzy', 'California');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('CN86', 'Linkbuzz', 'Florida');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('RS19', 'Abatz', 'Texas');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('IF87', 'Voonder', 'Alabama');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('GV84', 'Zoozzy', 'Minnesota');
insert into Company (CompanyID, CompanyName, CompanyLocation) values ('MU19', 'Skidoo', 'Florida');


DROP TABLE IF EXISTS VACANCIES CASCADE ;
create table Vacancies (
	VacancyID VARCHAR(50)  NOT NULL,
	VacancyDesc VARCHAR(18) NOT NULL,
	Language VARCHAR(11) NOT NULL,
	Salary INT NOT NULL,
	CONSTRAINT Vacancies_PKEY PRIMARY KEY(VacancyID)
);
insert into Vacancies (VacancyID, VacancyDesc, Language, Salary) values ('P77', 'Graduate Developer', 'SPSS', 70201);
insert into Vacancies (VacancyID, VacancyDesc, Language, Salary) values ('PX7', 'Software Engineer', 'C#', 49747);
insert into Vacancies (VacancyID, VacancyDesc, Language, Salary) values ('P73', 'Senior Developer', 'Linux Admin', 39625);
insert into Vacancies (VacancyID, VacancyDesc, Language, Salary) values ('P72', 'Systems Admin', 'Javascript', 74758);
insert into Vacancies (VacancyID, VacancyDesc, Language, Salary) values ('PX9', 'Graduate Developer', 'Java', 55520);
insert into Vacancies (VacancyID, VacancyDesc, Language, Salary) values ('P78', 'Senior Developer', 'C++', 71993);
insert into Vacancies (VacancyID, VacancyDesc, Language, Salary) values ('PX2', 'Buisness Analyst', 'SPSS', 35941);
insert into Vacancies (VacancyID, VacancyDesc, Language, Salary) values ('P37', 'Senior Developer', 'Javascript', 72912);

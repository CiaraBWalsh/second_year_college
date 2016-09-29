create table has
(
CompanyID varchar(50) not null references Company(CompanyID),
VacancyID varchar(50) not null references Vacancies(VacancyID),
Constraint has_pkey Primary Key(CompanyID,VacancyID)
)
insert into has(CompanyID,VacancyID) values ('AZ33','P72')
insert into has(CompanyID,VacancyID) values ('AZ33','P37')
insert into has(CompanyID,VacancyID) values ('IF87','P73')
insert into has(CompanyID,VacancyID) values ('IF87','P37')
insert into has(CompanyID,VacancyID) values ('GV84','PX7')
insert into has(CompanyID,VacancyID) values ('CN86','PX2')
insert into has(CompanyID,VacancyID) values ('CN86','P72')
insert into has(CompanyID,VacancyID) values ('CN86','P77')
insert into has(CompanyID,VacancyID) values ('CN86','PX9')
insert into has(CompanyID,VacancyID) values ('HG47','PX7')
insert into has(CompanyID,VacancyID) values ('HG47','P73')
insert into has(CompanyID,VacancyID) values ('RV16','P77')
Select * from has

create table logons (
LogonID integer not null,
LogonName varchar(100) not null,
LogonTime timestamp not null,
constraint logon_pkey primary key (LogonID)
)
insert into logons (LogonID, LogonName,LogonTime) values (1,'John78',now())
insert into logons (LogonID, LogonName,LogonTime) values (2,'Alice987',now())
insert into logons (LogonID, LogonName,LogonTime) values (3,'Viking36',now())
insert into logons (LogonID, LogonName,LogonTime) values (4,'NZ189',now())
insert into logons (LogonID, LogonName,LogonTime) values (5,'Star1876',now())
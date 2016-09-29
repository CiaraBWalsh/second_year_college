create table Question1
(
RegionID integer,
Region varchar(100) not null,
BaseYear integer not null,
Year1990 integer not null,
Year2012 integer not null,
constraint Question1_pkey primary key (Region)
)
insert into Question1 ( RegionID, Region, BaseYear, Year1990, Year2012) values
(18, 'European Union(15)', 4266830, 4266830, 3622922)
insert into Question1 ( RegionID, Region, BaseYear, Year1990, Year2012) values
(123, 'European Union(28)', 5626260, 5626260, 4544224)
insert into Question1 ( RegionID, Region, BaseYear, Year1990, Year2012) values
(145, 'Finland', 70329, 70329, 60966)
insert into Question1 ( RegionID, Region, BaseYear, Year1990, Year2012) values
(23, 'France', 560384, 560384, 496396)
insert into Question1 ( RegionID, Region, BaseYear, Year1990, Year2012) values
(34, 'Germany', 1248049, 1248049, 939083)
insert into Question1 ( RegionID, Region, BaseYear, Year1990, Year2012) values
(12, 'Ireland', 55246, 55246, 58531)
create table Station (
StationID varchar(100) not null primary key,
Station varchar(100) not null,
Zone integer not null,
Borough varchar(100),
Opened date not null,
Passengers real not null
)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('MG1','Moorgate',1,'City of London','1865-12-23',25.9)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('MN1','Monument',1,'City of London','1884-10-06',52.31)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('NH1','Notting Hill Gate',2,'Kensington and Chelsea','1868-10-01',17.4)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('HWT5','Heathrow Terminal 5',6,'Hillingdon','2008-03-27',4.22)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('STWK','Southwark',1,'Southwark','1999-09-24',14.15)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('CN1','Canning Town',3,'Newham','1999-05-14',10.1)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('S7','Seven Sisters',3,'Haringey','1968-09-01',15.67)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('E1','Euston',1,'Camden','1907-06-22',41.33)
insert into Station (StationID,Station,Zone,Borough,Opened,Passengers) values ('GP','Green Park',1,'City of Westminster','1906-12-15',39.83)


create table TransportLine (
LineID varchar(100) not null primary key,
LineName varchar(100) not null,
Length integer not null,
NumStations integer not null
)
insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L1','Metropolitan',67,34)

insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L2','Northern',58,50)

insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L3','Circle',27,36)

insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L4','Hammersmith and City',25,29)

insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L5','District',64,60)

insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L6','Central',74,49)

insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L7','Picadilly',77,53)

insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L8','Jubilee',36,27)

insert into TransportLine (LineID,LineName,Length,NumStations) 
values ('L9','Victoria',21,16)


create table IsOn (
StationID varchar not null references Station(StationID),
LineID varchar not null references TransportLine(LineID),
Constraint IsOn_pkey primary key (StationID,LineID)
)
insert into IsOn (StationID,LineID) values ('MG1','L1')
insert into IsOn (StationID,LineID) values ('MG1','L2')
insert into IsOn (StationID,LineID) values ('MG1','L3')
insert into IsOn (StationID,LineID) values ('MN1','L3')
insert into IsOn (StationID,LineID) values ('MN1','L5')
insert into IsOn (StationID,LineID) values ('NH1','L6')
insert into IsOn (StationID,LineID) values ('NH1','L5')
insert into IsOn (StationID,LineID) values ('NH1','L3')
insert into IsOn (StationID,LineID) values ('HWT5','L7')
insert into IsOn (StationID,LineID) values ('STWK','L8')
insert into IsOn (StationID,LineID) values ('CN1','L8')
insert into IsOn (StationID,LineID) values ('S7','L9')
insert into IsOn (StationID,LineID) values ('E1','L2')
insert into IsOn (StationID,LineID) values ('E1','L9')
insert into IsOn (StationID,LineID) values ('GP','L7')
insert into IsOn (StationID,LineID) values ('GP','L9')
insert into IsOn (StationID,LineID) values ('GP','L8')


select Station.Station,TransportLine.LineName from Station,TransportLine,IsOn where Station.StationID = IsOn.StationID and TransportLine.LineID = IsOn.LineID
select Station.Station, Station.Passengers, TransportLine.LineName from Station,TransportLine,IsOn where Station.StationID = IsOn.StationID and TransportLine.LineID = IsOn.LineID and TransportLine.LineName = 'Victoria'
select TransportLine.LineName, TransportLine.Length from Station,TransportLine,IsOn where TransportLine.LineID = IsOn.LineID and Station.Zone = '1' order by TransportLine.Length desc limit '1'
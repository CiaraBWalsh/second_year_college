-- CS130 Lab 9 - December 2015
-- Code by Peter Mooney
-- You'll need to scroll down to the INSERT Statements for the Monitors table to see 
-- where you will need to add your piece of code for Question 1 of today's lab. 

DROP TABLE IF EXISTS Pollutant CASCADE;
DROP TABLE IF EXISTS Monitors CASCADE;
DROP TABLE IF EXISTS Stations CASCADE;

-- Create the pollutant table
CREATE TABLE Pollutant 
(
	PollutantCode INTEGER NOT NULL,
	PollutantName TEXT NOT NULL,
	PollutantWeb  TEXT NOT NULL,
	PollutantLabel TEXT NOT NULL,
	Constraint Pollutant_PKEY PRIMARY KEY (PollutantCode)
);
-- Now put data into the Pollutant Table
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (1, 'SO2', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/1', 'Sulphur dioxide (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (10, 'CO', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/10', 'Carbon monoxide (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (11, 'H2S', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/11', 'Hydrogen sulphide (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (1129, 'BaP in PM2.5', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/1129', 'Benzo(a)pyrene in PM2.5 (air+aerosol)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (12, 'Pb', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/12', 'Lead (aerosol)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (21, 'C6H5-CH3', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/21', 'Toluene (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (30, 'PAH', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/30', 'Polyaromatic hydrocarbons (air+aerosol)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (35, 'NH3', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/35', 'Ammonia (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (41, 'CH4', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/41', 'Methane (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (6, 'BS', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/6', 'Black smoke (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (6001, 'PM2.5', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/6001', 'Particulate matter < 2.5 µm (aerosol)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (6002, 'PM1', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/6002', 'Particulate matter < 1 µm (aerosol)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (604, 'Al', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/604', 'aluminium (aerosol)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (715, 'Pyrene', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/715', 'pyrene (air+aerosol)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (73, 'Cu', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/73', 'Copper (aerosol)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (78, 'C6H4-(CH3)2', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/78', 'Xylene (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (8, 'NO2', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/8', 'Nitrogen dioxide (air)');
INSERT INTO pollutant (pollutantcode, pollutantname, pollutantweb, pollutantlabel) VALUES (9, 'NOX as NO2', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/9', 'Nitrogen oxides (air)');

DROP TABLE IF EXISTS Station CASCADE;
-- Now create the Station table

CREATE TABLE Station
(
	StationCode VARCHAR(10) NOT NULL,
	StationName TEXT NOT NULL,
	StationDate DATE NOT NULL,
	StationAltitude REAL NOT NULL,
	StationClass VARCHAR(15) NOT NULL,
	StationZone VARCHAR(8) NOT NULL,
	CONSTRAINT Station_Pkey PRIMARY KEY (StationCode)
);

-- Put data into the Station Table
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0108A', 'Limerick Shannon Estuary', '1997-03-01', 25, 'Rural-regional', 'IE0010');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0036A', 'Dublin Ballyfermot Library', '2002-01-01', 30, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0131A', 'Dublin Blanchardstown River Road', '2008-01-01', 10, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0125A', 'Galway City Bodkin Roundabout', '2006-07-01', 7, 'Suburban', 'IE0009');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0118A', 'Mayo Castlebar John Moore Road', '2005-07-07', 39, 'Suburban', 'IE0010');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0127A', 'Dublin Clonskeagh Road Richview', '1994-01-01', 25, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0105A', 'Dublin Coleraine Street', '2000-01-01', 20, 'Urban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0132A', 'Dublin Dun Laoghaire The Glen', '2008-01-01', 10, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0111A', 'Laois Emo Court', '2004-06-16', 20, 'Rural-regional', 'IE0010');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0110A', 'Cork Ballinlough Heatherton Park', '2002-01-01', 12, 'Suburban', 'IE0008');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0090A', 'Monaghan Kilkitt Waterworks', '1994-01-03', 170, 'Rural-regional', 'IE0010');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0031R', 'Galway Mace Head', '1987-01-01', 8, 'Rural-remote', 'IE0009');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0106A', 'Dublin Marino Brian Road', '2000-09-01', 20, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE001BP', 'Cork South Link Road Landfill', '1997-01-11', 10, 'Urban', 'IE0008');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0095A', 'Dublin Phoenix Park Ordnance Survey Road', '1996-01-01', 35, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0028A', 'Dublin Rathmines Wynnefield Road', '1975-01-01', 25, 'Urban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0136A', 'Dublin Tallaght Old Bawn Road', '2008-01-01', 10, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0001R', 'Kerry Valentia Observatory', '2001-01-01', 10, 'Suburban', 'IE0010');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0098A', 'Dublin Winetavern Street', '1997-01-01', 15, 'Urban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0142A', 'Longford Town Dublin Road Railway', '2010-05-13', 49.5299988, 'Suburban', 'IE0010');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0140A', 'Dublin Swords Watery Lane', '2010-01-01', 15, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0137A', 'Clare Ennis Simms Lane', '2009-03-01', 65, 'Suburban', 'IE0009');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0145A', 'Mayo Claremorris', '2011-02-16', 45, 'Rural-Remote', 'IE0010');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE0147A', 'Kilkenny Seville Lodge', '2012-01-05', 20, 'Suburban', 'IE0009');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE001AP', 'Dublin Inchicore Davitt Road', '2013-12-01', 10, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE002AP', 'Dublin Raheny Saint Anne''s Park', '2013-01-01', 10, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE003AP', 'Dublin Finglas Mellowes Road', '2013-01-01', 10, 'Suburban', 'IE0007');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE001CM', 'Laois Portlaoise Dublin Road ', '2014-06-17', 20, 'Suburban', 'IE0009');
INSERT INTO station (stationcode, stationname, stationdate, stationaltitude, stationclass, stationzone) VALUES ('IE001DM', 'Wexford Enniscorthy Parnell Road', '2014-06-17', 100, 'Suburban', 'IE0010');

-- now for the RELATIONSHIP table called MONITORS
-- So Station MONITORS Pollutant
-- For example Rathmines monitors Lead
-- Notice that we have a third column here. This will indicate what frequency (times per day or hour) a Station Monitors a Pollutant. 
-- So for example Rathmines Monitors Lead on a  Daily basis

-- **************** CREATE STATEMENT TO APPEAR HERE **********************
-- **************** Labs week beginning December 7th *********************
create table MONITORS
(
	StationCode varchar(10) NOT NULL references Station(StationCode) on delete cascade on update cascade,
	PollutantCode integer NOT NULL references Pollutant(PollutantCode) on delete cascade on update cascade,
	MonitoringFrequency text NOT NULL,
	Constraint MONITORS_pkey primary key(StationCode,PollutantCode,MonitoringFrequency)
);


-- 
--
-- YOU WILL NEED TO WRITE YOUR CREATE STATEMENT FOR THE MONITORS TABLE HERE 
-- THE REMAINDER OF THE SQL FILE WILL NOT RUN IF YOU DO NOT WRITE THE MONITORS TABLE CREATE STATEMENT 
--
--
--
-- You are encouraged to draw an ER Diagram on paper just to see how these tables are joined. 
-- DELETE and UPDATE operations must be cascaded. 

-- ******************* DO NOT EDIT THE INSERT STATEMENTS BELOW ************
-- ******************* You can start writing your answers at the bottom of this file *****************





-- Now we do our INSERT statements into the Monitors table
-- This is where we actually put the data manually into the Relationship table

INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0108A',1,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0108A',11,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0108A',715,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0108A',30,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0108A',1129,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0108A',604,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0108A',6001,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0036A',1129,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0036A',1,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0036A',21,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0036A',78,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0036A',35,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0036A',6002,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0036A',715,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0036A',6001,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0131A',6001,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0131A',21,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0125A',11,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0125A',21,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0118A',30,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0118A',21,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0118A',10,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0118A',6002,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0118A',73,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0118A',1129,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0118A',78,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0127A',1,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0105A',30,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0105A',6001,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0105A',6002,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0105A',11,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0105A',78,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0132A',1129,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0132A',10,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0111A',604,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0111A',78,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0111A',10,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0111A',35,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0111A',30,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0111A',6,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0111A',6001,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0110A',21,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0110A',35,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0110A',73,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0090A',9,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0090A',8,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0090A',1,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0090A',6002,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0090A',30,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0090A',1129,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0090A',6001,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0090A',21,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0031R',30,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0031R',78,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0031R',35,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0031R',1,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0031R',6002,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0031R',12,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0031R',11,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0106A',604,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0106A',41,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0106A',1,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0106A',6,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001BP',10,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0095A',21,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0095A',41,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0095A',10,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0095A',6001,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0028A',715,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0028A',6,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0028A',1129,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0001R',8,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0098A',715,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0098A',73,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0098A',1129,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0098A',30,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0098A',6,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0098A',6001,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0098A',9,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0098A',8,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0142A',1,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0142A',6,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0142A',11,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0142A',8,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0137A',10,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0137A',73,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0137A',1,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0137A',78,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0137A',715,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0137A',8,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0145A',12,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0145A',78,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0145A',604,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0145A',1,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0145A',41,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE0147A',6002,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001AP',73,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001AP',21,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001AP',10,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001AP',30,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001AP',8,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001AP',78,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE002AP',12,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE002AP',604,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE002AP',1129,'daily');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE002AP',6001,'8-hours');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE003AP',21,'hourly');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE003AP',78,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001CM',8,'15-minute-interval');
INSERT INTO MONITORS (StationCode,PollutantCode,MonitoringFrequency) values ('IE001CM',9,'daily');



-- START WRITING YOUR QUERY ANSWERS HERE FOR LAB 9 -- 
-- DO NOT EDIT ANY OF THE INSERT STATEMENTS ABOVE THIS LINE --

Select count(*) from Station
Select count(*) from Monitors
Select count(*) from Pollutant
Select * from Monitors where pollutantCode = 12
Select count(*) from Monitors,Pollutant,Station where Monitors.PollutantCode = Pollutant.PollutantCode and Monitors.StationCode = Station.StationCode and Pollutant.PollutantLabel like '%(aerosol)%'
Select count(Monitors.StationCode), Monitors.PollutantCode from Monitors,Pollutant,Station where Monitors.PollutantCode = Pollutant.PollutantCode and Monitors.StationCode = Station.StationCode group by Monitors.PollutantCode order by count(Monitors.StationCode) desc
Update Station set StationCode = 'IEBy2015' where StationName like 'Dublin Ballyfermot Library'
Select * from Monitors where StationCode = 'IEBy2015'
Delete from Station where StationName like 'Galway Mace Head'
Delete from Pollutant where (PollutantCode >999) and (PollutantCode <10000)

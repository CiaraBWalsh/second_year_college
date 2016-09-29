CREATE TABLE IEAirports
(
airportID INTEGER NOT NULL,
airportName VARCHAR(100) NOT NULL,
airportCode VARCHAR(4) NOT NULL,
airportAltitude INTEGER NOT NULL,
CONSTRAINT IEAirports_pkey PRIMARY KEY (airportID)
)
INSERT into IEAirports
(airportID,airportName,airportCode,airportAltitude) values
(596,'Cork','ORK',502)
INSERT into IEAirports
(airportID,airportName,airportCode,airportAltitude) values
(597,'Galway','GWY',81)
INSERT into IEAirports
(airportID,airportName,airportCode,airportAltitude) values
(599,'Dublin','DUB',242)
INSERT into IEAirports
(airportID,airportName,airportCode,airportAltitude) values
(600,'Ireland West Knock','NOC',655)
INSERT into IEAirports
(airportID,airportName,airportCode,airportAltitude) values
(601,'Kerry','KIR',112)
INSERT into IEAirports
(airportID,airportName,airportCode,airportAltitude) values
(603,'Shannon','SNN',46)

SELECT count(*) from IEAirports

SELECT airportName,airportCode from IEAirports

SELECT airportName,airportCode from IEAirports ORDER BY airportName asc

SELECT airportName,airportCode,airportAltitude from IEAirports where airportAltitude < 100

SELECT airportName,airportCode,airportAltitude from IEAirports where (airportAltitude > 100) AND (airportAltitude < 400)

SELECT airportName,airportCode from IEAirports where airportName LIKE 'D%'

SELECT airportName,airportCode from IEAirports where airportName LIKE '%y'

SELECT airportName,airportCode from IEAirports where airportName LIKE '%a%'


INSERT into IEAirports
(airportID,airportName,airportCode,airportAltitude) values
(700,'Maynooth Regional','MAY',68)

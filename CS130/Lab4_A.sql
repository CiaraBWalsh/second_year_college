SELECT count(*) from euhabitats
SELECT sitecode, sitename, habitatdescription from euhabitats WHERE sitecode LIKE 'IE%' 
SELECT sitecode, sitename, habitatdescription from euhabitats WHERE sitecode LIKE 'IE%' ORDER BY sitename desc
Select sitecode, sitename, dateclassified from euhabitats where (dateclassified <= '2013-12-31') and (dateclassified >= '2013-01-01') 
Select sitecode, sitename, dateclassified from euhabitats where (dateclassified <= '2013-12-31') and (dateclassified >= '2013-01-01') and sitecode like 'UK%' order by dateclassified asc
select sitecode, sitename, areahectares, dateclassified from euhabitats where sitecode like 'UK%' order by areahectares desc limit 25
select sitecode, sitename, dateclassified, habitatdescription, areahectares from euhabitats where (sitecode like 'IE%') and (sitename like '%Lough%%Wood%') and (areahectares > 100) order by areahectares desc
select sitename, sitecode, dateclassified from euhabitats where (dateclassified = '2012-12-24' or dateclassified = '2013-12-24' or dateclassified = '2014-12-24') or (dateclassified = '2012-12-25' or dateclassified = '2013-12-25' or dateclassified = '2014-12-25')
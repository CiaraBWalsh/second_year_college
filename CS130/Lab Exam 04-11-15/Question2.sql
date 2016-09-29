select count(*) from ukhouses2015
select houseid, postcode, areaname, adminname, saledate, pricepaid from ukhouses2015 where areaname = 'EALING'
select houseid, postcode, areaname, adminname, saledate, pricepaid from ukhouses2015 where (adminname = 'GREATER LONDON') or (adminname = 'GREATER MANCHESTER')
select houseid, postcode, areaname, adminname, saledate, pricepaid from ukhouses2015 where saledate = '2015-02-16'
select postcode, areaname, adminname, pricepaid from ukhouses2015 where pricepaid > 500000
select postcode, areaname, adminname, pricepaid from ukhouses2015 where (pricepaid > 500000) and (adminname = 'GREATER LONDON') order by pricepaid desc
select postcode, areaname, adminname, pricepaid from ukhouses2015 where adminname != 'GREATER LONDON' order by pricepaid desc limit 25
select postcode, areaname, adminname, saledate, pricepaid from ukhouses2015 where (saledate >= '2015-01-01') and (saledate <= '2015-01-31') order by saledate asc
select postcode, areaname, adminname, saledate, pricepaid from ukhouses2015 where (saledate >= '2015-08-01') and (saledate <= '2015-08-31') and (postcode like 'SW18%')
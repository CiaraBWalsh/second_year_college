select sum(purchases) as TotalPurchases from TheLoop2015  where country like 'Finland' and date_part('year',dateofpurchase) =2015
select * from TheLoop2015 where gender = 'M' and purchases > 300 and creditcard is NULL
select sum(purchases) as TotalPurchases2 from TheLoop2015 where (creditcard is Null) and date_part('hour',dateofpurchase) <= 6 and date_part('hour',dateofpurchase) >= 00
update TheLoop2015 set cctype = 'JCB' where cctype = 'jcb'
update TheLoop2015 set purchases = purchases*-1 where purchases <0
update TheLoop2015 set purchases = purchases*0.95 where purchases >500 and cctype like 'visa%'
select country, avg(purchases) as TotalPurchases from TheLoop2015  group by country order by TotalPurchases asc
select creditcard,cctype from TheLoop2015 where creditcard like '5%022%' or creditcard like '3%022%'
delete from TheLoop2015 where creditcard like '5%022%' or creditcard like '3%022%'
select sum(purchases) as TotalPurchases from TheLoop2015 where (country like 'Portugal') or (country like 'Poland') or (country like 'France') or (country like 'United States') or (country like 'Peru') or (country like 'Thailand') or (country like 'Colombia') or (country like 'Argentina') or (country like 'Czech Republic') or (country like 'Ireland')
select name,purchases from TheLoop2015 where ((name like '%Fox') or (name like '%Ward') or (name like '%Holmes')) and (cctype is not null) and (purchases >100)
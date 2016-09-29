delete from CS130LabExam2 where (purchaseamount<10.00) or accesstime is null
select * from CS130LabExam2 where accesstime > '2014-12-31' and accesstime < '2015-03-01'
select * from CS130LabExam2 where PersonAddress like'%Street%' order by purchaseamount asc
select sum(purchaseamount) from CS130LabExam2 where companyname like'Thoughstream' or companyname like 'Zoombox' or companyname like 'Realcube'
select * from CS130LabExam2 where personname similar to '______ ______'
update CS130LabExam2 set purchaseamount = purchaseamount-10.00 where purchaseamount <101 and purchaseamount>49
select * from CS130LabExam2 where creditcard similar to '%(33|333|3333|33333|333333|3333333|33333333|333333333|3333333333|33333333333|333333333333|3333333333333|33333333333333|333333333333333)%'
update CS130LabExam2 set purchaseamount = purchaseamount*0.97 where accesstime>'2015-01-31' and accesstime<'2015-03-01'
delete from CS130LabExam2 where personaddress similar to '____ %'

